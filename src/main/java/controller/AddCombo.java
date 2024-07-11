/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.*;
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
public class AddCombo extends HttpServlet {

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
            out.println("<title>Servlet AddMovieServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddMovieServlet at " + request.getContextPath() + "</h1>");
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
            ProductDAO dao = new ProductDAO(DBContext.getConn());
            ArrayList<Product> list =dao.getAllProduct();
            HttpSession session = request.getSession();
            session.setAttribute("product", list);
            request.getRequestDispatcher("manager/CMS/add_combo.jsp").forward(request, response);

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
            String name = request.getParameter("name");
            String[] type = request.getParameterValues("product");
            String des = request.getParameter("des");
            String img = request.getParameter("img");
            float price = Float.parseFloat(request.getParameter("price"));
            ComboDAO dao = new ComboDAO(DBContext.getConn());
            Combo c = new Combo(1,name,des,price,img,100);
            request.setAttribute("p",type);
            request.setAttribute("combo", c);
            if(name.trim() == "" || des.trim() == ""  || img.trim() == "" ||  request.getParameter("price").trim() == ""){
                request.setAttribute("err", "Vui lòng nhập đầy đủ thông tin!");
                request.getRequestDispatcher("manager/CMS/add_combo.jsp").forward(request, response);
            } else {
                if(type.length == 0 ){
                    request.setAttribute("err", "Vui lòng nhập đầy đủ thông tin!");
                    request.getRequestDispatcher("manager/CMS/add_combo.jsp").forward(request, response);
                } else {
                    dao.addCombo(c);
                    int idcombo = dao.getComboIDmax();
                    for (String t : type) {
                        dao.addCombohasProduct(idcombo,Integer.parseInt(t));
                    }

                    response.sendRedirect("combo");
                }
            }





        } catch (NumberFormatException e) {
            request.setAttribute("err", "Gía combo phải lớn ơn 0!");
            request.getRequestDispatcher("manager/CMS/add_combo.jsp").forward(request, response);
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
