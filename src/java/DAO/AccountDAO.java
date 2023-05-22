/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
import Model.Role;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO extends DBContext {

    public Account login(String userName, String password) {
        try {

            String sql = "SELECT a.[id]\n"
                    + "      ,a.[userName]\n"
                    + "      ,a.[password]\n"
                    + "      ,a.[email]\n"
                    + "      ,a.[address]\n"
                    + "      ,a.[phone]\n"
                    + "      ,a.[birthday]\n"
                    + "      ,a.[createDate]\n"
                    + "      ,a.[isBlock]\n"
                    + "      ,a.[isVerify]\n"
                    + "      ,a.[rid]\n"
                    + "	     ,r.[title] as 'role'\n"
                    + "      ,r.[createDate] as 'createDate_Role'\n"
                    + "  FROM [dbo].[Account] a inner join [dbo].[Role] r\n"
                    + "  ON a.rid = r.id\n"
                    + "  WHERE a.userName = ? and a.password = ?";

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            st.setString(2, password);

            ResultSet rs = st.executeQuery();

            if (rs.next()) {

                Role role = new Role(rs.getInt("rid"), rs.getString("role"), rs.getDate("createDate_Role"));

                return new Account(rs.getInt("id"), rs.getString("userName"), rs.getString("password"), rs.getString("email"), rs.getString("address")
                        , rs.getString("phone"), rs.getDate("birthday"), rs.getDate("createDate"), rs.getBoolean("isBlock"), rs.getBoolean("isVerify")
                        , role);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
