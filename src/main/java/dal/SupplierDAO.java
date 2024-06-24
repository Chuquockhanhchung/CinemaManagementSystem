package dal;

import model.Product;
import model.Supplier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SupplierDAO extends DBContext {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public SupplierDAO(Connection con) {
      super();
      this.con = con;
    }

    public void AddSupplier(Supplier s) {
        String sql = "insert into supplier(SupplierName, Address, Email, PhoneNumber) values(?, ?, ?, ?)";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, s.getSupplierName());
            ps.setString(2, s.getAddress());
            ps.setString(3, s.getEmail());
            ps.setString(4, s.getPhoneNumber());
            ps.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void UpdateSupplier(Supplier s) {
        String sql = "update supplier set SupplierName = ?, Address = ?, Email = ?, PhoneNumber = ? where SupplierID = ?";
        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, s.getSupplierName());
            ps.setString(2, s.getAddress());
            ps.setString(3, s.getEmail());
            ps.setString(4, s.getPhoneNumber());
            ps.setInt(5, s.getSupplierID());
            ps.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void DeleteSupplier(int SupplierID) {
        String sql = "delete from supplier where SupplierID = ?";
        Supplier s = null;
        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1, SupplierID);
            ps.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

    public Supplier getSupplierByID(int SupplierID) {
        String sql = "select * from supplier where SupplierID = ?";
        Supplier s = null;
        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1, SupplierID);
            rs = ps.executeQuery();
            if(rs.next()) {
                s = new Supplier();
                s.setSupplierID(rs.getInt("SupplierID"));
                s.setSupplierName(rs.getString("SupplierName"));
                s.setAddress(rs.getString("Address"));
                s.setEmail(rs.getString("Email"));
                s.setPhoneNumber(rs.getString("PhoneNumber"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return s;
    }

    public ArrayList<Supplier> getAllSupplier() {
        String sql = "select * from supplier";
        ArrayList<Supplier> list = new ArrayList();
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Supplier s = new Supplier();
                s.setSupplierID(rs.getInt("SupplierID"));
                s.setSupplierName(rs.getString("SupplierName"));
                s.setAddress(rs.getString("Address"));
                s.setEmail(rs.getString("Email"));
                s.setPhoneNumber(rs.getString("PhoneNumber"));
                list.add(s);
            }
        } catch (Exception e) {
        }
        return list;
    }

}
