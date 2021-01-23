package user;

import entity.UsersData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "login", urlPatterns = "/login")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String uname = request.getParameter("username");
    String pass = MD5.convertHashToString(request.getParameter("password"));
    User user = UsersData.getUsers(uname, pass);
    if(user!=null){
        HttpSession session = request.getSession(true);
        session.setAttribute("user", user);
        response.sendRedirect("index");
    } else{
        request.setAttribute("erros", "Ban da nhap sai user name hoac password");
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }

    }
}
