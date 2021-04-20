package util;

import model.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDB {

    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet res = null;

    public void insertNewUser(String FName, String LName, String address, String phoneNumber, String email, String password, String RePassword) throws ClassNotFoundException {

        try {
            con = DBConnectUtil.getConnection();
            stmt = con.createStatement();
            String query = "INSERT INTO user values(0,'" + FName + "','" + LName + "','" + address + "','" + phoneNumber + "','"+ email +"','"+ password +"','"+ RePassword +"')";

            int res = stmt.executeUpdate(query);

            boolean checkStatus = false;

            if (res != 0) {
                checkStatus = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
