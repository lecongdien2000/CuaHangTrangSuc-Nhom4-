package user;

import entity.UsersData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "confirmPasswordReset", urlPatterns = "/confirmPasswordReset")
public class confirmPasswordReset extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pass = request.getParameter("pass");
        String pass2 = request.getParameter("pass2");
        if(pass.equals(pass2)){
            HttpSession session = request.getSession(true);
            User user = (User)session.getAttribute("user");
            user.setPassword(MD5.convertHashToString(pass));
            UsersData.updateUser(user);
            response.sendRedirect("password-reset-successfulNotif.html");
        } else{
            request.getRequestDispatcher("password-reset-newPassword.jsp").forward(request,response);;
        }
    }
}
