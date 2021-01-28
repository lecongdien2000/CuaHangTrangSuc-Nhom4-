package product;

import entity.ProductsData;

import java.util.Collection;

@javax.servlet.annotation.WebServlet(name = "loadProductsAdmin", urlPatterns = "/admin-product-management")
public class loadProductsAdmin extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        Collection<Product> data = ProductsData.getAllData().values();
        request.setAttribute("data", data);
        System.out.println("data size: " + data.size());
        request.getRequestDispatcher("admin-product-management.jsp").forward(request, response);
    }
}
