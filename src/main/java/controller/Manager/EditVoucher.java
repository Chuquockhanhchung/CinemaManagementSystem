/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.Manager;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

import dal.DBContext;
import dal.VoucherDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Voucher;

/**
 *
 * @author Admin
 */
public class EditVoucher extends HttpServlet {
   
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
            out.println("<title>Servlet EditVoucher</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditVoucher at " + request.getContextPath () + "</h1>");
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
        try{
            int VoucherID = Integer.parseInt(request.getParameter("VoucherID"));
            String VoucherName = request.getParameter("VoucherName");
            Float VoucherPrice = Float.parseFloat(request.getParameter("VoucherPrice"));
            String Detail = request.getParameter("Detail");
            String ExpirationDateStr = request.getParameter("ExpirationDate");

            // Parse the date string to java.util.Date
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date utilDate = dateFormat.parse(ExpirationDateStr);

            // Convert java.util.Date to java.sql.Date
            java.sql.Date ExpirationDate = new java.sql.Date(utilDate.getTime());
            Voucher v = new Voucher();
            v.setVoucherID(VoucherID);
            v.setVoucherName(VoucherName);
            v.setVoucherPrice(VoucherPrice);
            v.setExpirationDate(ExpirationDate);
            v.setDetail(Detail);
            VoucherDAO vd = new VoucherDAO(DBContext.getConn());
            vd.UpdateVoucher(v);
            response.sendRedirect("manager/CMS/voucher.jsp");
        }
        catch(Exception e){
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
