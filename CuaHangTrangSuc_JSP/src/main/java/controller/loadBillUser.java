package controller;

import entity.BillData;
import user.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "loadBillUser", urlPatterns = "/loadUserBills")
public class loadBillUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user");
        if(u!=null) {
            Collection<Bill> bills = BillData.getAllBillOfUser(u.getUsername()).values();
            request.setAttribute("data", bills);
            request.getRequestDispatcher("user-bill-management.jsp").forward(request, response);
        }
        else response.sendRedirect("login.jsp");
    }
}
