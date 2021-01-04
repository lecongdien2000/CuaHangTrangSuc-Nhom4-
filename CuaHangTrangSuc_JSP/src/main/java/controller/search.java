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
    final static int proNumsEachPage = 6;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String keyword = request.getParameter("keyword");
       int index = Integer.parseInt(request.getParameter("index"));
       int dataSize = ProductsData.getDataSizeByName(keyword);
       int totalPages = dataSize/proNumsEachPage + ((dataSize%proNumsEachPage)>0?1:0);
       int end = index*proNumsEachPage;
       int start = end - proNumsEachPage + 1;

       System.out.print("index = " + index  + ";dataSize = "+ dataSize + ";totalPages = " +totalPages);

       Collection<Product> data = ProductsData.getDataByNameWithLimit(keyword, start, proNumsEachPage).values();
        request.setAttribute("data", data);
        request.setAttribute("key", keyword);
        request.setAttribute("index", index);
        request.setAttribute("totalPages", totalPages);
//        request.setAttribute("numresults", data.size());
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }
}
