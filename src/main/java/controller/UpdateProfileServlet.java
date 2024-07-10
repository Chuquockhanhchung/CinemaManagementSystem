package controller;

import dal.AdminDAO;
import dal.CustomerDAO;
import dal.DBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.Customer;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;

@MultipartConfig
public class UpdateProfileServlet extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
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
            out.println("<h1>Servlet AdminServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


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
        HttpSession session = request.getSession();
        Customer c = (Customer) session.getAttribute("user");
        request.setAttribute("customer", c);
        request.getRequestDispatcher("Account.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

      try{
          // Retrieve form data
          String username = request.getParameter("name");
          String email = request.getParameter("email");
          String phone = request.getParameter("phone");
          String DOB = request.getParameter("DOB");
          Part part = request.getPart("profile-pic");
          String picture = part.getSubmittedFileName();
          // Check if any part is missing
          if (username == null || email == null || phone == null) {
              response.getWriter().println("Missing form parameters.");
              return;
          }

          // Log the parameters to verify they are being retrieved correctly
          System.out.println("Username: " + username);
          System.out.println("Email: " + email);
          System.out.println("Phone: " + phone);

          // Retrieve file part
          String path = getServletContext().getRealPath("")+ "images" + File.separator + "content" + File.separator + "about";
          File file = new File(path);
          part.write(path + File.separator +  picture);
          // Update the user's profile with the new data
          CustomerDAO dao = new CustomerDAO(DBContext.getConn());
          HttpSession session = request.getSession();
          Customer c = (Customer) session.getAttribute("user");

          dao.EditCustomer(username, email, phone, "images" + "/" + "content" + "/" + "about"+ "/" + picture, c.getIdCustomer());

          // Update session with new user data
          c.setName(username);
          c.setEmail(email);
          c.setPhone(phone);
          c.setPicture(picture);
          c.setDOB(DOB);
          response.sendRedirect("home");
          e.printStackTrace();
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
