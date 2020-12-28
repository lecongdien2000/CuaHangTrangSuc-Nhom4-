package user;

import product.Product;
import product.ProductsData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

@WebServlet(name = "loadProducts", urlPatterns = "/index")
public class loadProducts extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> data = ProductsData.getData();
        request.setAttribute("data", data);
        List<Product> dataHot = ProductsData.getData();
        request.setAttribute("dataHot", dataHot);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
