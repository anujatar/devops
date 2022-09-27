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

/**
 *
 * @author ignite390
 */
@WebServlet(name = "feedback", urlPatterns = {"/feedback"})
public class feedback extends HttpServlet {

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
            out.println("<title>Servlet feedback</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet feedback at " + request.getContextPath() + "</h1>");
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
        String uEmail = request.getParameter("emailfeed");
        String uPass = request.getParameter("passfeed");
        String uFeed = request.getParameter("feedFeed");
        PrintWriter out = response.getWriter();
        boolean b = false;
        int n1 = uEmail.indexOf('@');
        int n2 = uEmail.lastIndexOf('.');
        int l = uEmail.length();
        String st = uEmail.substring(n2 + 1, l);
        if (l > 0 && n1 > 0 && n2 > n1 && (n2 - n1) > 1 && n2 < l - 1) {
            b = true;
        }
        if (b == true && !uEmail.equals("") && !uPass.equals("") && !uFeed.equals("")) {



            UserBean u = new UserBean();

            u.setEmail(uEmail);
            u.setPassWord(uPass);
            u.setMessage(uFeed);

            UserManager umg = new UserManager();

            if (umg.feedback(u)) {
                request.setAttribute("message","Successfully Submitted");
            request.getRequestDispatcher("Feedback.jsp").forward(request, response);
                
            } else {
               request.setAttribute("message","Failed");
            request.getRequestDispatcher("Feedback.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("message","Please fill the form");
            request.getRequestDispatcher("Feedback.jsp").forward(request, response);
            
            //out.println("Please fill all the details properly");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
