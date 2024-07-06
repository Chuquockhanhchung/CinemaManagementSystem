/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DBContext;
import dal.MovieDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author Chi
 */
public class editMovieServlet extends HttpServlet {

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
            out.println("<title>Servlet editMovieServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editMovieServlet at " + request.getContextPath() + "</h1>");
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
            int movieid = Integer.parseInt(request.getParameter("id"));
            MovieDAO dao = new MovieDAO(DBContext.getConn());
            ArrayList<MovieType> types = dao.getAllMovieType();
            ArrayList<Language> languages = dao.getAllLanguage();
            ArrayList<MovieType> typecheck = dao.getTypeCheck(movieid);
            Movie movie = dao.getMoviebyID(movieid);
            ArrayList<Actor> a = dao.getActorCheck(movieid);

            HttpSession session = request.getSession();
            session.setAttribute("typecheck", typecheck);
            session.setAttribute("type", types);
            session.setAttribute("movieT", movie);
            session.setAttribute("lan", languages);
            session.setAttribute("mactor",a);
            request.getRequestDispatcher("manager/CMS/edit_movie.jsp").forward(request, response);

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
            int idm = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String[] type = request.getParameterValues("type");
            String des = request.getParameter("des");
            String dir = request.getParameter("dir");
            String[] actor = request.getParameterValues("act");
            String[] imagedv = request.getParameterValues("im");
            String date = request.getParameter("date");
            int time = Integer.parseInt(request.getParameter("time"));
            int lan = Integer.parseInt(request.getParameter("language"));
            String img = request.getParameter("img");
            String status = request.getParameter("status");
            String trailer = request.getParameter("trailer");
            int price = Integer.parseInt(request.getParameter("price"));
            MovieDAO dao = new MovieDAO(DBContext.getConn());
            ArrayList<Actor> lista = new ArrayList<>();
            for(int i = 0; i< actor.length; i++){
                lista.add(new Actor(1, actor[i],imagedv[i]));
            }
            Movie m = new Movie(idm, name, des, "", img, "", date, status, time, price, dir, lan,trailer);
            if (name.trim() == "" || des.trim() == "" || dir.trim() == "" || date.trim() == "" || request.getParameter("time").trim() == "" || request.getParameter("language").trim() == "" || img.trim() == "" || status.trim() == "" || request.getParameter("price").trim() == "") {
                request.setAttribute("err", "Vui lòng điền  đầy đủ thông tin!");
                request.getRequestDispatcher("manager/CMS/edit_movie.jsp").forward(request, response);
            } else {
                if (type.length == 0||trailer.trim()==""||actor.length == 0|| imagedv.length == 0) {
                    request.setAttribute("err", "Vui lòng điền  đầy đủ thông tin!");
                    request.getRequestDispatcher("manager/CMS/edit_movie.jsp").forward(request, response);
                } else {
                    dao.UpdateMovie(m);
                    dao.UpdateActor(idm);
                    dao.UpdateType(idm);


                    int[] id = new int[lista.size()];
                    int i = -1;
                    for (Actor a: lista) {
                        if(a.getName().trim()!=""&& a.getPicture().trim() !="" ){
                            i++;
                            dao.AddActor(a);
                            id[i] = dao.getIdActor();

                        }
                    }
                    int movieID = dao.getIDMovie();
                    for (String t : type) {
                        dao.AddHasType(movieID, Integer.parseInt(t));
                    }
                    for (int a : id) {
                        dao.AddHasActor(movieID, a);
                    }
                    response.sendRedirect("manageMovie");

                }

            }
        } catch (NumberFormatException e) {
            request.setAttribute("err", "Gía phim và thời lượng phim là số nguyên dương!");
            request.getRequestDispatcher("manager/CMS/edit_movie.jsp").forward(request, response);
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
