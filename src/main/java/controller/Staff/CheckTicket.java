package controller.Staff;

import dal.DBContext;
import dal.MovieDAO;
import dal.TicketDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Movie;
import model.Ticket;
import org.json.JSONObject;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class CheckTicket extends HttpServlet {
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
            out.println("<title>Servlet StaffServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StaffServlet at " + request.getContextPath () + "</h1>");
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
        String booking = request.getParameter("bookingID");
        TicketDAO td = new TicketDAO(DBContext.getConn());
        JSONObject jsonResponse = new JSONObject();
        jsonResponse.put("ticketExists", !td.searchTickets(booking).isEmpty());

        response.setContentType("application/json");
        response.getWriter().write(jsonResponse.toString());
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
        String booking = request.getParameter("bookingID");
        TicketDAO td = new TicketDAO(DBContext.getConn());
        List<Ticket> a = td.searchTickets(booking);
        HttpSession session = request.getSession();
        MovieDAO md = new MovieDAO(DBContext.getConn());

        session.setAttribute("tickets", a);
        session.setAttribute("time", a.get(0).getShowtimeID());
        session.setAttribute("cus", a.get(0).getCustomerID());
        Movie m = md.getMoviebyST(a.get(0).getShowtimeID());
        session.setAttribute("movie", m);
        response.sendRedirect("confirmation.jsp");
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
