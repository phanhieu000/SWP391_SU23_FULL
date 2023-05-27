/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.xml.bind.DatatypeConverter;

public class CommonForJSP {

    public  boolean checkPhone(String phone) {
        return phone.matches("\\d+");
    }

    public  boolean checkDate(Date date) {
        return date.before(getCurrentDate());
    }

    public  Date getCurrentDate() {
        LocalDate curDate = java.time.LocalDate.now();
        return Date.valueOf(curDate.toString());
    }

    public String convertPassToMD5(String password) {
        MessageDigest convert = null;

        try {

            convert = MessageDigest.getInstance("MD5");

        } catch (NoSuchAlgorithmException e) {
            Logger.getLogger(Common.class.getName()).log(Level.SEVERE, null, e);
        }

        convert.update(password.getBytes());
        byte[] passwordByte = convert.digest();
        return DatatypeConverter.printHexBinary(passwordByte);
    }
    
    public String randomCode(){
        String s = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm0123456789";
        
        String code = "";
        
        
        int min = 0;
        int max = s.length() -1;
        
        for (int i = 1; i <= 6; i++) {
            int index = (int)(Math.random() * (max - min + 1) + min);
            code += s.charAt(index) +"";
        }
        
        return code;
    } 
    
    
    public void sendMail(String userEmail, String type){
        
        // Tạo mã xác thực duy nhất
//        String uuid = UUID.randomUUID().toString();
        String code = randomCode();

        // Lưu mã xác thực trong cơ sở dữ liệu của bạn để sử dụng sau này
        // Trong ví dụ này, chúng ta sẽ in mã xác thực ra màn hình để kiểm tra xem nó hoạt động như thế nào
//        System.out.println("Verification code: " + uuid);

        // Thiết lập thông tin email
        final String username = "vinhhtong200502@gmail.com";
        final String password = "tjfpgrzbdhckdmhv";
        String host = "smtp.gmail.com";
        int port = 587;
        String from = userEmail;
        String subject = type;
        String content = "ma xac thuc cua ban la: \'" + code +"\' vui long truy cap: http://localhost:9999/SWP391/confirmMail de xac thuc";

        // Thiết lập các thuộc tính email
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);

        // Tạo phiên gửi email và thiết lập thông tin người gửi
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            // Tạo đối tượng MimeMessage và thiết lập các thuộc tính email
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(userEmail));
            message.setSubject(subject);
            message.setText(content);

            // Gửi email
            Transport.send(message);
            
            AccountDAO ad = new AccountDAO();
            
            ad.deActiveCodeLast(ad.getLastOTPByEmail(userEmail));
            
            ad.saveOTP(code, type, userEmail);

            // Chuyển hướng đến trang xác nhận email
        } catch (MessagingException e) {
            throw new RuntimeException("SendMail Controller -> doGet(): " + e);
        }
        
    }

}
