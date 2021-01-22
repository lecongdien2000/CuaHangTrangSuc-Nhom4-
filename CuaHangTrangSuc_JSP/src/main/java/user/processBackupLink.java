package user;

import entity.UsersData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "processBackupLink", urlPatterns = "/processBackupLink")
public class processBackupLink extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password"); //encrypted
        User user = UsersData.getUsers(username, password);
        if(user!=null){
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);
            response.sendRedirect("password-reset-newPassword.jsp");
        }else{
            response.sendRedirect("404.html");
        }
    }
}
