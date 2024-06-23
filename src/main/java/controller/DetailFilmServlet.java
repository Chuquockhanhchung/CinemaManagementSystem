package controller;

import dal.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import model.Feedback;
import model.Movie;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

public class DetailFilmServlet extends HttpServlet {
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

    public void AddReplies(ArrayList<Feedback> a,Feedback e){
        MovieDAO dao = new MovieDAO(DBContext.getConn());
        if(a.size()>0){
            e.setRelpies(a);
            for(int i=0;i<a.size();i++){
                if(dao.getFBbyFBID(a.get(i).getFeedbackID())!=null){
                    AddReplies(dao.getFBbyFBID(a.get(i).getFeedbackID()),a.get(i));
                }
            }
        }else {
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        //Get infor of film
        MovieDAO dao = new MovieDAO(DBContext.getConn());
        TicketDAO tdao = new TicketDAO(DBContext.getConn());
        String language = null;
        try {
            language = tdao.getLanguageFilm(id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        float rating=  dao.getRatingById(id);
        String date = dao.getDateById(id);
        Movie movie = dao.getMovie(id);
        //Get Feedback of film
        ArrayList<Feedback> listf = dao.getFBbyID(id);
        for (Feedback f : listf) {
            ArrayList<Feedback> a = dao.getFBbyFBID(f.getFeedbackID());
            AddReplies(a,f);
        }
        HttpSession session = request.getSession();
        session.setAttribute("movie", movie);
        session.setAttribute("language", language);
        session.setAttribute("rating", rating);
        session.setAttribute("date", date);
        session.setAttribute("listf", listf);
       response.sendRedirect("movie_single_second.jsp");

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