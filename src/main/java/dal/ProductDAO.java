package dal;

import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO extends DBContext{
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public ProductDAO(Connection con) {
        super();
        this.con = con;
    }

    public void AddProduct(Product p) {
        String sql = "insert into product(SupplierID, ProductName, ProductPrice, Detail) values(1, ?, ?, ?)";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, p.getProductName());
            ps.setFloat(2, p.getProductPrice());
            ps.setString(3, p.getDetail());
            ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }

    public void UpdateProduct(Product p) {
        String sql = "update product set ProductName = ?, ProductPrice = ?, Detail = ? where ProductID = ?";
        try{
           ps = con.prepareStatement(sql);
           ps.setString(1, p.getProductName());
           ps.setFloat(2, p.getProductPrice());
           ps.setString(3, p.getDetail());
           ps.setInt(4, p.getProductID());
           ps.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void DeleteProduct(int ProductID) {
        String sql = "delete from product where ProductID = ?";
        Product p = null;
        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1, ProductID);
            ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }

    public Product getProductByID(int ProductID) {
        String sql = "select * from product where ProductID = ?";
        Product p = null;
        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1, ProductID);
            rs = ps.executeQuery();
            if(rs.next()) {
                p = new Product();
                p.setProductID(rs.getInt("ProductID"));
                p.setProductName(rs.getString("ProductName"));
                p.setProductPrice(rs.getFloat("ProductPrice"));
                p.setDetail(rs.getString("Detail"));
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return p;
    }

    public ArrayList<Product> getAllProduct() {
        String sql = "select p.ProductID, s.SupplierName, p.ProductName, p.ProductPrice, p.Detail from product p \n" +
                "join supplier s on p.SupplierID = s.SupplierID";
        ArrayList<Product> list = new ArrayList();
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Product p = new Product();
                p.setProductID(rs.getInt("ProductID"));
                p.setSupplierName(rs.getString("SupplierName"));
                p.setProductName(rs.getString("ProductName"));
                p.setProductPrice(rs.getFloat("ProductPrice"));
                p.setDetail(rs.getString("Detail"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }


}
