/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.servlets;

import ignite.tcs.com.bean.UserBean;
import ignite.tcs.com.manager.UserManager;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ignite390
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet 
{
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.print("Tushar");
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {     
        //HttpSession session = request.getSession(true);

        response.setContentType("text/html;charset=UTF-8");
        String s1 = request.getParameter("emailid");
        String s2 = request.getParameter("pass");

        PrintWriter out = response.getWriter();

        UserBean u = new UserBean();
        u.setEmail(s1);
        u.setPassWord(s2);

//        session.setAttribute("pwd", s2);
        UserManager umg = new UserManager();
        String uname1 = umg.validateUser(u);

        if (uname1 != "") {
            
            HttpSession session = request.getSession(true);
            
           u.setSname(uname1);
           session.setAttribute("userdetails", u);
            session.setAttribute("email", s1);
            
            out.print("Login Successful*Welcome" + "  " + uname1);
        } else {
            out.print("Failed");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

