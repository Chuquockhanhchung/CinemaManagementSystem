/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import dal.DBContext;
import dal.EventDAO;
import dal.TicketDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Event;
import model.Ticket;

/**
 *
 * @author datla
 */
public class EventSetvlet extends HttpServlet {
   
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
            out.println("<title>Servlet EventSetvlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EventSetvlet at " + request.getContextPath () + "</h1>");
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
        int CustomerID = Integer.parseInt(request.getParameter("CustomerID"));
        int EventID = Integer.parseInt(request.getParameter("EventID"));
        EventDAO dao = new EventDAO(DBContext.getConn());
        Event eventdao = dao.getEventByID(EventID);

        Event event = new Event();
        event.setEventID(eventdao.getEventID());
        event.setEventName(eventdao.getEventName());
        event.setEventCode(eventdao.getEventCode());
        event.setEventDetail(eventdao.getEventDetail());
        event.setEventImage(eventdao.getEventImage());
        event.setStartDate(eventdao.getStartDate());
        event.setEndDate(eventdao.getEndDate());
        event.setDiscount(eventdao.getDiscount());
        event.setStatus(eventdao.getStatus());

        HttpSession session = request.getSession();
        session.setAttribute("event", event);

        TicketDAO ticketDAO = new TicketDAO(DBContext.getConn());
        List<Ticket> list = ticketDAO.getTicketByBooking(CustomerID);
        int totalTickets = ticketDAO.countTicketsByBooking(CustomerID);

        boolean isFirstPurchase = list.isEmpty();
        double discount = 0.0;

        if (isFirstPurchase) {
            discount = 0.15; // Giảm giá 15% nếu đây là lần đầu mua vé
            session.setAttribute("discountMessage", "Congratulations!");
            response.sendRedirect("home");
        } else if (totalTickets > 5) {
            discount = 0.10; // Giảm giá 10% nếu người dùng đã mua trên 5 vé
            session.setAttribute("discountMessage", "Congratulations!");
            response.sendRedirect("home");
        } else {
            session.setAttribute("discountFailMessage", "Fail!");
            session.removeAttribute("event");
            response.sendRedirect("home");
        }


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
        processRequest(request, response);
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
