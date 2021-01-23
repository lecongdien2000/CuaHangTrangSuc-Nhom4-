package controller;

import product.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addCart", urlPatterns = "/addCart")
public class addCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        //neu id == null thì là lỗi nên chuyển về trang chủ
//        if (id == null) response.sendRedirect("/index");
        //neu id tồn tại thì sẽ lấy sp đó từ dưới cơ sở dữ liệu lên
        Product p = ProductEntity.getById(id);
        if (p == null) {
            response.sendRedirect("/index");
            return;
        }
        HttpSession session = request.getSession();
        Cart c = Cart.getCart(session);
        c.put(p);
        c.commit(session);
        response.sendRedirect("cart.jsp");
    }
}

