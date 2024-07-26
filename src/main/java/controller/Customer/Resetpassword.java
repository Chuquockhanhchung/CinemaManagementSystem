/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.Customer;

import dal.CustomerDAO;
import dal.DBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Customer;

/**
 *
 * @author ADMIN
 */
public class Resetpassword extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Resetpassword</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Resetpassword at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String mail = request.getParameter("mail");
        request.setAttribute("mail", mail);
       request.getRequestDispatcher("reset-password.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         try {
        String email = request.getParameter("email");    
        String pass = request.getParameter("newPassword"); 
        
        CustomerDAO dao = new CustomerDAO(DBContext.getConn());
        dao.resetPassword(email, pass);
        ArrayList<Customer> list = dao.getInfor_Customer();
            Customer c = null;
            for (Customer cu : list) {
                if ((email != null && cu.getEmail().equals(email)) || (email != null && cu.getPhone().equals(email))) {
                    c = cu;
                    break;
                }
            }
            if (c != null) {
                if (c.getPass().compareTo(pass) == 0) {
                    Cookie em = new Cookie("em", c.getEmail());
                    Cookie pa = new Cookie("pa", c.getPass());
                    em.setMaxAge(60 * 60 * 24 * 7);
                    pa.setMaxAge(60 * 60 * 24 * 7);
                    response.addCookie(em);
                    response.addCookie(pa);

                    // Session  
                    HttpSession session = request.getSession();
                    session.setAttribute("user", c);

                    if (c.getRole() == 1) {
                        response.sendRedirect("home");
                    } else {
                        System.out.println("Login failed");
                        response.sendRedirect("index.jsp");
                    }

                } else {
                    System.out.println("Login failed: Incorrect password for user: " + email);
                    request.setAttribute("err", "Password is wrong!");
                    request.getRequestDispatcher("../home").forward(request, response);
                }
            } else {
                System.out.println("Login failed: Email not found - " + email);
                request.setAttribute("err", "Email not exist!");
                request.getRequestDispatcher("../home").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
}
    


    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
