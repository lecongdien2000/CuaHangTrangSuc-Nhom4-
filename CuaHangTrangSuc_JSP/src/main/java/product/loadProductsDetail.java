package product;

import entity.CommentsData;
import entity.ProductsData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "loadProductsDetail", urlPatterns = "/loadProductsDetail")
public class loadProductsDetail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productID = request.getParameter("productID");
        Product product = ProductsData.getProductByID(productID);
        List<Comment> cmtList = CommentsData.getCommentsByProductID(productID);
        if(product!=null){
            request.setAttribute("product", product);
            request.setAttribute("cmtList", cmtList);
            request.getRequestDispatcher("product-detail.jsp").forward(request, response);
        } else
            response.sendRedirect("404.html");

    }
}
