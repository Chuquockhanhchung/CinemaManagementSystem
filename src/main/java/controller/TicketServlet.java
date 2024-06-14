/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
<<<<<<< Updated upstream
=======
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.SQLException;
import java.util.Date;
>>>>>>> Stashed changes
import java.util.List;
import java.util.Scanner;

import dal.DBContext;
import dal.PaymentDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String customerID = request.getParameter("CustomerID");

        PaymentDAO dao = new PaymentDAO(DBContext.getConn());
<<<<<<< Updated upstream
        Ticket ticket = dao.getTicketByID(customerID);
=======
        TicketDAO ticketDAO = new TicketDAO(DBContext.getConn());
        Customer customer = (Customer) session.getAttribute("user");
        String time = null;
        try {
            time = ticketDAO.getDateByShowtime((int)session.getAttribute("time"));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        String Seater=changeSeat(seatID);
        String[] s2 = Seater.split(",");

        Ticket ticket = new Ticket(customer.getId(),
                customer.getName(),
                time,
                Seater,
                "",
                "",
                (float) getPrice(Seater,movie.getPrice()),
                date.toString(),
                "Hold",
                "",
                movie.getName(),
                ""
                );


>>>>>>> Stashed changes

        HttpSession session = request.getSession();
        session.setAttribute("ticket", ticket);

        response.sendRedirect("payment.jsp");
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
