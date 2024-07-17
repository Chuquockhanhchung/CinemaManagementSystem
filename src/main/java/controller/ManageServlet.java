/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;

import dal.DBContext;
import dal.EventDAO;
import dal.TicketDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * @author Chi
 */
public class ManageServlet extends HttpServlet {

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
            out.println("<title>Servlet ManageServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManageServlet at " + request.getContextPath() + "</h1>");
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
    public static int getLastDayOfMonth(int month, int year) {
        Calendar calendar = Calendar.getInstance();
        // Đặt ngày ở ngày 1 của tháng và năm được chỉ định
        calendar.set(year, month - 1, 1);
        // Lấy số ngày cuối cùng của tháng
        return calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String year = request.getParameter("year");
        LocalDate d1 = LocalDate.now();
        if(year==null || year.equals("")){
            year= String.valueOf(d1.getYear());
        }
        int[] data = { 0, 0, 100, 300, 0, 400, 200, 0, 100, 0, 200, 300 };
        int[] data2 = { 0, 0, 100, 300, 0, 400, 200, 0, 100, 0, 200, 300 };
// Khởi tạo đối tượng td để gọi phương thức countTicketbymonth
        TicketDAO td = new TicketDAO(DBContext.getConn()); // Thay TicketData bằng tên lớp chứa hàm countTicketbymonth của bạn

// Ngày bắt đầu và ngày kết thúc (ví dụ: năm 2023)
        // Ngày bắt đầu và ngày kết thúc (ví dụ: năm 2023)
        Date startDate = Date.valueOf(year+"-01-01");
        Date endDate = Date.valueOf(year+"-12-31");

// Lặp qua từng tháng trong năm
        for (int month = 0; month < 12; month++) {
            // Tính ngày đầu tháng và ngày cuối tháng
            Date monthStartDate = Date.valueOf(year+"-" + String.format("%02d", month + 1) + "-01");
            int lastDayOfMonth = getLastDayOfMonth(month + 1, 2024); // Lấy số ngày cuối cùng của tháng
            Date monthEndDate = Date.valueOf(year+"-" + String.format("%02d", month + 1) + "-" + lastDayOfMonth);

            // Gọi hàm countTicketbymonth và cập nhật giá trị vào mảng data
            data[month] = td.countTicketbymonth(monthStartDate, monthEndDate);
            data2[month] = td.priceTicketbymonth(monthStartDate,monthEndDate);
        }
        int change = 0;
        int fist=0;
        for(int i=0;i<data.length;i++) {
            if(data[i]>0){
                
                if(i==0||data[i-1]==0){fist=data[i];}
                change=data[i]-fist;
            }
        }
        int change2 = 0;
        int fist2=0;
        for(int i=0;i<data2.length;i++) {
            if(data2[i]>0){
                if(i==0||data2[i-1]==0){fist2=data2[i];}
                change2=data2[i]-fist2;
            }
        }
        //Count number of ticket today
        int tickettoday = td.countTicketbymonth(Date.valueOf(LocalDate.now()), Date.valueOf(LocalDate.now().plusDays(1)));
        int tickettoday2= td.countTicketbymonth2(Date.valueOf(LocalDate.now()), Date.valueOf(LocalDate.now().plusDays(1)))*90;
        double perform=0;
        if (tickettoday2!=0){
            perform = tickettoday*100/tickettoday2;
        }
        int[] years= td.getYear();



        int perf=(int)perform;
        //Get number of event
        EventDAO ed= new EventDAO(DBContext.getConn());
        Date d = Date.valueOf(LocalDate.now());
        Date d2 = Date.valueOf(LocalDate.now().plusDays(1));
        Date d3 = Date.valueOf(LocalDate.now().withDayOfMonth(1));
        int events= ed.countevented(d,d2);
        int event2= ed.countevented(d3,d2);

        HttpSession session = request.getSession();
        session.setAttribute("change1", change);
        session.setAttribute("change2", change2/1000);
        session.setAttribute("events", events);
        session.setAttribute("event2", event2);
        session.setAttribute("tickettoday", tickettoday);
        session.setAttribute("tickettoday2", tickettoday2);
        session.setAttribute("perf", perf);
        session.setAttribute("years", years);
        session.setAttribute("year2", year);
        request.getRequestDispatcher("manager/index.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
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
