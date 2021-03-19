package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class FeedbackDBUtil {

    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static boolean addFeedback(String email, String type, String comment) {
        boolean isSuccess = false;
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        String dateTime = dtf.format(now);

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();
            String sql = "INSERT INTO feedback values(0,'" + email + "','" + type + "','" + comment + "','" + dateTime + "')";

            int rs = stmt.executeUpdate(sql);

            if (rs != 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
}
