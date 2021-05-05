package util;

import model.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class UserDBUtil {

    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Following code segment performs data insertion to the user table

    /**
     * @param FName is first name of the user
     * @param LName is last name of the user
     * @param address is address of the user
     * @param phoneNumber is phone number of the user
     * @param email is email address of the user
     * @param password is password of the user
     * @return status
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

    public static User getSingleUser(String email1) {
        User user = new User();

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT * FROM user WHERE email='" + email1 + "'";

            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                user.setFName(rs.getString("FName"));
                user.setLName(rs.getString("LName"));
                user.setAddress(rs.getString("address"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setEmail(rs.getString("email"));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    /**
     * This performs GET all users
     *
     * @return users (ArrayList<User>)
     * @see DBConnectUtil#getConnection()
     */
    public static ArrayList<User> listUser() {
        ArrayList<User> users = new ArrayList<>();
        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT * FROM user";
            rs = stmt.executeQuery(sql);

            while (rs.next()){
                User user = new User();

                user.setFName(rs.getString("FName"));
                user.setLName(rs.getString("LName"));
                user.setAddress(rs.getString("address"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setEmail(rs.getString("email"));

                users.add(user);
            }
        } catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }

        return users;
    }
}

