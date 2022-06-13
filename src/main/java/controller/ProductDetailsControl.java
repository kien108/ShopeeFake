package controller;

//import dao.DAO_ProductDetails;
//import entity.ProductDetails;

import model.*;
import entity.CommentsEntity;
import entity.ProductsEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/productDetails-servlet")
public class ProductDetailsControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("pId").length() < 20 && request.getParameter("mId").length() < 20) {
           try {
               int pId = Integer.parseInt(request.getParameter("pId"));
               int mId = Integer.parseInt(request.getParameter("mId"));
               ProductDetailUtil pdUtil = new ProductDetailUtil();
               ProductUtil pUtil = new ProductUtil();

               ProductsEntity p = pdUtil.getProductById(pId);
               ManufacturerUtil mUtil = new ManufacturerUtil();

               List<ProductsEntity> listM = mUtil.getAllProductByMid(mId);
               List<ProductsEntity> listBestSeller = pdUtil.getBestSeller();
               List<ProductsEntity> listP = pUtil.getAllProductByPagination("",1);

               PaginationUtil paUtil = new PaginationUtil();
               int countPage = paUtil.getCountPageCmt(p);
               CommentUtil cmUtil = new CommentUtil();
               List<CommentsEntity> listCm = cmUtil.getAllCmtByPagination(pId, 1);

               request.setAttribute("countPage", countPage);
               request.setAttribute("tagPage", 1);
               request.setAttribute("listCm", listCm);
               request.setAttribute("pDetails", p);
               request.setAttribute("listBestSeller", listBestSeller);
               request.setAttribute("listM", listM);
               request.setAttribute("listP", listP);
               request.setAttribute("mId", mId);

               request.getRequestDispatcher("/ProductDetails.jsp").forward(request, response);
           }catch (Error error) {
               request.getRequestDispatcher("/404Page.jsp").forward(request, response);
           }
        } else {
            request.getRequestDispatcher("/404Page.jsp").forward(request, response);
        }

    }
}
