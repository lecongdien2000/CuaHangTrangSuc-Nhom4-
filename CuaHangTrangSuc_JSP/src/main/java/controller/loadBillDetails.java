package controller;

import entity.BillData;
import product.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;

@WebServlet(name = "loadBillDetails", urlPatterns = "/loadBillDetails")
public class loadBillDetails extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id_bill = request.getParameter("idBill");
        String actionForBillDetail = request.getParameter("action");
        if(actionForBillDetail!=null)
            BillData.setStateForBill(id_bill, actionForBillDetail);

        Bill bill = BillData.getBillWithId(id_bill);
        request.setAttribute("bill", bill);
        request.getRequestDispatcher("admin_bill_details.jsp").forward(request, response);
    }
}
