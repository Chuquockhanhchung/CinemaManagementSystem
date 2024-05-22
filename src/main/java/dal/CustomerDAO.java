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
         String sql = "SELECT k.MaKhachHang, t.MaTaiKhoan, k.HoTen, k.Email, k.SoDienThoai, t.MatKhau, t.LoaiTaiKhoan FROM khachhang k JOIN taikhoan t ON k.MaTaiKhoan = t.MaTaiKhoan";
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
        String sql = "INSERT INTO khachhang (MaKhachHang, MaTaiKhoan, HoTen, Email, SoDienThoai) VALUES (?, ?, ?, ?, ?)";

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

    public void insertAccount(Customer account) {
        Security s = new Security();
        String sql = "insert into taikhoan (MaTaiKhoan, MatKhau,loaiTaiKhoan, NgayTao) values (?, ?, ?, now())";

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
