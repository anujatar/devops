/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.manager;
import ignite.tcs.com.bean.UserBean;
import ignite.tcs.com.dao.UserDAO;

/**
 *
 * @author ignite390
 */
public class UserManager {
    public boolean insertUser(UserBean u){
        return new UserDAO().insertUser(u);
    }
    public String validateUser(UserBean u){
//       return new UserDAO().userValidate(u);
        return new UserDAO().userValidate(u);
   }
    public boolean feedback(UserBean u){
        return new UserDAO().userFeedback(u);
    }
     
}
