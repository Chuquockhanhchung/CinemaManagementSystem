package controller.Customer;

import dal.CustomerDAO;
import dal.DBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;

import java.io.*;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.Part;

import java.io.IOException;

import static java.lang.Integer.parseInt;

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
        request.getRequestDispatcher("user_information.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        try {

            String username = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String dob = request.getParameter("dob");

            Part part = request.getPart("profile-pic");
            String picture = part.getSubmittedFileName();
            String picturePath = "";
            // Retrieve file part
            if (picture != null && !picture.isEmpty()) {
                // Retrieve file part
                String path = getServletContext().getRealPath("") + "images" + File.separator + "content" + File.separator + "about";
                File file = new File(path);
                if (!file.exists()) {
                    file.mkdirs();
                }
                part.write(path + File.separator + picture);
                picturePath = "images/content/about/" + picture;
            } else {
                // Retain the existing picture
                picturePath = ((Customer) request.getSession().getAttribute("user")).getPicture();
            }
            // Update the user's profile with the new data
            CustomerDAO dao = new CustomerDAO(DBContext.getConn());
            HttpSession session = request.getSession();
            Customer c = (Customer) session.getAttribute("user");

            // Update session with new user data
            Customer customer = new Customer();
            customer.setName(username);
            customer.setEmail(email);
            customer.setPhone(phone);
            customer.setGender(gender);
            customer.setAddress(address);
            customer.setDOB(dob);
            customer.setPicture(picturePath);
            customer.setIdCustomer(c.getIdCustomer());

            boolean success = dao.EditCustomer(customer);
            if (success) {
                session.setAttribute("succMess", "Thay đổi thông tin thành công");
                response.sendRedirect("user_information.jsp" + "?CustomerID=" + c.getIdCustomer());
            } else {
                session.setAttribute("failMess", "Update Failed");
                response.sendRedirect("user_information.jsp" + "?CustomerID=" + c.getIdCustomer());
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("failMess", e.getMessage());
            response.sendRedirect("user_information.jsp");
        }
    }
        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo () {
            return "Short description";
        }// </editor-fold>
    }
