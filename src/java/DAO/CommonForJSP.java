/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;
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

}
