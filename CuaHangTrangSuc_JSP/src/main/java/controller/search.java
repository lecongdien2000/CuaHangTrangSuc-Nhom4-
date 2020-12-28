package controller;

import entity.ProductsData;
import product.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "search", urlPatterns = "/search")
public class search extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Product> data = ProductsData.getDataByName((String) request.getAttribute("keyword")).values();
        request.setAttribute("data", data);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }
}
