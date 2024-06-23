package controller;

import dal.AdminDAO;
import dal.DBContext;
import dal.MovieDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.Customer;
import model.Feedback;
import model.Movie;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;

public class AddFeedbackServlet extends HttpServlet {
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
        int rating = Integer.parseInt(request.getParameter("rating"));
        String review = request.getParameter("review");
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("user");
        Movie movie = (Movie) session.getAttribute("movie");
        Date date= new Date(System.currentTimeMillis());
        Feedback feedback = new Feedback(movie.getId(),customer,review,Date.valueOf(date.toLocalDate()),rating,0);

        MovieDAO daom= new MovieDAO(DBContext.getConn());
        daom.insert_Feedback(feedback);
        ArrayList<Feedback> listf = daom.getFBbyID(movie.getId());
        session.setAttribute("listf", listf);
        response.sendRedirect("movie_single_second.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int rating;
        if(request.getParameter("review") == null) {
             rating = 0;
        }else {
             rating = Integer.parseInt(request.getParameter("rating"));
        }
        String review = request.getParameter("review");
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("customer");
        Movie movie = (Movie) session.getAttribute("movie");
        Date date= new Date(System.currentTimeMillis());
        Feedback feedback = new Feedback(movie.getId(),customer,review,Date.valueOf(date.toLocalDate()),rating,0);

        MovieDAO daom= new MovieDAO(DBContext.getConn());
        daom.insert_Feedback(feedback);
        ArrayList<Feedback> listf = daom.getFBbyID(movie.getId());
        for (Feedback f : listf) {
            ArrayList<Feedback> a = daom.getFBbyFBID(f.getFeedbackID());
            f.setRelpies(a);
        }
        session.setAttribute("listf", listf);

        response.sendRedirect("movie_single_second.jsp");
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
