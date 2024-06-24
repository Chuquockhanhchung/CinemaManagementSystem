package controller;

import dal.AdminDAO;
import dal.DBContext;
import dal.TicketDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.Movie;
import model.Seat;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SeatBookServlet extends HttpServlet {
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
            out.println("<title>Servlet AdminServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminServlet at " + request.getContextPath () + "</h1>");
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
        int showtimeID =Integer.parseInt(request.getParameter("showtimeId")) ;
        TicketDAO dal = new TicketDAO(DBContext.getConn());
        List<Seat> list = null;
        try {
            list = dal.getSeatByRoom(dal.getRoomByShowtime(showtimeID).getRoomId());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        Movie movie = null;
        try {
            movie = dal.getMovieByShowTime(showtimeID);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        String language = null;
        try {
            language = dal.getLanguageFilm(movie.getId());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        String date=null;
        try {
             date = dal.getDateByShowtime(showtimeID);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        HttpSession session = request.getSession();
        session.setAttribute("time",showtimeID);
        session.setAttribute("listSeat", list);
        session.setAttribute("movie", movie);
        session.setAttribute("language", language);
        session.setAttribute("date",date);
        request.getRequestDispatcher("seat_booking.jsp").forward(request, response);

    }


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
