package controller.Customer;

import dal.DBContext;
import dal.MovieDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Movie;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class SearchMovie extends HttpServlet {
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

        String title = request.getParameter("title");
        String status = request.getParameter("status");
        String date = request.getParameter("date");
        String[] dates = date.split("/");
        date="";
        date = dates[2] + "-" + dates[0] + "-" + dates[1];

        MovieDAO movieDAO = new MovieDAO(DBContext.getConn());
        ArrayList<Movie> movies= movieDAO.filter(title, status, date);
        HttpSession session = request.getSession();
        session.setAttribute("movies", movies);
        response.sendRedirect("http://localhost:9999/CinemaManageSystem_war_exploded/manager/CMS/movies.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
        String status = request.getParameter("status");
        String date = request.getParameter("date");
        MovieDAO movieDAO = new MovieDAO(DBContext.getConn());
        ArrayList<Movie> movies= movieDAO.filter(title, status, date);
        HttpSession session = request.getSession();
        session.setAttribute("movies", movies);
        response.sendRedirect("http://localhost:9999/CinemaManageSystem_war_exploded/manager/CMS/movies.jsp");
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
