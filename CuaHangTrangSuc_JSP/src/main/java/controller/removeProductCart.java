package controller;

import product.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "removeProductCart", urlPatterns = "/removeProductCart")
public class removeProductCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id_product = (String) request.getParameter("id_product");
        HttpSession session = request.getSession();
        Cart c = Cart.getCart(session);
        c.removeProduct(id_product);
        c.commit(session);
        response.sendRedirect("cart.jsp");
    }
}

