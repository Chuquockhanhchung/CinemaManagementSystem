/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import dal.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Combo;
import model.Seat;
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
            HttpSession session = request.getSession();

            int customerID = Integer.parseInt(request.getParameter("idCustomer"));
            int showtimeID = Integer.parseInt(request.getParameter("showtimeID"));

            String seatID = request.getParameter("seatID");
            String seatID2 = (String) session.getAttribute("seatC");

            float ticketPrice = Float.parseFloat(request.getParameter("ticketPrice"));
            String status = request.getParameter("status");
            String BookingID = request.getParameter("BookingID");

            MovieDAO md = new MovieDAO(DBContext.getConn());
            int romID = md.getRoomIDbyST(showtimeID);

            // Chuyển đổi các ID ghế ngồi từ định dạng hiển thị sang ID ghế ngồi thực tế
            String seati = "";
            String[] selectedSeats = seatID2.split(",");
            for (int i = 0; i < selectedSeats.length; i++) {
                selectedSeats[i] = selectedSeats[i].substring(1); // Bỏ ký tự đầu tiên
                int seatInt = Integer.parseInt(selectedSeats[i]);
                int realID = (seatInt - 1) * 4 + romID;
                seati += realID + ",";
            }
            seati = seati.substring(0, seati.length() - 1); // Bỏ dấu phẩy cuối cùng
            TicketDAO d = new TicketDAO(DBContext.getConn());
            boolean allSeatsHeld = true;
            String[] seats = seati.split(",");
            ArrayList<Combo> combos = null;
            for (String seatIdStr : seats) {
                int seatId;
                try {
                    seatId = Integer.parseInt(seatIdStr); // Chuyển đổi định dạng ghế ngồi
                } catch (NumberFormatException e) {
                    // Handle invalid seat ID format
                    allSeatsHeld = false;
                    break;
                }
                Seat seat = new Seat();
                seat.setSeatID(seatId);
                seat.setStatus("unactive");
                combos = (ArrayList<Combo>) session.getAttribute("Combos");
                boolean seatHeld = d.holdTicket(seat);
                if (!seatHeld) {
                    allSeatsHeld = false;
                    break;
                }
            }

            String[] seatIDs = seatID.split(",");
            List<String> seatIDList = Arrays.asList(seatIDs);

            Ticket ticket = new Ticket();
            ticket.setCustomerID(customerID);
            ticket.setShowtimeID(showtimeID);
            ticket.setSeatIDs(seatIDList);
            ticket.setTicketPrice(ticketPrice);
            ticket.setBookingID(BookingID);
            ticket.setStatus(status);
            ticket.setComboId(combos);

            PaymentDAO dao = new PaymentDAO(DBContext.getConn());
            boolean f = dao.addTicket(ticket);
            for(Combo combo : combos) {
                d.addCombo(new Ticket(combo.getAmount(),combo.getId(),d.getIDnew()));
            }
            ComboDAO cdao = new ComboDAO(DBContext.getConn());
            for(Combo combo : combos) {
                Combo combonew = cdao.getComboByID(combo.getId());
                combonew.setAmount(combonew.getAmount() - combo.getAmount());
                cdao.chaneAmount(combonew);
            }


            if (f) {
                session.setAttribute("succMess", "Payment successful!");
                response.sendRedirect("confirmation_screen.jsp?CustomerID=" + customerID);
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
