package com.kien108.finalshopee;

import dao.*;
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
import java.util.List;

@WebServlet(urlPatterns = "/comment")
public class CommentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String pTempId = request.getParameter("pTempId");
        if (pTempId != null) {
            request.setAttribute("tagId", 1);
            session.setAttribute("pTempId", pTempId);
            request.getRequestDispatcher("/bill").forward(request, response);
        }
        else {
            AccountsEntity account = (AccountsEntity) session.getAttribute("account");
            String cmt = request.getParameter("cmt");
            int pId = Integer.parseInt((String) session.getAttribute("pTempId"));
            ProductDetailUtil pUtil = new ProductDetailUtil();
            ProductsEntity product = pUtil.getProductById(pId);
            if (account == null) {
                session.setAttribute("login-post", 1);
                request.getRequestDispatcher("/login").forward(request, response);
            }
            else {
                CommentUtil cmUtil = new CommentUtil();
                cmUtil.createCmt(product, account, cmt);
                session.removeAttribute("pTempId");
                request.getRequestDispatcher("/bill").forward(request, response);
            }
        }
    }
}
