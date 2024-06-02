/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import Email.Email;
import model.*;
import dal.*;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 * @author My Computer
 */
public class signup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
            out.println("<title>Servlet signup</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet signup at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            CustomerDAO dao = new CustomerDAO(DBContext.getConn());
            ArrayList<Customer> list = dao.getInfor_Customer();
            String email = request.getParameter("email");
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String pass1 = request.getParameter("pass1");
            String pass2 = request.getParameter("pass2");
            if (email == null || name == null || phone == null || pass1 == null || pass2 == null
                    || email.isEmpty() || name.isEmpty() || phone.isEmpty() || pass1.isEmpty() || pass2.isEmpty()) {
                request.setAttribute("err", "Input is missing!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                return;
            }

            boolean checkphone = false;
            for (Customer kh : list) {
                if (kh.getPhone().compareTo(phone) == 0) {
                    checkphone = true;
                    break;
                }
            }
            if (!ValPhone(phone)) {
                request.setAttribute("err", "Phone number is invalid");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                return;
            }
            if (checkphone) {
                request.setAttribute("err", "Phone number is exist!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                return;
            }

            boolean checkemail = false;
            for (Customer kh : list) {
                if (kh.getEmail().compareTo(email) == 0) {
                    checkemail = true;
                    break;
                }
            }
            if (!valiEmail(email)) {
                request.setAttribute("err", "Email is invalid!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                return;
            }
            if (checkemail) {
                request.setAttribute("err", "Email is exist!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                return;
            }

            if (!pass1.equals(pass2)) {
                request.setAttribute("err", "Password don't match!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                return;
            }

            String idAccount = Math.random() + "";
            PrintWriter out = response.getWriter();
            out.print(idAccount);
            Customer account = new Customer(idAccount, pass1, 1, "", "");
            dao.insertAccount(account);
            Customer customer = new Customer(0, idAccount, name, email, phone, "");
            dao.insertCustomer(customer);
            Email mail = new Email();
            mail.sendEmail2(email, idAccount);
            response.sendRedirect("index.jsp?success=true");

        } catch (Exception e) {
            System.out.println(e);
            request.setAttribute("err", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("index.jsp").forward(request, response);
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
