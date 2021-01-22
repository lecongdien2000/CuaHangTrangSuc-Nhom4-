package controller;

import entity.BillData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "loadBill", urlPatterns = "/loadBill")
public class loadBill extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Bill> bills = BillData.getAllBill().values();
        request.setAttribute("data", bills);
        request.getRequestDispatcher("admin-bill-management.jsp").forward(request, response);

    }
}
