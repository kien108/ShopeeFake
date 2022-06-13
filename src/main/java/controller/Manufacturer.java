package controller;


import Service.HttpService;
import model.ManufacturerUtil;
import model.ProductUtil;
import entity.ManufacturersEntity;
import entity.ProductsEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/manufacturer-servlet")
public class Manufacturer extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("mID") != null && request.getParameter("mID").length() < 20) {
            try {
                int mId = Integer.parseInt(request.getParameter("mID"));

                ProductUtil pUtil = new ProductUtil();
                ManufacturerUtil mUtil = new ManufacturerUtil();

                List<ProductsEntity> listP = mUtil.getAllProductByMid(mId);
                List<ManufacturersEntity> listM = pUtil.getAllManufacturers();

                request.setAttribute("listM", listM);
                request.setAttribute("countPage", 1);
                request.setAttribute("tagPageTemp", 1);
                request.setAttribute("listP", listP);
                request.setAttribute("tagM", mId);
                request.setAttribute("tagMTemp", -1);

                request.getRequestDispatcher("/home.jsp").forward(request, response);
            } catch (Error e) {
                request.getRequestDispatcher("/404Page.jsp").forward(request, response);

            }
        } else {
            request.getRequestDispatcher("/404Page.jsp").forward(request, response);
        }

    }
}
