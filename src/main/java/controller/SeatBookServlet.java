package controller;

import dal.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.Combo;
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
        try{

            String seatID = (String)session.getAttribute("seatID");
            String seatID2 = (String)session.getAttribute("seatC");
            if(session.getAttribute("Combos")!=null){
                ArrayList<Combo> combos = (ArrayList<Combo>)session.getAttribute("Combos");
                ComboDAO cdao = new ComboDAO(DBContext.getConn());
                for(Combo combo : combos){
                    Combo combonew = cdao.getComboByID(combo.getId());
                    combonew.setAmount(combonew.getAmount() + combo.getAmount());
                    cdao.chaneAmount(combonew);
                }
            }
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
                seat.setStatus("active");

                boolean seatHeld = d.holdTicket(seat);
                if (!seatHeld) {
                    allSeatsHeld = false;
                    break;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            list = dal.getSeatByRoom(dal.getRoomByShowtime(showtimeID).getRoomId());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        //Show combo list
        ComboDAO cd= new ComboDAO(DBContext.getConn());
        ArrayList<Combo> combos= cd.getCombo();
        session.setAttribute("time",showtimeID);
        session.setAttribute("listSeat", list);
        session.setAttribute("movie", movie);
        session.setAttribute("language", language);
        session.setAttribute("date",date);
        session.setAttribute("combos", combos);
        request.getRequestDispatcher("seat_booking.jsp").forward(request, response);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
