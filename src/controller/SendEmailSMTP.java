/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.util.Date;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 *
 * @author taki
 */
public class SendEmailSMTP {
    
    public static void sendOTP(String emailTo, String otp) {
        final String username = "quanlysachuit1431@gmail.com";
        final String password = "xyrvdilgeojabnzc";
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com"); // SMTP HOST
        prop.put("mail.smtp.port", "587"); // TLS 587 SSL 465
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            //người gởi
            message.setFrom(new InternetAddress(username));
            //người nhận
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
            message.addHeader("Content-type", "text/HTML; charset=UTF-8");
            message.setSubject("Yêu cầu thay đổi mật khẩu");
            message.setSentDate(new Date());
            message.setReplyTo(InternetAddress.parse(username));
            //Nội dung
            message.setText("Xin chào !"+ emailTo
                    + "\n"
                    + "\n"
                    + "[" + otp + "] - Mã xác minh để đổi mật khẩu cho tài khoản quản lý sách của bạn"
                    + "\n"
                    + "Nếu bạn không yêu cầu đổi mật khẩu, vui lòng bỏ qua email này.");
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
