package servlets;

import util.FeedbackDBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addFeedbackServlet")
public class addFeedbackServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String type = request.getParameter("type");
        String comment = request.getParameter("comment");

        if (FeedbackDBUtil.addFeedback(email,type,comment)){
            System.out.println("Success"); // for testing
        }else {
            System.out.println("Sad bocca"); // for testing
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
