

package dal;

import Utill.Security;
import model.Account;
import model.Customer;

import java.sql.*;

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

    public void EditAccount(int role, String Email, String Password){
        String sql = "update Account set password=?, AccountType=? where AccountID=(select AccountID from customer where Email=?)";
        Security s = new Security();
        try(PreparedStatement ps = con.prepareStatement(sql)){
            ps.setString(1, s.encode(Password));
            ps.setInt(2, role);
            ps.setString(3, Email);
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    public ArrayList<Account> getall_Account(){
        ArrayList<Account> accounts = new ArrayList<>();
        Security s = new Security();
        String sql = "select a.AccountID, c.Email,a.Password, a.AccountType,a.CreationDate,a.Status from account a join customer c on a.AccountID=c.AccountID";
        try(PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()){
            while (rs.next()){
                Account a = new Account();
                a.setAccountID(rs.getString(1));
                a.setEmail(rs.getString(2));
                a.setPassword(s.decode(rs.getString(3)));
                a.setAccountType(rs.getInt(4));
                a.setCreationDate(rs.getDate(5));
                a.setStatus(rs.getString(6));
                accounts.add(a);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return accounts;
    }

    public ArrayList<Account> getall_Account_ByMail(String Email){
        if (Email.length() == 0){
            return getall_Account();
        }
        ArrayList<Account> accounts = new ArrayList<>();
        Email = "%" + Email + "%";
        String sql = "select a.AccountID, c.Email,a.Password, a.AccountType,a.CreationDate,a.Status \n" +
                "from cinemamanagersystem.account a join cinemamanagersystem.customer c \n" +
                "on a.AccountID=c.AccountID\n" +
                "where c.Email like ?";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
             ps.setString(1, Email);
             ResultSet rs = ps.executeQuery();
             Security s = new Security();
            while (rs.next()){
                Account a = new Account();
                a.setAccountID(rs.getString(1));
                a.setEmail(rs.getString(2));
                a.setPassword(s.decode(rs.getString(3)));
                a.setAccountType(rs.getInt(4));
                a.setCreationDate(rs.getDate(5));
                a.setStatus(rs.getString(6));
                accounts.add(a);
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return accounts;
    }
    public void deleteAccount(String AccountID){
        String sql = "delete from account where AccountID=?;" ;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,AccountID);;
            ps.executeUpdate();


        } catch (SQLException e) {
           e.printStackTrace();
        }
    }
    public void deleteCustomer(String AccountID){
        String sql = "delete from customer where AccountID=?;" ;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,AccountID);;

            ps.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        try (Connection con = getConn()) {
//             Connection successful, you can perform further operations here if needed
            AdminDAO cd =new AdminDAO(con);
            //ArrayList<Account> a=cd.getall_Account_ByMail("chi");
            cd.EditAccount(2,"chuquockhanhchung@gmail.com","12345678");


            //System.out.println(a);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}


