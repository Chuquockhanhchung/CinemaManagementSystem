
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dal.*;
import model.*;
import java.util.ArrayList;
import Utill.*;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpSession;

public class servlet_Login extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public servlet_Login() {
        super();
    }


  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servlet_Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servlet_Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie arr[] = request.getCookies();
        for(Cookie o: arr){
            if(o.getName().equals("em")){
                request.setAttribute("email", o.getValue());
            }
            if(o.getName().equals("pa")){
                request.setAttribute("pass", o.getValue());
            }
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            CustomerDAO dao = new CustomerDAO(DBContext.getConn());
            ArrayList<Customer> list = dao.getInfor_Customer();
            Customer c = null;
            for (Customer cu : list) {
                if ((email != null && cu.getEmail().equals(email)) || (email != null && cu.getPhone().equals(email))) {
                    c = cu;
                    break;
                }
            }
            if (c != null) {

                if (c.getPass().compareTo(pass) == 0) {
                    Cookie em = new Cookie("em", c.getEmail());
                    Cookie pa = new Cookie("pa", c.getPass());
                    em.setMaxAge(60 * 60 * 24 * 7);
                    pa.setMaxAge(60 * 60 * 24 * 7);
                    response.addCookie(em);
                    response.addCookie(pa);

                    // Session
                    HttpSession session = request.getSession();
                    session.setAttribute("user", c);

                    if (c.getRole() == 1) {
                        response.sendRedirect("home");
                    } else if(c.getRole()==3){
                        response.sendRedirect("staff/index.jsp");
                    }else if(c.getRole()==4){
                        response.sendRedirect("managemovie");
                    }else {
                        response.sendRedirect("admin");
                    }

                } else {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
