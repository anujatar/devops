/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.connection;
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ignite390
 */
public class MySqlConnection {

    Connection c;
    public Connection getConnection() throws ClassNotFoundException, SQLException {
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "ignite390";
        String user = "root";
        String password = "root";
        Class.forName(driver); // You don't need to call it EVERYTIME btw. Once during application's startup is more than enough.
        c = (Connection) DriverManager.getConnection(url + dbName, user, password);
        return c;
    }

    public void closeConnection() {
        try {
            if (!c.isClosed()) {
                c.close();
            }
        } catch (Exception e) {
        }

    }
}
