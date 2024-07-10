package controller;

import Email.Email;
import dal.AdminDAO;
import dal.CustomerDAO;
import dal.DBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;
import model.Customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AdAccountServlet extends HttpServlet {
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
            out.println("<h1>Servlet AdminServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AdminDAO daoa = new AdminDAO(DBContext.getConn());
        try {

            CustomerDAO dao = new CustomerDAO(DBContext.getConn());
            ArrayList<Customer> list = dao.getInfor_Customer();
            String email = request.getParameter("email");
            String date = request.getParameter("date");
            String pass = request.getParameter("pass");
            String DOB = request.getParameter("DOB");


            String idAccount = Math.random() + "";
            PrintWriter out = response.getWriter();
            out.print(idAccount);
            Customer account = new Customer(idAccount, pass, 3, date, "active");
            dao.insertAccount(account);
            Customer customer = new Customer(0, idAccount, "", email, "", "", DOB);
            dao.insertCustomer(customer);
            Email a = new Email();
            a.sendEmail(email);
            ArrayList<Account> lista = daoa.getall_Account();
            request.setAttribute("listAcc", lista);
            request.setAttribute("numberAcc", lista.size());
            request.getRequestDispatcher("/admin/dashboard/customers.jsp").forward(request, response);

        } catch (Exception e) {
            System.out.println(e);
            request.setAttribute("err", "An error occurred: " + e.getMessage());
            ArrayList<Account> lista = daoa.getall_Account();
            request.setAttribute("listAcc", lista);
            request.setAttribute("numberAcc", lista.size());
            request.getRequestDispatcher("/admin/dashboard/customers.jsp").forward(request, response);
        }

    }

    public boolean valiEmail(String email) {
        if (email == null) {
            return false;
        }
        String emailRegex = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$";
        Pattern emailPat = Pattern.compile(emailRegex, Pattern.CASE_INSENSITIVE);
        Matcher matcher = emailPat.matcher(email);
        return matcher.find();
    }

    public boolean ValPhone(String phone) {
        if (phone == null) {
            return false;
        }
        return phone.charAt(0) == '0' && phone.length() == 10 && phone.matches("[0-9]+");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
