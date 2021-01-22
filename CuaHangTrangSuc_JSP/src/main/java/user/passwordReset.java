package user;

import entity.UsersData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "passwordReset", urlPatterns = "/passwordReset")
public class passwordReset extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hostName = "trangsucnonglam@gmail.com";
        String hostPassword = "fmkuhudfvlqkulhg";
        String username = request.getParameter("username");
        String nameFrom = "Trang Sức Nông Lâm";
        String subject = "Thay đổi mật khẩu";
        User user = UsersData.getUsers(username);
        if(user!=null){
            String backupLink = "http://localhost:8081/CuaHangTrangSuc_JSP_war/processBackupLink?username=" + user.getUsername() + "&password=" + user.getPassword();
            String content = "Dường như bạn đang muốn thay đổi mật khẩu. Nếu có, hãy vào đường link sau: " + backupLink
                    + "\n Còn nếu không phải, xin vui lòng đừng nhấn vào link này!";
            Mail mail = new Mail(hostName, hostPassword);
            String userMail = user.getEmail();
            mail.sendMessage(nameFrom, user.getEmail(), subject, content);
            response.sendRedirect("password-reset-notif.html");
        }else{
            request.setAttribute("erros", "Ban da nhap sai username");
            request.getRequestDispatcher("password-reset.jsp").forward(request,response);
        }
    }
}
