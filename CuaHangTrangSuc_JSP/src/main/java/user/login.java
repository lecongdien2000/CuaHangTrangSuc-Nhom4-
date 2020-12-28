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

@WebServlet(name = "login", urlPatterns = "/login")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String uname = request.getParameter("username");
    String pass = request.getParameter("password");
        HashMap<String, String> datas = UsersData.datas;
    if(datas.containsKey(uname) && datas.get(uname).equals(pass)){
        HttpSession session = request.getSession(true);
        session.setAttribute("uname", uname);
        response.sendRedirect("index.jsp");
    } else{
        request.setAttribute("erros", "Ban da nhap sai user name hoac password");
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }

    }
}
