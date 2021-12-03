package com.kien108.finalshopee;


import dao.PaginationUtil;
import dao.ProductUtil;
import entity.ManufacturersEntity;
import entity.ProductsEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/home-products")
public class HomeProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PaginationUtil paUtil = new PaginationUtil();
        ProductUtil pUtil = new ProductUtil();
        List<ProductsEntity> listP = new ArrayList<>();
        String searchString = request.getParameter("searchString");
        int countPage = 0;
        if (searchString != null) {
            listP = pUtil.getAllProductByPagination(searchString,1);
            List<ProductsEntity> listTemp = pUtil.searchListProduct(searchString);
            countPage = paUtil.getCountPageWithParameter(listTemp.size());
        }
        else {
            listP = pUtil.getAllProductByPagination("",1);
            countPage = paUtil.getCountPage();
        }

        List<ManufacturersEntity> listM = pUtil.getAllManufacturers();


        request.setAttribute("listP", listP);
        request.setAttribute("listM", listM);
        request.setAttribute("tagMTemp", 0);
        request.setAttribute("countPage", countPage);
        request.setAttribute("tagPageTemp",1);

        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}
