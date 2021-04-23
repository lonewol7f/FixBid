package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class UserDBUtil {

    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Following code segment performs data insertion to the user table

    /**
     * @param FName
     * @param LName
     * @param address
     * @param phoneNumber
     * @param email
     * @param password
     * @return
     */
    public static boolean addUser(String FName, String LName, String address, String phoneNumber, String email, String password, String AccTpy) {
        boolean status = false;
        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "INSERT INTO user VALUES(0,'" + FName + "','" + LName + "','" + address + "','" + phoneNumber + "','" + email + "','" + password + "','" + AccTpy + "')";

            int res = stmt.executeUpdate(sql);

            if (res > 0) {
                status = true;
            }

        } catch (Exception e) {

            e.getMessage();
        }

        return status;
    }

    public static boolean userLogin(String email1, String password1) {
        boolean status = false;
        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT password FROM user WHERE email ='" + email1 + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                if (password1.equals(rs.getString(1))) {
                    status = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}

