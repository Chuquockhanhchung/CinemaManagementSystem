/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;

import dal.DBContext;
import dal.PaymentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Ticket;

public class PaymentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PaymentServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaymentServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            int customerID = Integer.parseInt(request.getParameter("idCustomer"));
            int showtimeID = Integer.parseInt(request.getParameter("showtimeID"));
            String seatID = request.getParameter("seatID");
            float ticketPrice = Float.parseFloat(request.getParameter("ticketPrice"));
            String status = request.getParameter("status");

            HttpSession session = request.getSession();
            Ticket ticket = new Ticket();
            ticket.setCustomerID(customerID);
            ticket.setShowtimeID(showtimeID);
            ticket.setSeatID(seatID);
            ticket.setTicketPrice(ticketPrice);
            ticket.setStatus(status);

            PaymentDAO dao = new PaymentDAO(DBContext.getConn());
            boolean f = dao.addTicket(ticket);

            if (f) {
                session.setAttribute("succMess", "Payment successful!");
                response.sendRedirect("confirmation_screen.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
