/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

import dal.DBContext;
import dal.PaymentDAO;
import dal.TicketDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.*;
import org.json.JSONObject;

public class TicketServlet extends HttpServlet {

    public TicketServlet() {
        super();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TicketServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TicketServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    public double getPrice(String seat, int price) {

        String[] seats = seat.split(",");
        double priceAll = 0;
        for (int i = 0; i < seats.length; i++) {
            if(seats[i].contains("D")) {
                priceAll += price*1.5 ;
            }else{
                priceAll += price ;
            }
        }
        return priceAll;
    }
    public String changeSeat(String listSeat) {
        StringBuilder seatAfterChange = new StringBuilder();
        String[] seats = listSeat.split(",");

        for (int i = 0; i < seats.length; i++) {
            seats[i] = seats[i].trim();
            if (seats[i].length() > 1) {
                String numericPart = seats[i].replaceAll("[^0-9]", ""); // Extract numeric part from the seat ID
                try {
                    int seatInt = Integer.parseInt(numericPart);

                    if (seatInt <= 22) {
                        seatAfterChange.append("D").append(seatInt);
                    } else if (seatInt > 22 && seatInt <= 44) {
                        int s = seatInt % 22;
                        seatAfterChange.append("C").append((s == 0) ? 22 : s);
                    } else if (seatInt > 44 && seatInt <= 66) {
                        int s = seatInt % 22;
                        seatAfterChange.append("B").append((s == 0) ? 22 : s);
                    } else if (seatInt == 67) {
                        seatAfterChange.append("B23");
                    } else {
                        int s = seatInt % 22 - 1;
                        seatAfterChange.append("A").append((s == 0) ? 22 : s);
                    }

                    if (i < seats.length - 1) {
                        seatAfterChange.append(",");
                    }
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                    // Handle invalid format by skipping this seat
                    continue;
                }
            }
        }
        return seatAfterChange.toString();
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int customerID = Integer.parseInt(request.getParameter("CustomerID"));
        String seatID = request.getParameter("selectedSeats");

        Date date =new Date();
        HttpSession session = request.getSession();
        Movie movie = (Movie) session.getAttribute("movie");
        PaymentDAO dao = new PaymentDAO(DBContext.getConn());
        TicketDAO ticketDAO = new TicketDAO(DBContext.getConn());
        Customer customer = dao.getCustomerByID(customerID);
        String time = null;
        try {
            time = ticketDAO.getDateByShowtime((int)session.getAttribute("time"));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        String Seater=changeSeat(seatID);
        String[] s2 = Seater.split(",");

        Ticket ticket = new Ticket(customer.getIdCustomer(),
                customer.getName(),
                time,
                Seater,
                "",
                "",
                (float) getPrice(Seater,movie.getPrice()),
                "Hold",
                date.toString(),

                "",
                movie.getName(),
                ""
                );

        session.setAttribute("ticket", ticket);

        response.sendRedirect("payment.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String selectedSeatsParam = request.getParameter("selectedSeats");
            if (selectedSeatsParam == null || selectedSeatsParam.isEmpty()) {
                response.sendRedirect("error.jsp"); // Redirect to an error page if no seats are selected
                return;
            }

            String[] selectedSeats = selectedSeatsParam.split(",");
            HttpSession session = request.getSession();
            TicketDAO d = new TicketDAO(DBContext.getConn());
            boolean allSeatsHeld = true;

            for (String seatIdStr : selectedSeats) {
                int seatId;
                try {
                    seatId = Integer.parseInt(seatIdStr);
                } catch (NumberFormatException e) {
                    // Handle invalid seat ID format
                    allSeatsHeld = false;
                    break;
                }
                Seat seat = new Seat();
                seat.setSeatID(seatId);
                seat.setStatus("unactive");

                boolean seatHeld = d.holdTicket(seat);
                if (!seatHeld) {
                    allSeatsHeld = false;
                    break;
                }
            }

            if (allSeatsHeld) {
                // Create the ticket object and set it in the session
                Customer customer = (Customer) session.getAttribute("user");
                Movie movie = (Movie) session.getAttribute("movie");
                String time = null;
                TicketDAO ticketDAO = new TicketDAO(DBContext.getConn());
                try {
                    time = ticketDAO.getDateByShowtime((int)session.getAttribute("time"));
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                Date date = new Date();
                String Seater = changeSeat(selectedSeatsParam); // Assumes changeSeat handles seat conversion
                Ticket ticket = new Ticket(
                        customer.getIdCustomer(),
                        customer.getName(),
                        time,
                        Seater,
                        "",
                        "",
                        (float) getPrice(Seater, movie.getPrice()), // Assumes getPrice handles pricing
                        "Hold",
                        date.toString(),
                        "",
                        movie.getName(),
                        ""
                );

                session.setAttribute("ticket", ticket);

                response.sendRedirect("payment.jsp");
            } else {
                response.sendRedirect("error.jsp"); // Redirect to an error page if any seat update fails
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to an error page on exception
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
