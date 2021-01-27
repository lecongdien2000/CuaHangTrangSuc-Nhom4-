package controller;

import user.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "increAnddreQuan", urlPatterns = "/increAnddreQuan")
public class increAnddreQuan extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String delta = (String) request.getParameter("delta");
        System.out.println(delta);
        String id_product = (String) request.getParameter("id_product");
        System.out.println(id_product);
        String bool = (String) request.getParameter("bool");
        System.out.println(Boolean.parseBoolean(bool));
        HttpSession session = request.getSession();
        Cart c = Cart.getCart(session);
        boolean test = c.updateQuantityOfProduct(Integer.parseInt(delta),id_product,Boolean.parseBoolean(bool));
        if(test==false){
            response.sendRedirect("cart.jsp");
        }else {

            c.commit(session);
            response.sendRedirect("cart.jsp");
        }
    }
}

