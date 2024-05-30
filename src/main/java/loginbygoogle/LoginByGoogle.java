/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package loginbygoogle;

import dal.DBContext;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import static loginbygoogle.GoogleUtils.getToken;
import static loginbygoogle.GoogleUtils.getUserInfo;

import model.Customer;

public class LoginByGoogle extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        String accessToken = getToken(code);
        Customer user = getUserInfo(accessToken);
        System.out.println(user);

        saveUserToDatabase(user);
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        response.sendRedirect("index.jsp");
    }

    private void saveUserToDatabase(Customer userGoogle) {
        String checkSql = "SELECT COUNT(*) FROM account WHERE AccountID = ?";
        String insertAccountSql = "INSERT INTO account (AccountID, Password, AccountType, CreationDate) VALUES (?, ?, ?, NOW())";
        String insertCustomerSql = "INSERT INTO customer (CustomerID, FullName, Email, Picture) VALUES (?, ?, ?, ?)";

        try (Connection conn = DBContext.getConn()) {
            conn.setAutoCommit(false); // Begin transaction

            try (PreparedStatement checkStmt = conn.prepareStatement(checkSql)) {
                checkStmt.setString(1, userGoogle.getId());
                try (ResultSet rs = checkStmt.executeQuery()) {
                    if (rs.next() && rs.getInt(1) > 0) {
                        return; // User already exists, no need to insert
                    }
                }
            }

            try (PreparedStatement insertAccountStmt = conn.prepareStatement(insertAccountSql)) {
                insertAccountStmt.setString(1, userGoogle.getId());
                insertAccountStmt.setString(2, "123"); // Default password for Google users
                insertAccountStmt.setInt(3, 2); // Assuming 1 represents a regular user role
                insertAccountStmt.executeUpdate();
            }

            try (PreparedStatement insertCustomerStmt = conn.prepareStatement(insertCustomerSql)) {
                insertCustomerStmt.setString(1, userGoogle.getId());
                insertCustomerStmt.setString(2, userGoogle.getName());
                insertCustomerStmt.setString(3, userGoogle.getEmail());
                insertCustomerStmt.setString(4, userGoogle.getPicture());
                insertCustomerStmt.executeUpdate();
            }

            conn.commit(); // Commit transaction
            System.out.println("Inserted new user: " + userGoogle.getId());

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
