package servlets;

import util.UserDBUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "loginServlet")
public class loginServlet extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String email = request.getParameter("email");
            String password = request.getParameter("password");

            if (UserDBUtil.userLogin(email, password)) {
                HttpSession session = request.getSession();
                session.setAttribute("email", email);

                RequestDispatcher dispatcher =request.getRequestDispatcher("/userProfile.jsp");
                dispatcher.forward(request, response);
                System.out.println("Login Success");
            }else {
                System.out.println("Login Unsuccess");
            }

        }


    }
