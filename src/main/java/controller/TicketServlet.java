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
import model.Customer;
import model.Movie;
import model.ShowTime;
import model.Ticket;
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
        String content = request.getParameter("content");
        String price = request.getParameter("price");

        String urlString = "https://script.google.com/macros/s/AKfycbxVVi9V7W28MhMyCgYECnPssLc_qQgrkkyjY6LrsWO5o8d6ZUoeq3UgB5CqxXAaSpce/exec";
        URL url = new URL(urlString);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.connect();

        // Getting the response code
        int responsecode = conn.getResponseCode();

        if (responsecode != 200) {
            throw new RuntimeException("HttpResponseCode: " + responsecode);
        } else {
            StringBuilder inline = new StringBuilder();
            Scanner scanner = new Scanner(url.openStream());

            while (scanner.hasNext()) {
                inline.append(scanner.nextLine());
            }
            scanner.close();

            JSONObject jsonObject = new JSONObject(inline.toString());
            // Assume the lastPaid data is at the last element of the array.
            JSONObject lastPaid = jsonObject.getJSONArray("data").getJSONObject(jsonObject.getJSONArray("data").length() - 1);

            String lastContent = lastPaid.getString("Mô tả");
            int lastPrice = lastPaid.getInt("Giá trị");

            boolean isPaid = lastContent.contains(content) && lastPrice >= Integer.parseInt(price);

            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            JSONObject result = new JSONObject();
            result.put("isPaid", isPaid);
            out.print(result);
            out.flush();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
