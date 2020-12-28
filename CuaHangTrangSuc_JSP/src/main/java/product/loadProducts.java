package product;

import entity.ProductsData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "loadProducts", urlPatterns = "/index")
public class loadProducts extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Product> data = ProductsData.getAllData().values();
        request.setAttribute("data", data);
        Collection<Product> dataHot = data;
        request.setAttribute("dataHot", dataHot);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
