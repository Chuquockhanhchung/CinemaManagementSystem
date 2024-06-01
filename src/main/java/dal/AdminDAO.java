package dal;

import Utill.Security;
import model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;
import java.util.ArrayList;

import static java.sql.Date.*;

public class AdminDAO extends DBContext {

    private final Connection con;
    public AdminDAO(Connection con) {
        super();
        this.con = con;

    }
    public void AddAccount(int AccountID, String Password, int AccountType, Date CreationDate, String Status){
        String sql = "insert into admin values(?,?,?,?,?)";
        try(PreparedStatement ps = con.prepareStatement(sql)){
            ps.setInt(1, AccountID);
            ps.setString(2, Password);
            ps.setInt(3, AccountType);
            ps.setDate(4, CreationDate);
            ps.setString(5, Status);
            ps.executeUpdate();
            System.out.println("insert successful");
        }catch(SQLException e){
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        try (Connection con = getConn()) {
            // Connection successful, you can perform further operations here if needed
            AdminDAO cd =new AdminDAO(con);
          //  ArrayList<Customer> a=cd.getInfor_Customer();
            cd.ChangeStatus("106042374001554801835", "active");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void ChangePassword(String AccountID, String Password){
        String sql = "update Account set Password=? where AccountID=?";
        Security s = new Security();
        try(PreparedStatement ps = con.prepareStatement(sql)){
            ps.setString(1, s.encode(Password));
            ps.setString(2, AccountID);
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    public void GrantPermission(String AccountID, int AccountType){
        String sql = "update Account set AccountType=? where AccountID=?";
        try(PreparedStatement ps = con.prepareStatement(sql)){
            ps.setInt(1, AccountType);
            ps.setString(2, AccountID);
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    public void ChangeStatus(String AccountID, String Status){
        String sql = "update Account set Status=? where AccountID=?";
        try(PreparedStatement ps = con.prepareStatement(sql)){
            ps.setString(1, Status);
            ps.setString(2, AccountID);
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
