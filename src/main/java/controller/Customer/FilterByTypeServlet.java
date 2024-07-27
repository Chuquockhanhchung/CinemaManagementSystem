package controller.Customer;

import dal.AdminDAO;
import dal.CustomerDAO;
import dal.DBContext;
import dal.MovieDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.Customer;
import model.Movie;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class FilterByTypeServlet extends HttpServlet {
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
        String name = request.getParameter("name");
        AdminDAO dao = new AdminDAO(DBContext.getConn());
        CustomerDAO daoc = new CustomerDAO(DBContext.getConn());
        MovieDAO md = new MovieDAO(DBContext.getConn());
        ArrayList<Customer> listC= daoc.getInfor_Customer();
        ArrayList<Account> list = dao.getall_Account();
        ArrayList<Movie> sapchieu = md.SearchMovie("2", name);
        for(Movie m : sapchieu){
            m.setRate(md.GetRateByID(m.getId()));

        }
        ArrayList<Movie> dangchieu = md.SearchMovie("1", name);
        for(Movie m : dangchieu){
            m.setRate(md.GetRateByID(m.getId()));
        }
        ArrayList<Movie> phimhaynhat = md.film();

        HttpSession session = request.getSession();
        ArrayList<String> type = md.getMovieType();
        session.setAttribute("type", type);
        request.setAttribute("sapchieu", sapchieu);
        request.setAttribute("dangchieu", dangchieu);
        request.setAttribute("phimhaynhat", phimhaynhat);
        request.setAttribute("listAcc", list);
        request.setAttribute("listCus", listC);
        request.setAttribute("numberAcc",list.size());
        request.getRequestDispatcher("index.jsp").forward(request, response);
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