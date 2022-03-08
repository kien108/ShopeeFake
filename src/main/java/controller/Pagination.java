package controller;

import model.*;
import entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/pagination-servlet")
public class Pagination extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int pageID = Integer.parseInt(request.getParameter("pageID"));
        int countPage = Integer.parseInt(request.getParameter("countPage"));


        if (request.getParameter("object").equals("cmt")) {
            ProductDetailUtil pdUtil = new ProductDetailUtil();
            ManufacturerUtil mUtil = new ManufacturerUtil();

            int pId = Integer.parseInt(request.getParameter("pId"));
            int mId = Integer.parseInt(request.getParameter("mId"));

            ProductsEntity p = pdUtil.getProductById(pId);
            ProductUtil pUtil = new ProductUtil();

            List<ProductsEntity> listM = mUtil.getAllProductByMid(mId);
            List<ProductsEntity> listP = pUtil.getAllProductByPagination("",1);
            List<ProductsEntity> listBestSeller = pdUtil.getBestSeller();
            CommentUtil cmUtil = new CommentUtil();
            List<CommentsEntity> listCm = cmUtil.getAllCmtByPagination(pId, pageID);

            request.setAttribute("tagPage", pageID);
            request.setAttribute("countPage", countPage);
            request.setAttribute("listCm", listCm);
            request.setAttribute("pDetails", p);
            request.setAttribute("listBestSeller", listBestSeller);
            request.setAttribute("listM", listM);
            request.setAttribute("listP", listP);
            request.setAttribute("mId", mId);
            request.getRequestDispatcher("/ProductDetails.jsp").forward(request, response);
        }
        else if (request.getParameter("object").equals("bill")) {
            HistoryUtil hUtil = new HistoryUtil();
            HttpSession session = request.getSession();
            AccountsEntity account = (AccountsEntity) session.getAttribute("account");
            List<LineItem> listL = hUtil.getListLineItemByPagination(account.getAccountId(), pageID);

            request.setAttribute("listL", listL);
            request.setAttribute("countPage", countPage);
            request.setAttribute("tagPage", pageID);
            request.getRequestDispatcher("/bill.jsp").forward(request, response);
        }
        else {
            ProductUtil pUtil = new ProductUtil();
            List<ProductsEntity> listP = pUtil.getAllProductByPagination("",pageID);
            List<ManufacturersEntity> listM = pUtil.getAllManufacturers();

            request.setAttribute("tagPage", pageID);
            request.setAttribute("listM", listM);
            request.setAttribute("countPage", countPage);
            request.setAttribute("listP", listP);
            request.setAttribute("tagPageTemp", 0);
            request.setAttribute("tagMTemp", 0);
            request.getRequestDispatcher("/home.jsp").forward(request,response);
        }
    }
}
