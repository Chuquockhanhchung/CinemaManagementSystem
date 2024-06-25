package controller;

import dal.DBContext;
import dal.VoucherDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Voucher;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;


public class AddVoucherServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        VoucherDAO dao = new VoucherDAO();
        List<Voucher> listV = null;
        try {
            listV = dao.getAllVouchers();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        req.setAttribute("listV", listV);
        req.getRequestDispatcher("add_voucher.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("VoucherName");
        float voucherPrice = Float.parseFloat(req.getParameter("VoucherPrice"));
        String expirationDateStr = req.getParameter("ExpirationDate");
        Date expirationDate = null;
        try {
            java.util.Date utilDate = new SimpleDateFormat("yyyy-MM-dd").parse(expirationDateStr);
            expirationDate = new Date(utilDate.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String detail = req.getParameter("Detail");

        // Chuyển đổi định dạng ngày



        Voucher voucher = new Voucher(name, voucherPrice, expirationDate, detail);

        Connection conn = null;
        try {
            conn = DBContext.getConn();
            VoucherDAO voucherDAO = new VoucherDAO(conn);
            voucherDAO.AddVoucher(voucher);
            req.setAttribute("message", "Voucher added successfully.");
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("message", "Failed to add voucher.");
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        // Forward back to the add voucher page
       // req.getRequestDispatcher("voucher.jsp").forward(req, resp);
        resp.sendRedirect("voucher");
    }
}
