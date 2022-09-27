/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author ignite390
 */
@WebServlet(name = "loadCart", urlPatterns = {"/loadCart"})
public class loadCart extends HttpServlet {

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
            out.println("<title>Servlet loadCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loadCart at " + request.getContextPath() + "</h1>");
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
        PrintWriter out=response.getWriter();
        JSONArray json=new JSONArray();
        try
		{

		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			String email=(String)session.getAttribute("email");
			if(email!=null)
			{
				ProductManager pmg=new ProductManager();
				JSONArray res=pmg.loadCart(email);
				if(res!=null)
				{
					JSONObject obj=new JSONObject();
					obj.put("status","success");
					obj.put("msg",res);
					json.put(obj);
				}
				else{
					JSONObject obj=new JSONObject();
					obj.put("status","failed");
					obj.put("msg","Application error");
					json.put(obj);
				}
			}else
			{
				JSONObject obj=new JSONObject();
				obj.put("status","failed");
				obj.put("msg","Please login");
				json.put(obj);
			}
		}
		else
		{
				JSONObject obj=new JSONObject();
				obj.put("status","failed");
				obj.put("msg","Please login");
				json.put(obj);
		}
		}catch(Exception e)
		{
			try
			{
				JSONObject obj=new JSONObject();
				obj.put("status","failed");
				obj.put("msg",e);
				json.put(obj);
			}
			catch(Exception ex)
			{
			}
		}
		finally
		{
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
