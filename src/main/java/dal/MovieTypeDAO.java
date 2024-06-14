package dal;

import model.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MovieTypeDAO extends DBContext {
    private final Connection con;
    public MovieTypeDAO(Connection con) {
        super();
        this.con = con;
    }

    public String GetNameTypeByID(int id) {
        String sql = "select a.TypeName from MovieType a where TypeID =  "+id;
        try(PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()){
            while (rs.next()){
                return rs.getString(1);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}
