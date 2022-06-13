package controller;

import model.AccountUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy CSRF từ cookie
        String csrfCookie = null;
        for (Cookie cookie : request.getCookies()) {
            if (cookie.getName().equals("csrfToken")) {
                csrfCookie = cookie.getValue();
                break;
            }
        }

        // Lấy giá trị CSRF từ form register
        String csrfField = request.getParameter("csrfToken");

        // Kiểm tra giá trị CSRF từ cookie và form
        if (csrfCookie != null || csrfField != null || csrfCookie.equals(csrfField)) {
            // Thực hiện request
            try {
                int state = 0;
                int checkPass = 0;
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String password_confirm = request.getParameter("password_confirm");

                if (username != null && password != null && password_confirm != null) {
                    AccountUtil accUtil =  new AccountUtil();
                    if (password_confirm.equals(password)) {
                        if (accUtil.createAccount(username, password)) {
                            state = 1;
                        }
                        else state = 0;

                        checkPass = 1;
                    }
                    else checkPass = 0;

                    request.setAttribute("state",state);
                    request.setAttribute("checkPass", checkPass);
                    request.setAttribute("username", username);
                    request.setAttribute("password", password);
                    request.setAttribute("password_confirm", password_confirm);
                    request.getRequestDispatcher("/Register.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("/404Page.jsp").forward(request, response);
                }
            }catch (Error error) {
                request.getRequestDispatcher("/404Page.jsp").forward(request, response);
            }
        }
        else {
            request.getRequestDispatcher("/404Page.jsp").forward(request, response);
        }


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);

    }
}
