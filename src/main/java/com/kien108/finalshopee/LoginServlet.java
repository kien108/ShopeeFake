package com.kien108.finalshopee;

import dao.AccountUtil;
import entity.AccountsEntity;
import entity.CartEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        if (session.getAttribute("login-post") == null) {  // login-post == null => login = nut login
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String remember = request.getParameter("remember");

            AccountUtil accUtil = new AccountUtil();
            AccountsEntity account = new AccountsEntity();

            int tagLogin = 0;
            if (accUtil.checkLogin(username, password)) {
                account = accUtil.getAccount(username);
                tagLogin = 1;

                if (session.getAttribute("account") == null) {
                    session.setAttribute("account", account);
                }

                // Luu account len cookie
                Cookie u = new Cookie("username", username);
                Cookie p = new Cookie("password", password);

                u.setMaxAge(60*60*24*365);

                if (remember != null) {
                    p.setMaxAge(60*60*24*365);
                }
                else p.setMaxAge(0);

                response.addCookie(u); //Luu username va password len trinh` duyet (chrome)
                response.addCookie(p);

                CartEntity cart = account.getCart();
                session.setAttribute("cart", cart);
                session.setAttribute("account",account);
                request.getRequestDispatcher("/home-products").forward(request, response);
            }

            else {
                request.setAttribute("tagLogin", tagLogin);
                request.setAttribute("usernameTemp", username);
                request.setAttribute("passwordTemp", password);
                request.getRequestDispatcher("/Login.jsp").forward(request, response);
            }
        }

        // Login tu cart = do post
        else {
            session.removeAttribute("login-post");
            Cookie arr[] = request.getCookies();
            if (arr != null) {
                for(Cookie c : arr) {
                    if (c.getName().equals("username")) {
                        request.setAttribute("username", c.getValue());
                    }
                    if (c.getName().equals("password")) {
                        request.setAttribute("password", c.getValue());
                    }
                }
            }
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Cookie arr[] = request.getCookies();
        if (arr != null) {
            for(Cookie c : arr) {
                if (c.getName().equals("username")) {
                    request.setAttribute("username", c.getValue());
                }
                if (c.getName().equals("password")) {
                    request.setAttribute("password", c.getValue());
                }
            }
        }
        request.getRequestDispatcher("/Login.jsp").forward(request, response);
    }
}
