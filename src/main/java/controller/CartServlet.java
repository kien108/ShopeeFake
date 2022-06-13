package controller;

import model.CartUtil;
import model.LineItemUtil;
import model.ProductDetailUtil;
import model.ProductUtil;
import entity.AccountsEntity;
import entity.CartEntity;
import entity.ProductsEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String stringLineId = request.getParameter("lineId");
        HttpSession session = request.getSession();


        if (session.getAttribute("account") == null) {
            request.getRequestDispatcher("/login").forward(request, response);
        }
        else {
            AccountsEntity account = (AccountsEntity) session.getAttribute("account");
            CartEntity cart = account.getCart();

            LineItemUtil lineItemUtil = new LineItemUtil();
            CartUtil cUtil = new CartUtil();

            if (stringLineId != null) {
                lineItemUtil.deleteLineItem(Integer.parseInt(stringLineId));
            }
            ProductUtil pUtil = new ProductUtil();
            List<ProductsEntity> listP = pUtil.getAllProductByPagination("",1);
            request.setAttribute("listP", listP);
            request.getRequestDispatcher("/cart-load").forward(request, response);
        }
//        =----------------------
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Do Post click btn "add to cart"

        // Lấy CSRF từ cookie
        String csrfCookie = null;
        for (Cookie cookie : request.getCookies()) {
            if (cookie.getName().equals("csrfToken")) {
                csrfCookie = cookie.getValue();
                break;
            }
        }

        // Lấy giá trị CSRF từ form
        String csrfField = request.getParameter("csrfToken");

        // Kiểm tra giá trị CSRF từ cookie và form
        if (csrfCookie != null || csrfField != null || csrfCookie.equals(csrfField))  {
            // thuc hien request
            HttpSession session = request.getSession();

            if (session.getAttribute("account") == null) {
                session.setAttribute("login-post", 1);
                request.getRequestDispatcher("/login").forward(request, response);
            }
            else {
                if (request.getParameter("productId").length() < 20 && request.getParameter("quantity").length() < 20) {
                    try {
                        int quantity = Integer.parseInt(request.getParameter("quantity"));
                        int pId = Integer.parseInt(request.getParameter("productId"));

                        AccountsEntity account = (AccountsEntity) session.getAttribute("account");
                        CartEntity cart = account.getCart();

                        //if user enters a negative => change to 1
                        try {
                            if(quantity < 0) {
                                quantity = 1;
                            }
                        }
                        catch (NumberFormatException nfe) {
                            quantity = 1;
                        }
                        ProductDetailUtil pdUtil = new ProductDetailUtil();
                        ProductsEntity p = pdUtil.getProductById(pId);
                        LineItemUtil lineItemUtil = new LineItemUtil();
                        CartUtil cUtil = new CartUtil();

                        if (quantity > 0) {
                            lineItemUtil.createLineItem(p, quantity, cart);
                            cUtil.updateCart(cart.getCount(), cart.getCartId());
                        }

                        ProductUtil pUtil = new ProductUtil();
                        List<ProductsEntity> listP = pUtil.getAllProductByPagination("",1);
                        request.setAttribute("listP", listP);
                        session.setAttribute("cart", cart);
                        request.getRequestDispatcher("/cart-load").forward(request, response);
                    } catch (Error error) {
                        request.getRequestDispatcher("/404Page.jsp").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("/404Page.jsp").forward(request, response);
                }
            }
        } else {
            request.getRequestDispatcher("/404Page.jsp").forward(request, response);
        }
    }
}
