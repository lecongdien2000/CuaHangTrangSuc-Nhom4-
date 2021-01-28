package user;

import entity.UsersData;

@javax.servlet.annotation.WebServlet(name = "loadUserProfile", urlPatterns = "/loadUserProfile")
public class loadUserProfile extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        User user = UsersData.getUsers(request.getParameter("userName"));
        if (user!= null){

        request.setAttribute("userRS", user);
        if(user.isAdmin()) {
            request.getRequestDispatcher("Admin-Profile.jsp").forward(request, response);

        }
        else{
            request.getRequestDispatcher("user_profile.jsp").forward(request, response);
        }

        }
    }
}
