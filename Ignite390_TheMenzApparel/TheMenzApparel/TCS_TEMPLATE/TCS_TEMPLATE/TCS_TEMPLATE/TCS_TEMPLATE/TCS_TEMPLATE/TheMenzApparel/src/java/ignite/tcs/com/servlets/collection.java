/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.servlets;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;


/**
 *
 * @author ignite390
 */
@WebServlet(name = "collection", urlPatterns = {"/collection"})
public class collection extends HttpServlet {

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
            out.println("<title>Servlet collection</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet collection at " + request.getContextPath() + "</h1>");
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
       
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        int a=0;
        JSONArray json = new JSONArray();
        try {
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/";
            String dbName = "ignite390";
            String user = "root";
            String password = "root";
            Connection connection = null;
            PreparedStatement statement = null;
            ResultSet rs = null;
            String sql = "SELECT Category_Id, Image,Discount, Description,Signature_Name, Price FROM product";
            Class.forName(driver);
            connection = (Connection) DriverManager.getConnection(url + dbName, user, password);
            statement = (PreparedStatement) connection.prepareStatement(sql);
            rs = statement.executeQuery();
            
            while (rs.next()) {
                if(a<12)
                {
                
                JSONObject obj1 = new JSONObject();
                 obj1.put("cid", rs.getString("Category_Id"));
                obj1.put("image", rs.getString("Image"));
                obj1.put("Sign", rs.getString("Signature_Name"));
                obj1.put("description", rs.getString("Description"));
                obj1.put("price", rs.getString("Price"));
                obj1.put("discount", rs.getString("Discount"));
               
                json.put(obj1);
                }
                else{
                    break;
                }
                a++;


            }
        } catch (Exception e) {
        } finally {
            out.print(json.toString());
            out.close();
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
