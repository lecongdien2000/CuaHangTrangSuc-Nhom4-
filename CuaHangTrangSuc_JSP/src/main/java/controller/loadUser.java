package controller;

import entity.UsersData;
import user.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "loadUser", urlPatterns = "/loadUser")
public class loadUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("keyword") == null) {
            List<User> userList = UsersData.getAllUser();
            request.setAttribute("userList", userList);
            request.getRequestDispatcher("admin-user-management.jsp").forward(request, response);
        }
        else{
            List<User> userList = UsersData.getUsersWithKeyword(request.getParameter("keyword"));
            request.setAttribute("userList", userList);
            request.getRequestDispatcher("admin-user-management.jsp").forward(request, response);
        }

    }
}
