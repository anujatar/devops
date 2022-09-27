/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.bean;

/**
 *
 * @author ignite390
 */
public class UserBean {
    String fn,ln,email,un,pass,c_pass,feed,sname;
   public void setFirstname(String fn)
    {
        this.fn=fn;
    }
   public  String getFirstname()
    {
        return fn;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }
   public  void setLastname(String ln)
    {
        this.ln=ln;
    }
   public  String getLastname()
    {
        return ln;
    }
   public  void setEmail(String email)
    {
        this.email=email;
    }
   public  String getEmail()
    {
        return email;
    }
   public void setUname(String un)
    {
        this.un=un;
    }
   public String getUname()
    {
        return un;
    }
   public void setPassWord(String pass)
    {
        this.pass=pass;
    }
   public String getPassWord()
    {
        return pass;
    }
   public void setMessage(String msg) {
        this.feed = msg;
    }
    public String getMessage() {
        return feed;
    }
   
    
}
