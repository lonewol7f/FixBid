package servlets;
import util.UserDBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "updateUserServlet")
public class updateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String UID = request.getParameter("UID");
        String FName = request.getParameter("FName");
        String LName = request.getParameter("LName");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");

        int newUID = Integer.parseInt(UID);

        boolean result = UserDBUtil.updateUser(FName, LName, address, phoneNumber, email, newUID);

        if(result)
        {
            System.out.println("User is updated successfully ! ");
        }
        else
        {
            System.out.println("Update is not successful !");
        }
    }
}
