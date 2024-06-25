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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

import dal.DBContext;
import dal.MovieDAO;
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
    public String changeSeat(String listSeat){
        String seatAfterChange="";
        String[] seats = listSeat.split(",");
        for(int i=0; i<seats.length; i++){
            seats[i] = seats[i].trim();
            int seatInt=0;
            if(seats[i].length()>2) {
                seatInt = Integer.parseInt(seats[i].split("")[1]) * 10 + Integer.parseInt(seats[i].split("")[2]);
            }else{
                seatInt = Integer.parseInt(seats[i].split("")[1]);
            }
            if(seatInt<=22){
                seatAfterChange+="D"+seatInt;
            }else if(seatInt>22 && seatInt<=44){
                int s = seatInt%22;
                seatAfterChange+="C"+((s==0)?22:s);
            }else if(seatInt>44 && seatInt<=66){
                int s = seatInt%22;
                seatAfterChange+="B"+((s==0)?22:s);
            }else if(seatInt==67){
                seatAfterChange+="B23";
            }else if(seatInt==90) {
                seatAfterChange+="A23";
            }else{
                    int s = seatInt%22-1;
                    seatAfterChange+="A"+((s==0)?22:s);
                }

            if(i<seats.length-1){
                seatAfterChange+=",";
            }
        }
        return seatAfterChange;
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int customerID = Integer.parseInt(request.getParameter("CustomerID"));

        try {
            String selectedSeatsParam = request.getParameter("selectedSeats");
            if (selectedSeatsParam == null || selectedSeatsParam.isEmpty()) {
                response.sendRedirect("error.jsp"); // Redirect to an error page if no seats are selected
                return;
            }
            String realSeat= changeSeat(selectedSeatsParam);
            MovieDAO md = new MovieDAO(DBContext.getConn());
            HttpSession session = request.getSession();
            ArrayList<ShowTime> lists = (ArrayList<ShowTime>) session.getAttribute("showtime");
            int showtimeid = (int) session.getAttribute("time");
            int romID = md.getRoomIDbyST(showtimeid);

            // Chuyển đổi các ID ghế ngồi từ định dạng hiển thị sang ID ghế ngồi thực tế
            String seati = "";
            String[] selectedSeats = selectedSeatsParam.split(",");
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
                seat.setStatus("hold");

                boolean seatHeld = d.holdTicket(seat);
                if (!seatHeld) {
                    allSeatsHeld = false;
                    break;
                }
            }

            if (allSeatsHeld) {
                // Lấy danh sách `ShowTime` và ID `ShowTime` từ session

                // Tạo đối tượng `Ticket` và lưu vào session
                Customer customer = (Customer) session.getAttribute("user");
                Movie movie = (Movie) session.getAttribute("movie");
                String time = d.getDateByShowtime((int) session.getAttribute("time"));
                Date date = new Date();
                Ticket ticket = new Ticket(
                        customer.getIdCustomer(),
                        customer.getName(),
                        time,
                        realSeat, // Sử dụng chuỗi ID ghế ngồi thực tế
                        "",
                        "",
                        (float) getPrice(seati, movie.getPrice()), // Assumes getPrice handles pricing
                        "Hold",
                        date.toString(),
                        "",
                        movie.getName(),
                        seati
                );
                session.setAttribute("seatC",selectedSeatsParam);
                session.setAttribute("ticket", ticket);
                session.setAttribute("seatID",realSeat);

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
