package controller;

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
import java.util.Calendar;

public class LoadData2 extends HttpServlet {
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
        // Khởi tạo mảng data ban đầu
        int[] data = { 0, 0, 100, 300, 0, 400, 200, 0, 100, 0, 200, 300 };

// Khởi tạo đối tượng td để gọi phương thức countTicketbymonth
        TicketDAO td = new TicketDAO(DBContext.getConn()); // Thay TicketData bằng tên lớp chứa hàm countTicketbymonth của bạn

// Ngày bắt đầu và ngày kết thúc (ví dụ: năm 2023)
        // Ngày bắt đầu và ngày kết thúc (ví dụ: năm 2023)
        Date startDate = Date.valueOf("2024-01-01");
        Date endDate = Date.valueOf("2024-12-31");

// Lặp qua từng tháng trong năm
        for (int month = 0; month < 12; month++) {
            // Tính ngày đầu tháng và ngày cuối tháng
            Date monthStartDate = Date.valueOf("2024-" + String.format("%02d", month + 1) + "-01");
            int lastDayOfMonth = getLastDayOfMonth(month + 1, 2024); // Lấy số ngày cuối cùng của tháng
            Date monthEndDate = Date.valueOf("2024-" + String.format("%02d", month + 1) + "-" + lastDayOfMonth);

            // Gọi hàm countTicketbymonth và cập nhật giá trị vào mảng data
            data[month] = td.priceTicketbymonth(monthStartDate, monthEndDate)/1000;
        }


        // Chuyển đổi dữ liệu sang JSON
        JSONObject json = new JSONObject();
        JSONArray dataArray = new JSONArray();
        for (int i : data) {
            dataArray.put(i);
        }
        json.put("data", dataArray);

        // Gửi dữ liệu JSON
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
