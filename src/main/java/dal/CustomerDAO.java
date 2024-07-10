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

    public void EditCustomer(String name, String email, String phone, String img, int id) {
        String sql = "UPDATE customer SET FullName = ?, Email = ?, PhoneNumber = ?, Picture = ? WHERE CustomerID = ?";

        System.out.println("Executing query: " + sql);

        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, img);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static void main(String[] args) {
        CustomerDAO dao = new CustomerDAO(DBContext.getConn());
        dao.EditCustomer("Nguyễn Tiến Đạt", "dat10bn@gmail.com", "0968338678", "https://www.vietnamfineart.com.vn/wp-content/uploads/2023/03/665499a64747c2ba370e369b526b6849.jpg", 28);
    }

    public ArrayList<Customer> getInfor_Customer() {
        String sql = "SELECT CustomerID, customer.AccountID, FullName, Email, PhoneNumber, Password, AccountType,Picture\n"
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
                c.setPicture(rs.getString(8));
                list.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public void insertCustomer(Customer customer) {
        String sql = "INSERT INTO customer (CustomerID, AccountID, FullName, Email, PhoneNumber, DOB) VALUES (?, ?, ?, ?, ?, ?)";

        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, customer.getIdCustomer());
            ps.setString(2, customer.getId());
            ps.setString(3, customer.getName());
            ps.setString(4, customer.getEmail());
            ps.setString(5, customer.getPhone());
            ps.setString(6, customer.getDOB());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean insertCustomerOffline(Customer customer) {
        boolean f = false;
        try {
            String sql = "INSERT INTO customer (FullName, PhoneNumber, DOB) VALUES ( ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, customer.getName());
            ps.setString(2, customer.getPhone());
            ps.setString(3, customer.getDOB());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return f;
    }

    public int getLatestCustomerID() {
        int latestCustomerID = -1;
        String sql = "SELECT CustomerID FROM customer WHERE CustomerID = (SELECT MAX(CustomerID) FROM customer)";

        try (PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                latestCustomerID = rs.getInt("CustomerID");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return latestCustomerID;
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


    public Customer getCustomer(String id) {
        Customer c = new Customer();
        String sql = "SELECT CustomerID, customer.AccountID, FullName, Email, PhoneNumber, Password, AccountType\n"
                + "FROM customer\n"
                + "JOIN account  ON customer.AccountID = account.AccountID where account.AccountID=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                c.setIdCustomer(rs.getInt(1));
                c.setName(rs.getString(3));
                c.setEmail(rs.getString(4));
                c.setPhone(rs.getString(5));
                c.setPass(rs.getString(6));
                c.setRole(rs.getInt(7));
                return c;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Customer getCustomerByCID(String id) {
        Customer c = new Customer();
        String sql = "SELECT CustomerID, customer.AccountID, FullName, Email, PhoneNumber, Password, AccountType, Picture\n"
                + "FROM customer\n"
                + "JOIN account  ON customer.AccountID = account.AccountID where customer.CustomerID=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                c.setIdCustomer(rs.getInt(1));
                c.setName(rs.getString(3));
                c.setEmail(rs.getString(4));
                c.setPhone(rs.getString(5));
                c.setPass(rs.getString(6));
                c.setRole(rs.getInt(7));
                c.setPicture(rs.getString(8));
                return c;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Customer getCustomerByID(int CustomerID) {
        Customer c = null;
        String sql = "SELECT * FROM customer WHERE CustomerID = ?";
        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, CustomerID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                c = new Customer();
                c.setIdCustomer(rs.getInt(1));
                c.setName(rs.getString(3));
                c.setEmail(rs.getString(4));
                c.setPhone(rs.getString(5));
                c.setPicture(rs.getString(6));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return c;
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
