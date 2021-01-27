package controller;

import entity.BillData;
import entity.CartData;
import entity.ProductsData;
import product.Product;
import user.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addBill", urlPatterns = "/addBill")
public class addBill extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");
        HttpSession session = request.getSession();
        Cart c = Cart.getCart(session);

        if(c == null){
            response.sendRedirect("index");
        }else {
            User u = (User) session.getAttribute("user");
            Bill bill = new Bill();
            bill.setId_bill(BillData.createId_bill()+"");
            bill.setId_user(u.getUsername());
            bill.setPhone_number(phone);
            bill.setAddress(address);
            bill.setFull_name(fullname);
            bill.setState("chờ xác nhận");
            bill.setMessage(message);
            bill.setBill_detail(c.data);
            for(Product p : c.getdata()){
                bill.getMapCommented().put(p, false);
            }
            System.out.println(bill.toString());
            if(BillData.saveBill(bill)){
                System.out.println("xoa cart"+CartData.clearCart(u.getUsername()));
                System.out.println("giam solg"+ProductsData.updateProductQuantity(bill.getBill_detail()));
                session.setAttribute("cart", null);
                response.sendRedirect("user-bill-management.jsp");
            }else{
                response.sendRedirect("checkout.jsp");
            }

        }
    }
}

