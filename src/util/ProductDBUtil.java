package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

//This Util class provides CRUD operations for the table Products in the Database
public class ProductDBUtil {

    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;



    //Insert new Product
    public static boolean insertProduct(String pname,String expDate,int startPrice,String ptype ,String description){
        boolean status = false;
        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "INSERT INTO product values(0,'" + pname + "','" + expDate + "','" + startPrice + "','" + ptype +"','" + description + "')";

            int res = stmt.executeUpdate(sql);

            if (res > 0) {
                status = true;
            }

        } catch (Exception ex) {

            ex.getMessage();
        }

        return status;
    }

    //Update a Product
    public static boolean updateProduct(){
        boolean status = false;

        try{

            conn = DBConnectUtil.getConnection();



        }catch(Exception e){


        }


    }
    //Select Product by id
    //Select all Products


    //Delete Product
    public static boolean deleteProduct(int pid ) {

        boolean status = false;

        try {

            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "DELETE FROM product WHERE  pid = '" + pid +"'";
            int res = stmt.executeUpdate(sql);

            if(res > 0)
            {
                status = true;
            }

        }catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}
