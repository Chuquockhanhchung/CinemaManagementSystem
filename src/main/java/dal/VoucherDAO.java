package dal;

import model.Product;
import model.Voucher;
import java.sql.*;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VoucherDAO extends DBContext {
    private Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public VoucherDAO() {
        try {
            this.con = DBContext.getConn();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public VoucherDAO(Connection con) {
        this.con = con;
    }

    public void AddVoucher(Voucher v) throws SQLException {
        String sql = "INSERT INTO voucher(VoucherName, VoucherPrice, ExpirationDate, Detail) VALUES (?,?,?,?);";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, v.getVoucherName());
            ps.setFloat(2, v.getVoucherPrice());
            ps.setDate(3, v.getExpirationDate());
            ps.setString(4, v.getDetail());
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Voucher added successfully.");
            } else {
                System.out.println("Failed to add voucher.");
            }
        } catch (SQLException e) {
            System.out.println("Error adding voucher: " + e.getMessage());
            throw new SQLException("Error adding voucher", e);
        }
    }

    public ArrayList<Voucher> getAllVouchers() throws SQLException {
        String sql = "SELECT * FROM voucher";
        ArrayList<Voucher> list = new ArrayList();
        try  {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Voucher v = new Voucher();
                v.setVoucherID(rs.getInt("VoucherID"));
                v.setVoucherName(rs.getString("VoucherName"));
                v.setVoucherPrice(rs.getFloat("VoucherPrice"));
                v.setExpirationDate(rs.getDate("ExpirationDate"));
                v.setDetail(rs.getString("Detail"));
                list.add(v);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        try {
            Connection conn = DBContext.getConn();
            VoucherDAO voucherDAO = new VoucherDAO(conn);
            ArrayList<Voucher> vouchers = voucherDAO.getAllVouchers();
            for (Voucher v : vouchers) {
                System.out.println("ID: " + v.getVoucherID() + ", Name: " + v.getVoucherName() +
                        ", Price: " + v.getVoucherPrice() + ", Expiration Date: " + v.getExpirationDate() +
                        ", Detail: " + v.getDetail());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void UpdateVoucher(Voucher v) {
        String sql = "update voucher set VoucherName = ?, VoucherPrice = ?, ExpirationDate = ?, Detail = ? where VoucherID = ?";
        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, v.getVoucherName());
            ps.setFloat(2, v.getVoucherPrice());
            ps.setDate(3, v.getExpirationDate());
            ps.setString(4, v.getDetail());
            ps.setInt(5, v.getVoucherID());
            ps.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void DeleteVoucher(int VoucherID) {
        String sql = "delete from voucher where VoucherID = ?";
        Voucher v = null;
        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1, VoucherID);
            ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }

    public Voucher getVoucherByID(int VoucherID) {
        String sql = "select * from voucher where VoucherID = ?";
        Voucher v = null;
        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1, VoucherID);
            rs = ps.executeQuery();
            if(rs.next()) {
                v = new Voucher();
                v.setVoucherID(rs.getInt("VoucherID"));
                v.setVoucherName(rs.getString("VoucherName"));
                v.setVoucherPrice(rs.getFloat("VoucherPrice"));
                v.setExpirationDate(rs.getDate("ExpirationDate"));
                v.setDetail(rs.getString("Detail"));

            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return v;
    }
}
