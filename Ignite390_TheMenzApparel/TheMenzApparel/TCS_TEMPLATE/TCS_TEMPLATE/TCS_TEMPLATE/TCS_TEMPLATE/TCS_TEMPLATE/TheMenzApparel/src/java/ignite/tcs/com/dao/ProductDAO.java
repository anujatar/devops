/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import ignite.tcs.com.bean.cartBean;
import ignite.tcs.com.connection.MySqlConnection;
import java.sql.ResultSet;
import javax.naming.spi.DirStateFactory;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author ignite390
 */
public class ProductDAO {

    public String addToCart(cartBean cart) {
        String result = "";
        MySqlConnection msq = new MySqlConnection();
        try {
            String sql = "insert into cart(pid, email,quqntity,price) values(?,?,?,?)";
            Connection c = (Connection) msq.getConnection();
            PreparedStatement ps = (PreparedStatement) c.prepareStatement(sql);
            ps.setString(2, cart.getEmail());
            ps.setString(1, "" + cart.getProductId());
            ps.setString(3, "" + cart.getQuantity());
            String price = this.getProductPrice(""+cart.getProductId()); 
            ps.setString(4, price);
            if (ps.executeUpdate() == 1) {
                result = "success";
            }
        } catch (Exception e) {
            result = null;
            System.out.print(e);
        } finally {
            msq.closeConnection();
            return result;
        }
    }

    public String getProductPrice(String pid) {
        String price = "0";
        MySqlConnection msq = new MySqlConnection();
        try {
            String sql = "Select Price from product where P_Id=?";
            Connection c = msq.getConnection();
            PreparedStatement ps = (PreparedStatement) c.prepareStatement(sql);
            ps.setString(1, pid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                price = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            msq.closeConnection();
            return price;
        }
    }
    public static void main(String args[])
    {
    ProductDAO p= new ProductDAO();
    System.out.println(p.getProductPrice("1"));
    cartBean c=new cartBean();
    c.setEmail("DEBO@TCS.COM");
    c.setProductId(1);
    c.setQuantity(1);
    System.out.println(p.addToCart(c));
    
    }

    public JSONArray loadCart(String email) {
        JSONArray result= new JSONArray();
        MySqlConnection msq= new MySqlConnection();
        try
        {
        String sql="Select * from cart where email=?";
        Connection c= msq.getConnection();
        PreparedStatement ps=(PreparedStatement)c.prepareStatement(sql);
        ps.setString(1,email);
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
        JSONObject obj= new  JSONObject();
        obj.put("id", rs.getString(1));
        obj.put("pid", rs.getString(2));
        obj.put("quantity", rs.getString(4));
        obj.put("price", rs.getString(5));
        result.put(obj);
        }
        }catch(Exception e)
        {
        result=null;
        }
        finally
        {
        msq.closeConnection();
        return result;
        }
                
    }
}
