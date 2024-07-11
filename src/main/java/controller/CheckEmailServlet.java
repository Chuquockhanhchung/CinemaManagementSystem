package controller;

import com.google.gson.JsonObject;
import dal.CustomerDAO;
import dal.DBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;

import java.io.IOException;
import java.io.PrintWriter;

public class CheckEmailServlet extends HttpServlet {
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
        String email = request.getParameter("email");
        CustomerDAO dao = new CustomerDAO(DBContext.getConn());
        Customer customer = dao.getCustomerByEmail(email);
        HttpSession session = request.getSession();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        try {
            JsonObject json = new JsonObject();
            if (customer != null) {
                json.addProperty("exists", true);
                json.addProperty("fullName", customer.getName());
                json.addProperty("phoneNumber", customer.getPhone());
                json.addProperty("dob", customer.getDOB());
                session.setAttribute("customer", customer);
            } else {
                json.addProperty("exists", false);
            }

            out.print(json.toString());
        } catch (Exception var13) {
            response.setStatus(500);
            JsonObject errorJson = new JsonObject();
            errorJson.addProperty("exists", false);
            errorJson.addProperty("error", "An error occurred while processing your request.");
            out.print(errorJson.toString());
        } finally {
            out.flush();
        }

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
