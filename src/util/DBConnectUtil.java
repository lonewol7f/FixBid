package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

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

    /**
     * This method use for get connect with database
     *
     * @return conn (Connection)
     * @throws ClassNotFoundException Thrown when an application tries to load in a class through its string name using
     */
    public static Connection getConnection() throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }
}
