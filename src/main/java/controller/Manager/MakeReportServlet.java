package controller.Manager;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;

public class MakeReportServlet extends HttpServlet {
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
            out.println("<title>Servlet manageMovieServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet manageMovieServlet at " + request.getContextPath () + "</h1>");
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
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Đường dẫn đến tệp văn bản bạn muốn tạo
        String filePath = "report.txt";

        // Nội dung bạn muốn ghi vào tệp
        String content = "Đây là nội dung của tệp văn bản.";

        // Tạo tệp văn bản với encoding UTF-8
        try (OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(filePath), "UTF-8")) {
            writer.write(content);
        } catch (IOException e) {
            response.getWriter().println("Có lỗi xảy ra khi tạo tệp hoặc ghi nội dung.");
            e.printStackTrace();
            return;
        }

        // Đặt tệp cần tải
        File downloadFile = new File(filePath);
        FileInputStream inStream = new FileInputStream(downloadFile);

        // Thiết lập các thuộc tính của phản hồi
        response.setContentType("application/octet-stream");
        response.setContentLength((int) downloadFile.length());
        String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
        response.setHeader(headerKey, headerValue);

        // Lấy output stream của phản hồi
        OutputStream outStream = response.getOutputStream();

        byte[] buffer = new byte[4096];
        int bytesRead = -1;

        // Ghi nội dung tệp vào output stream
        while ((bytesRead = inStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }

        inStream.close();
        outStream.close();
    }



    /**
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
