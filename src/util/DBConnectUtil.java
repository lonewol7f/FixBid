package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnectUtil {

    /**
     * Use your MySQL username and password
     * Default username = root
     * Default password = ""
     * <p>
     * If you want get connection to another class,
     * simply use DBConnectUtil.getConnection();
     */

    private static final String url = "jdbc:mysql://localhost:3306/fixbid";
    private static final String username = "fixbid";
    private static final String password = "FixBid@2021";
    private static Connection conn;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            System.out.println("Database Connection not success: " + e.toString());
        }

        return conn;
    }
}
