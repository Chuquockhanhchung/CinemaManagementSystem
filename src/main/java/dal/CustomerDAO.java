/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Utill.Security;
import java.sql.*;
import java.util.ArrayList;
import model.*;

public class CustomerDAO extends DBContext {

    private final Connection con;

    public CustomerDAO(Connection con) {
        super();
        this.con = con;
    }

    public ArrayList<Customer> getInfor_Customer() {
        String sql = "SELECT CustomerID, customer.AccountID, FullName, Email, PhoneNumber, Password, AccountType\n"
                + "FROM customer\n"
                + "JOIN account  ON customer.AccountID = account.AccountID";
        ArrayList<Customer> list = new ArrayList<>();
        Security s = new Security();
        try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Customer c = new Customer();
                c.setIdCustomer(rs.getInt(1));
                c.setId(rs.getString(2));
                c.setName(rs.getString(3));
                c.setEmail(rs.getString(4));
                c.setPhone(rs.getString(5));
                c.setPass(s.decode(rs.getString(6)));
                c.setRole(rs.getInt(7));
                list.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public void insertCustomer(Customer customer) {
        String sql = "INSERT INTO customer (CustomerID, AccountID, FullName, Email, PhoneNumber) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, customer.getIdCustomer());
            ps.setString(2, customer.getId());
            ps.setString(3, customer.getName());
            ps.setString(4, customer.getEmail());
            ps.setString(5, customer.getPhone());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void resetPassword(String email, String password) {
        Security s = new Security();
        String sql = "update account SET Password = ? where AccountID =\n"
                + "(select AccountID from customer where Email = ?)";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, s.encode(password));
            ps.setString(2, email);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        try (Connection con = getConn()) {
            // Connection successful, you can perform further operations here if needed
            String idAccount = Math.random() + "";
            CustomerDAO dao = new CustomerDAO(con);
            Customer account = new Customer(idAccount, "654356", 3, "", "active");
            dao.insertAccount(account);
            Customer customer = new Customer(0, idAccount, "06/04/2024",
                    "hoaidtthe172257@fpt.edu.vn", "", "");
            dao.insertCustomer(customer);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public Customer getCustomer(String id) {
        Customer c = new Customer();
        String sql = "SELECT CustomerID, customer.AccountID, FullName, Email, PhoneNumber, Password, AccountType\n"
                + "FROM customer\n"
                + "JOIN account  ON customer.AccountID = account.AccountID where account.AccountID=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                c.setIdCustomer(rs.getInt(1));
                c.setName(rs.getString(3));
                c.setEmail(rs.getString(4));
                c.setPhone(rs.getString(5));
                c.setPass(rs.getString(6));
                c.setRole(rs.getInt(7));
                return c;
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public void insertAccount(Customer account) {
        Security s = new Security();
        String sql = "insert into account (AccountID, Password,AccountType, CreationDate,Status) values (?, ?, ?, now(),'active')";

        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, account.getId());
            ps.setString(2, s.encode(account.getPass()));
            ps.setInt(3, account.getRole());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
