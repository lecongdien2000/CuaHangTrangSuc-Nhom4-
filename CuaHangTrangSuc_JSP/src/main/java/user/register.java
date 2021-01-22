package user;

import entity.UsersData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "register", urlPatterns = "/register")
public class register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("username");
        String pass = request.getParameter("password");
        String pass2 = request.getParameter("password2");
        User user = UsersData.getUsers(uname);
        if(pass.equals(pass2) && user== null){
            user = new User();
            pass = MD5.convertHashToString(pass);
            user.setUsername(uname);
            user.setPassword(pass);
            user.setEmail(request.getParameter("email"));
            UsersData.insertUser(user);
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);
            response.sendRedirect("index");
        }else{
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
}
