package user;

import entity.UsersData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "userEdit", urlPatterns = "/userEdit")
public class userEdit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        User user = (User)session.getAttribute("user");
        if(user!=null){
            user.setAccountName(request.getParameter("accountName"));
            user.setEmail(request.getParameter("email"));
            user.setGender(request.getParameter("gender"));
            user.setBirthday(Date.convertSqlStringToDate(request.getParameter("birth")));
            user.setDescription(request.getParameter("descript"));
            UsersData.updateUser(user);
        }
        response.sendRedirect("user_profile.jsp");
    }
}
