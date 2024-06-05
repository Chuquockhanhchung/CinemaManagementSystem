package dal;

import model.Account;
import model.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MovieDAO extends DBContext {
    private final Connection con;

    public MovieDAO(Connection con) {
        super();
        this.con = con;
    }

    public ArrayList<Movie> getall_Movie() {
        ArrayList<Movie> movies = new ArrayList<>();
        MovieTypeDAO tdao = new MovieTypeDAO(con);
        String sql = "select a.MovieID, a.MovieName, a.Description, a.MovieType, a.Image from movie a";
        try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Movie a = new Movie();
                a.setMovieID(rs.getInt(1));
                a.setMovieName(rs.getString(2));
                a.setMovieTYpe(rs.getInt(4));
                a.setMovieType_Name(tdao.GetNameTypeByID(a.getMovieType()));
                a.setImage(rs.getString(5));
                movies.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }

//    public static void main(String[] args) {
//        MovieDAO d = new MovieDAO(DBContext.getConn());
//        ArrayList<Movie> l = d.getall_Movie();
//        for (Movie m : l) {
//            System.out.println(m.getImage());
//        }
//    }
}

