/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.dao;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import ignite.tcs.com.bean.UserBean;
import ignite.tcs.com.connection.MySqlConnection;
import java.sql.ResultSet;

/**
 *
 * @author ignite390
 */
public class UserDAO {
    public boolean insertUser(UserBean u) {
        boolean flag = false;
        String s1,s2,s3,s4,s5;
        s1=u.getEmail();
        s2=u.getFirstname();
        s3=u.getLastname();
        s4=u.getUname();
        s5=u.getPassWord();
        MySqlConnection msq = new MySqlConnection();
        try {

            // String sql = "INSERT into details (name,e_id,pass) values(?,?,?)"; 
            String sql = "INSERT into userdetail values(?,?,?,?,?)";

            Connection connection = msq.getConnection();
            PreparedStatement statement = null;
            statement = (PreparedStatement) connection.prepareStatement(sql);
            statement.setString(1,s2);
            statement.setString(2,s3);
            statement.setString(3,s1);
            statement.setString(4,s4);
            statement.setString(5,s5);
            
            statement.executeUpdate();
            flag = true;

            
        } catch (Exception e) {
        } finally {
            return flag;
        }

    }

public String userValidate(UserBean u)
   {
       String login="";
       MySqlConnection msq = new MySqlConnection();
        try
        {
            String s1 = u.getEmail();
            String s2 = u.getPassWord();
            
           String sql="SELECT F_Name FROM userdetail WHERE email=? and Pasword=?";
           Connection connection = msq.getConnection();
           PreparedStatement statement = null;
          ResultSet rs = null;
          statement = (PreparedStatement) connection.prepareStatement(sql);
          statement.setString(1,s1);
          statement.setString(2,s2);
          rs = statement.executeQuery();
         if (rs.next()) {
                login = rs.getString("F_Name");

            }
          
         
       }
      catch(Exception e)
               {
                 System.out.println("Yes");
              }
       finally
        {
           return login;
        }   
   }
public boolean userFeedback(UserBean u) {
        boolean flag = false;
        MySqlConnection msq = new MySqlConnection();
        try {
            String email = u.getEmail();
            String pass = u.getPassWord();
            String message = u.getMessage();

            String sql = "INSERT into feedback(email,Pasword,message) values(?,?,?)";
            Connection connection = msq.getConnection();
            PreparedStatement statement = null;

            statement = (PreparedStatement) connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, pass);
            statement.setString(3, message);
            

            statement.executeUpdate();
            flag = true;

//           else
//           {
//               flag=false;
//           }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            msq.closeConnection();
            return flag;
        }
    }
}