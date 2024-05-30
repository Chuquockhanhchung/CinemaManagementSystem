/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Email;
import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.Properties;

/**
 *
 * @author ADMIN
 */
public class Email {
    private String from;
    
    public Email() {
    }

    public Email(String from) {
        this.from = from;
    }

    public static void main(String[] args) {
        Email a = new Email("chuquockhanhchung@gmail.com");
        a.sendEmail2("chungcqkhe170745@fpt.edu.vn");
    }

    public void sendEmail(String mail) {
        final String from = "chuquockhanhchung@gmail.com";
        final String pass = "lrbq waeg mugb jkxr";
        
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        
        // Create authentication
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, pass);
            }
        };
        
        // Get session
        Session session = Session.getInstance(properties, auth);
        
        // Send email
        String to = mail;
        MimeMessage msg = new MimeMessage(session);
        
        try {
            // Set content type
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
            
            // Set sender
            msg.setFrom(new InternetAddress(from));
            
            // Set recipient
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            
            // Set subject
            msg.setSubject("Confirm transaction!");
            
            // Set content
           String resetPasswordLink = "http://localhost:8080/CinemaManageSystem/Resetpassword?mail="+mail;
            String content = "<html><body style=\"font-family: Arial, sans-serif; line-height: 1.6; color: #333;\">"
                           + "<div style=\"max-width: 600px; margin: auto; padding: 20px; border: 1px solid #ddd; border-radius: 10px;\">"
                           + "<h2 style=\"color: #444;\">Reset Password</h2>"
                           + "<p>This is to confirm that we have received your payment for the invoice.</p>"
                           + "<p>To reset your password, please click the button below:</p>"
                           + "<a href=\"" + resetPasswordLink + "\" style=\"background-color: red; color: white; padding: 10px 20px; text-decoration: none; display: inline-block; border-radius: 5px;\">Reset Password</a>"
                           + "<p>Best regards,<br>Chun</p>"
                           + "</div></body></html>";
            msg.setContent(content, "text/html; charset=UTF-8");
            
            // Send email
            Transport.send(msg);
            
            System.out.println("Email sent successfully.");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
public void sendEmail2(String mail) {
       // final String from2 = "chuquockhanhchung@gmail.com";
        final String pass = "lrbq waeg mugb jkxr";
        
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        
        // Create authentication
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, pass);
            }
        };
        
        // Get session
        Session session = Session.getInstance(properties, auth);
        
        // Send email
        String to = mail;
        MimeMessage msg = new MimeMessage(session);
        
        try {
            // Set content type
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
            
            // Set sender
            msg.setFrom(new InternetAddress(from));
            
            // Set recipient
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            
            // Set subject
            msg.setSubject("Confirm transaction!");
            
            // Set content
           String resetPasswordLink = "http://localhost:8080/CinemaManageSystem/Resetpassword?mail="+mail;
            String content = "<html><body style=\"font-family: Arial, sans-serif; line-height: 1.6; color: #333;\">"
                           + "<div style=\"max-width: 600px; margin: auto; padding: 20px; border: 1px solid #ddd; border-radius: 10px;\">"
                           + "<h2 style=\"color: #444;\">Reset Password</h2>"
                           + "<p>This is to confirm that we have received your payment for the invoice.</p>"
                           + "<p>To reset your password, please click the button below:</p>"
                           + "<a href=\"" + resetPasswordLink + "\" style=\"background-color: red; color: white; padding: 10px 20px; text-decoration: none; display: inline-block; border-radius: 5px;\">Reset Password</a>"
                           + "<p>Best regards,<br>Chun</p>"
                           + "</div></body></html>";
            msg.setContent(content, "text/html; charset=UTF-8");
            
            // Send email
            Transport.send(msg);
            
            System.out.println("Email sent successfully.");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
