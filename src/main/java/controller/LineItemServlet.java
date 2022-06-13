package controller;

import model.CartUtil;
import model.LineItemUtil;
import model.ProductDetailUtil;
import entity.AccountsEntity;
import entity.CartEntity;
import entity.ProductsEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/lineitem")
public class LineItemServlet extends HttpServlet {
    @Override
    // update quantity lineitem in cart (change by minus and plus)
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        // Fix Application Error Disclosure
        if (session.getAttribute("account") == null) {
            request.getRequestDispatcher("/login").forward(request, response);
        } else {
            if (request.getParameter("quantity").length() < 20 && request.getParameter("pId").length() < 20) {
                try {
                    int quantity = Integer.parseInt(request.getParameter("quantity"));
                    int pId = Integer.parseInt(request.getParameter("pId"));

                    AccountsEntity account = (AccountsEntity) session.getAttribute("account");
                    CartEntity cart = account.getCart();

                    ProductDetailUtil pdUtil = new ProductDetailUtil();
                    ProductsEntity p = pdUtil.getProductById(pId);
                    LineItemUtil lineItemUtil = new LineItemUtil();
                    CartUtil cUtil = new CartUtil();

                    lineItemUtil.createLineItem(p, quantity, cart);
                    cUtil.updateCart(cart.getCount(), cart.getCartId());

                    request.getRequestDispatcher("/cart-load").forward(request, response);
                } catch (Error error) {
                    request.getRequestDispatcher("/404Page.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("/404Page.jsp").forward(request, response);
            }
        }

    }
}
