/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.servlets;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import ignite.tcs.com.bean.UserBean;
import ignite.tcs.com.manager.UserManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ignite320
 */
@WebServlet(name = "registration", urlPatterns = {"/registration"})
public class registration extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String s1, s2, s3, s4, s5, s6;
        s1 = request.getParameter("fn");
        s2 = request.getParameter("ln");
        s3 = request.getParameter("eid");
        s4 = request.getParameter("usr");
        s5 = request.getParameter("p1");
        s6 = request.getParameter("p2");
        PrintWriter out = response.getWriter();
        String s7 = "";
//Validation Remaining.
        if (s1 != "" && s2 != "" && s3 != "" && s4 != "" && s5 != "" && s6 != "") {
            if (s1.matches("^[a-zA-Z]+")) {
                if (s2.matches("^[a-zA-Z]+")) {
                    if (s3.matches("^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})")) {
                        if (s4.matches("^[a-zA-Z]+")) {
                            if (s5.matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=.[\\S]+$).{5,15}$")) {
                                if (s5.equals(s6)) {



                                    UserBean u = new UserBean();

                                    u.setFirstname(s1);
                                    u.setLastname(s2);
                                    u.setEmail(s3);
                                    u.setPassWord(s5);
                                    u.setUname(s4);


                                    UserManager umg = new UserManager();
                                    if (umg.insertUser(u)) {
                                        s7 = "Success";
                                    } else {
                                        s7 = "Failed";
                                    }

                                }

                            } else {
                                s7 = "Please enter the same password as above";
                            }
                        } else {
                            s7 = "Enter letters only";
                        }
                    } else {
                        s7 = "Plese enter valid Email Id ";

                    }
                } else {
                    s7 = "Enter letters only";

                }
            } else {
                s7 = "Enter letters only";
            }

        } else {
            s7 = "Please enter all fields";
        }
        out.print(s7);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
