package com.kien108.finalshopee;

import dao.AccountUtil;
import dao.HistoryUtil;
import dao.PaginationUtil;
import entity.AccountsEntity;
import entity.HistoryEntity;
import entity.LineItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/bill")
public class BillServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HistoryUtil hUtil = new HistoryUtil();
        HttpSession session = request.getSession();
        AccountsEntity account = (AccountsEntity) session.getAttribute("account");
        String username = account.getUsername();
        if (account == null) {
            session.setAttribute("login-post", 1);
            request.getRequestDispatcher("/login").forward(request, response);
        }
        else {
            List<LineItem> listL = hUtil.getListLineItemByPagination(account.getAccountId(), 1);
            PaginationUtil pUtil = new PaginationUtil();
            int countPage = pUtil.getCountPageBill(account.getUsername());

            request.setAttribute("countPage", countPage);
            request.setAttribute("tagPage", 1);
            request.setAttribute("listL", listL);
            request.getRequestDispatcher("/bill.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}
