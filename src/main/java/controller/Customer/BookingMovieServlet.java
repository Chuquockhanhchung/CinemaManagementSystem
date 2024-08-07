/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Customer;

import dal.CustomerDAO;
import dal.DBContext;
import dal.MovieDAO;
import model.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author Chi
 */
public class BookingMovieServlet extends HttpServlet {

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
        try {
            MovieDAO dao = new MovieDAO(DBContext.getConn());
            int movieId = Integer.parseInt(request.getParameter("id"));
            Movie movie = dao.getMovie(movieId);
            ArrayList<Movie> movietype = dao.getMovieType(movieId);
            ArrayList<ShowTime> list1 = dao.getShowTime(movieId);
            ArrayList<ShowTime> list2 = dao.getTime(movieId);
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
        try {
           String name = request.getParameter("fullName");
           String phoneNumber = request.getParameter("phoneNumber");
           String dob = request.getParameter("dob");

            Customer cus = new Customer();
            cus.setName(name);
            cus.setPhone(phoneNumber);
            cus.setDOB(dob);

            HttpSession session = request.getSession();

            CustomerDAO dao = new CustomerDAO(DBContext.getConn());
            boolean f = dao.insertCustomerOffline(cus);

            if (f) {
                session.setAttribute("message", "Đặt vé thành công");
                response.sendRedirect("staff/index.jsp");
            }

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
