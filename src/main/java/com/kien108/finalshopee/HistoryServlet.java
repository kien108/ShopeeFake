package com.kien108.finalshopee;

import dao.*;
import entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.sampled.Line;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/history")
public class HistoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        int cId = Integer.parseInt(request.getParameter("cId"));
        CartUtil cUtil = new CartUtil();
        CartEntity cart = cUtil.getCartById(cId);

        if (session.getAttribute("account") == null) {
            session.setAttribute("login-post", 1);
            request.getRequestDispatcher("/login").forward(request, response);
        }
        else {
            List<LineItem> list = cart.getListLineItem();
            ProductUtil pUtil = new ProductUtil();
            for (LineItem o : list) {
                ProductsEntity product = o.getProduct();
                pUtil.updateProduct(product, o.getQuantity());
            }

            HistoryUtil hUtil = new HistoryUtil();
            LineItemUtil lUtil = new LineItemUtil();
            AccountUtil accUtil = new AccountUtil();
            AccountsEntity acc = (AccountsEntity) session.getAttribute("account");
            hUtil.createHistory(cart, acc);
            CartEntity cart_new = cUtil.createCart();
            accUtil.resetCart(cart_new, acc.getUsername());

            session.removeAttribute("account");
            session.removeAttribute("cart");

            session.setAttribute("account", acc);
            request.getRequestDispatcher("/cart-load").forward(request, response);
        }

    }
}
