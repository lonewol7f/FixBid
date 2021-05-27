import util.UserDBUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "updateCartServlet")
public class updateCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String product = request.getParameter("product");
        String price = request.getParameter("price");
        String quantity = request.getParameter("qty");
        String subtotal = request.getParameter("subtot");
        String delete = request.getParameter("delete");

        boolean result = cartDBUtil.updateCart(product, price, quantity, subtotal,delete);

        if (result == true) {

            System.out.println("cart is updated successfully");

            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/cart.jsp");
            dispatcher.forward(request,response);
        } 
        else {
            System.out.println("cart is not updated successful");
        }


    }
}
