package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arraylist;
import java.util.list;

public class CartDBUtil {

    public static list<cart> validate(String userName, String password) {
        Arraylist <cart>cart = new Arraylist<>();

        //create database connection
        String url = "jdbc:mysql=//localhost:3306/fixbid";
        String user = "root";
        String pass = "Dilmi@2002"

        //validate
        try{
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection(url,user,pass);
            Statement stmt = con.createStatement();

            String sql = "select * from cart where userName='"+userName+"'and '"+password+"'";
            ResultSet rs = stmt.executeQuery(sql);

            if(re.next()){
                int productID = rs.getInt(1);
                int price = rs.getInt(2);
                int quantity = rs.getInt(3);
                int subTotal = rs.getInt(4);
                int total = rs.getInt(5);
                int delete = rs.getInt(6);

                cart c = new cart(productID,price,quantity,subTotal,total,delete);
                cart.add(c);
            }

        }
        catch(Exception e){
            e.printStackTrace();
        }

        return;

    }

