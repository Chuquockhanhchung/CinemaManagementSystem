package dal;

import model.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class ComboDAO extends DBContext  {
    private final Connection con;

    public ComboDAO(Connection con) {
        super();
        this.con = con;
    }

    public ArrayList<Combo> getCombo(){
        String sql = "select * from combo";
        ArrayList<Combo> combos = new ArrayList<>();
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Combo combo = new Combo();
                combo.setId(rs.getInt(1));
                combo.setName(rs.getString(2));
                combo.setDescription(rs.getString(3));
                combo.setPrice(rs.getFloat(4));
                combo.setImg(rs.getString(5));
                combos.add(combo);
            }
            return combos;

        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }

    public void addCombo(Combo c){
        String sql ="insert into combo (comboName, description, price, image) values(?,?,?,?)";
        try{
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setString(1, c.getName());
            ps.setString(2, c.getDescription());
            ps.setDouble(3, c.getPrice());
            ps.setString(4, c.getImg());
            ps.executeUpdate();
        } catch(SQLException e){
            e.printStackTrace();
        }
    }

    public int getComboIDmax(){
        String sql = "SELECT max(c.ComboID) FROM combo c";
        int id = 0;
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                id = rs.getInt(1);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return id;

    }

    public void addCombohasProduct(int a, int b){
        String sql ="insert into combo_has_product (ComboId, ProductId) values(?,?)";
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, a);
            ps.setInt(2, b);
            ps.executeUpdate();


        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public void deleteCombohasProduct(int id){
        String sql = "delete from combo_has_product where ComboId =?";
        try{
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();

        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public void DeleteCombo(int id){
        String sql = "delete from combo where ComboId =?";
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException e){
            e.printStackTrace();
        }
    }
    public void updateCombo(Combo c){
        String sql = "update combo set comboName = ?, description = ?, price = ?, image =? where ComboId =?";
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setString(1, c.getName());
            ps.setString(2, c.getDescription());
            ps.setFloat(3, c.getPrice());
            ps.setString(4, c.getImg());
            ps.setInt(5, c.getId());
            ps.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }


    public Combo getComboByID(int id){
        String sql = "select * from combo where ComboId =?";
        Combo combo = null;
        try{
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                combo = new Combo();
                combo.setId(rs.getInt(1));
                combo.setName(rs.getString(2));
                combo.setDescription(rs.getString(3));
                combo.setPrice(rs.getFloat(4));
                combo.setImg(rs.getString(5));

            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return combo;
    }

    public ArrayList<String> getProduct(int id){
        String sql = "select c.productId from combo_has_product c where ComboId =?";
        ArrayList<String> productIds = new ArrayList<>();
        try{
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                productIds.add(rs.getInt(1)+"");
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return productIds;
    }
}
