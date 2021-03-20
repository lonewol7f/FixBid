package util;

import model.Feedback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

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

    public static ArrayList<Feedback> allFeedback(){
        ArrayList<Feedback> feedbacks = new ArrayList<>();

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();
            String sql = "SELECT * FROM feedback ORDER BY feedbackID DESC";

            rs = stmt.executeQuery(sql);

            while (rs.next()){
                Feedback feedback = new Feedback();
                feedback.setFeedbackID(rs.getInt(1));
                feedback.setEmail(rs.getString(2));
                feedback.setType(rs.getString(3));
                feedback.setComment(rs.getString(4));
                feedback.setCreated(rs.getString(5));

                feedbacks.add(feedback);
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return feedbacks;
    }

    public static void deleteFeedback(int id){
        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "DELETE FROM feedback WHERE feedbackID='"+id+"'";
            stmt.executeUpdate(sql);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
