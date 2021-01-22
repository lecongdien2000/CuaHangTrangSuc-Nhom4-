package user;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class Mail {
    private String username;
    private String password;
    private Session session;


    public Mail(String username, String password){
        this.username = username;
        this.password = password;
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
    }

    public void sendMessage(String nameFrom, String mailTo, String subject, String content){
        MimeMessage message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(username, nameFrom));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(mailTo));
            message.setSubject(subject, "UTF-8");
            message.setText(content, "UTF-8");

            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }
}
