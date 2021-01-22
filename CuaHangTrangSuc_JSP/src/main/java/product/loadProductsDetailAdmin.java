package product;

import entity.ProductsData;

import java.util.Collection;

@javax.servlet.annotation.WebServlet(name = "loadProductsDetailAdmin", urlPatterns = "/admin-product-detail")
public class loadProductsDetailAdmin extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        String id = request.getParameter("id");
        if(id!=null){
            Product p = ProductsData.getProductByID(id);
            request.setAttribute("product", p);
        }
        request.getRequestDispatcher("adminProductDetailManagement.jsp").forward(request, response);
    }
}
