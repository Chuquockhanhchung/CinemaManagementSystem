package controller;

import Email.Email;
import dal.CustomerDAO;
import dal.DBContext;
import dal.MovieDAO;
import jakarta.mail.MessagingException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import model.Movie;
import model.ShowTime;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class BookingMovieServlet2 extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            out.println("<title>Servlet BookingMovieServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingMovieServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        CustomerDAO dao = new CustomerDAO(DBContext.getConn());
        String idAccount = Math.random() + "";
        PrintWriter out = response.getWriter();
        out.print(idAccount);
        Customer account = new Customer(idAccount, "111111", 1, "", "");
        dao.insertAccount(account);
        Customer customer = new Customer(0, idAccount, name, email, phone, "", dob);
        dao.insertCustomer(customer);
        Email mail = new Email();
        try {
            mail.sendEmail2(email,idAccount);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        try {
            MovieDAO daom = new MovieDAO(DBContext.getConn());
            int movieId = Integer.parseInt(request.getParameter("id"));
            Movie movie = daom.getMovie(movieId);
            ArrayList<Movie> movietype = daom.getMovieType(movieId);
            ArrayList<ShowTime> list1 = daom.getShowTime(movieId);
            ArrayList<ShowTime> list2 = daom.getTime(movieId);
            HttpSession session = request.getSession();
            session.setAttribute("movietype", movietype);
            session.setAttribute("movie", movie);
            session.setAttribute("showtime", list1);
            session.setAttribute("time", list2);
            response.sendRedirect("staff/movie_booking.jsp");

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        CustomerDAO dao = new CustomerDAO(DBContext.getConn());
        String idAccount = Math.random() + "";
        PrintWriter out = response.getWriter();
        out.print(idAccount);
        Customer account = new Customer(idAccount, "111111", 1, "", "");
        dao.insertAccount(account);
        Customer customer = new Customer(0, idAccount, name, email, phone, "", dob);
        dao.insertCustomer(customer);
        Email mail = new Email();
        try {
            mail.sendEmail2(email,idAccount);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        try {
            MovieDAO daom = new MovieDAO(DBContext.getConn());
            int movieId = Integer.parseInt(request.getParameter("id"));
            Movie movie = daom.getMovie(movieId);
            ArrayList<Movie> movietype = daom.getMovieType(movieId);
            ArrayList<ShowTime> list1 = daom.getShowTime(movieId);
            ArrayList<ShowTime> list2 = daom.getTime(movieId);
            HttpSession session = request.getSession();
            session.setAttribute("movietype", movietype);
            session.setAttribute("movie", movie);
            session.setAttribute("showtime", list1);
            session.setAttribute("time", list2);
            response.sendRedirect("staff/movie_booking.jsp");

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
