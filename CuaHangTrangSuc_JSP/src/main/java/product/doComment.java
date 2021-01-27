package product;

import entity.CommentsData;
import entity.ProductsData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "comment", urlPatterns = "/comment")
public class doComment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productID = request.getParameter("productID");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String com = request.getParameter("comment");
        String userID = request.getParameter("username");
        int rate = Integer.parseInt(request.getParameter("rate"));
        Comment cmt = new Comment(userID, productID, name, email, com, rate);
        if(!cmt.isValid()){
            request.getRequestDispatcher("loadProductsDetail?productID=" + productID).forward(request,response);
        }
        CommentsData.insertComment(cmt);
        ProductsData.updateRate(productID);
        response.sendRedirect("loadProductsDetail?productID=" + productID);
    }
}
