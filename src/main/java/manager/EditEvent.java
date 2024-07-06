/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package manager;

import java.io.IOException;
import java.io.PrintWriter;

import dal.DBContext;
import dal.EventDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Event;

/**
 *
 * @author datla
 */
public class EditEvent extends HttpServlet {
   
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
            out.println("<title>Servlet EditEvent</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditEvent at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
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
        int eventID = Integer.parseInt(request.getParameter("eventID"));
        String eventName = request.getParameter("eventName");
        String eventCode = request.getParameter("eventCode");
        String eventDetail = request.getParameter("eventDetail");
        String eventImage = request.getParameter("eventImage");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        float discount = Float.parseFloat(request.getParameter("discount"));
        int status = Integer.parseInt(request.getParameter("status"));

        Event eventToUpdate = new Event();
        eventToUpdate.setEventID(eventID);
        eventToUpdate.setEventName(eventName);
        eventToUpdate.setEventCode(eventCode);
        eventToUpdate.setEventDetail(eventDetail);
        eventToUpdate.setEventImage(eventImage);
        eventToUpdate.setStartDate(startDate);
        eventToUpdate.setEndDate(endDate);
        eventToUpdate.setDiscount(discount);
        eventToUpdate.setStatus(status);

        EventDAO eventDAO = new EventDAO(DBContext.getConn());
        boolean updated = eventDAO.editEvent(eventToUpdate);

        if (updated) {
            response.sendRedirect(request.getContextPath() + "/event.jsp?eventID=" + eventID);
        } else {
            response.getWriter().println("Cập nhật sự kiện không thành công");
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
