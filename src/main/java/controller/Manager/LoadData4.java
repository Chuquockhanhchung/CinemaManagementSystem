package controller.Manager;

import dal.DBContext;
import dal.TicketDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class LoadData4 extends HttpServlet {
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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Get the current date
        LocalDate currentDate = LocalDate.now();

        // Initialize the TicketDAO object
        TicketDAO td = new TicketDAO(DBContext.getConn());

        // List to store weekly revenues
        List<Integer> weeklyData = new ArrayList<>();

        // Calculate the dates for the last 4 weeks
        for (int i = 3; i >= 0; i--) {
            LocalDate endOfWeek = currentDate.minusDays(currentDate.getDayOfWeek().getValue() - 1).minusWeeks(i);
            LocalDate startOfWeek = endOfWeek.minusDays(6);

            // Convert LocalDate to java.sql.Date
            Date startDate = Date.valueOf(startOfWeek);
            Date endDate = Date.valueOf(endOfWeek.plusDays(1)); // Include the last day

            // Call priceTicketbymonth with start of week and end of week
            int weeklyRevenue = td.priceTicketbymonth(startDate, endDate);
            weeklyData.add(weeklyRevenue);
        }

        // Convert the weeklyData list to JSON
        JSONObject json = new JSONObject();
        JSONArray dataArray = new JSONArray();
        for (int revenue : weeklyData) {
            dataArray.put(revenue);
        }
        json.put("data", dataArray);

        // Send the JSON response
        PrintWriter out = response.getWriter();
        out.print(json.toString());
        out.flush();
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
