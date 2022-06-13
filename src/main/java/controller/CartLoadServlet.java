package controller;

import model.AccountUtil;
import model.CartUtil;
import entity.AccountsEntity;
import entity.CartEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/cart-load")
public class CartLoadServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();

            AccountUtil accUtil = new AccountUtil();
            AccountsEntity account = new AccountsEntity();
            Cookie cookie[] = request.getCookies();
            for (Cookie c : cookie) {
                if (c.getName().equals("username")) {
                    account = accUtil.getAccount(c.getValue());
                }
            }

            CartEntity cart = account.getCart();
            CartUtil cUtil = new CartUtil();
            cUtil.updateCart(cart.getCount(), cart.getCartId());

            session.setAttribute("cart", cart);
            request.getRequestDispatcher("/cart.jsp").forward(request, response);
        } catch (Error error) {
            request.getRequestDispatcher("/404Page.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
