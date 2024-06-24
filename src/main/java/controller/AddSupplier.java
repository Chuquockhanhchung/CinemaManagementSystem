/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;

import dal.DBContext;
import dal.ProductDAO;
import dal.SupplierDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Product;
import model.Supplier;

/**
 *
 * @author My Computer
 */
public class AddSupplier extends HttpServlet {
   
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
            out.println("<title>Servlet AddSupplier</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddSupplier at " + request.getContextPath () + "</h1>");
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
        processRequest(request, response);
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
            String SupplierName = request.getParameter("SupplierName");
            String Address = request.getParameter("Address");
            String Email = request.getParameter("Email");
            String PhoneNumber = request.getParameter("PhoneNumber");
            if (SupplierName != null && !SupplierName.isEmpty() &&
                    Address != null && !Address.isEmpty() &&
                    Email != null && !Email.isEmpty()
                    && PhoneNumber != null && !PhoneNumber.isEmpty()) {
                Supplier s = new Supplier();
                s.setSupplierName(SupplierName);
                s.setAddress(Address);
                s.setEmail(Email);
                s.setPhoneNumber(PhoneNumber);
                SupplierDAO sd = new SupplierDAO(DBContext.getConn());
                sd.AddSupplier(s);
                response.sendRedirect("manager/CMS/add_supplier.jsp");
            }
            else{
                HttpSession session = request.getSession();
                session.setAttribute("error", "Vui lòng nhập đủ!");
                response.sendRedirect("manager/CMS/add_product.jsp");
            }
        }
        catch (Exception e) {
            e.printStackTrace();
            HttpSession session = request.getSession();
            session.setAttribute("error", "Đã xảy ra lỗi:");
            response.sendRedirect("manager/CMS/add_product.jsp");
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
