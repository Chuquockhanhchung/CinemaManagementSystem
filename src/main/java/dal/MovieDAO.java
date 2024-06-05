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

    public Movie getMovie(int id) {
        String sql = "SELECT m.MovieID, m.MovieName, m.Description, t.TypeName, m.Image, m.Actors, m.Status FROM movie m join movietype t on m.MovieType = t.TypeID where m.MovieID =?";
        Movie c = new Movie();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                c.setId(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setDescription(rs.getString(3));
                c.setType(rs.getString(4));
                c.setImge(rs.getString(5));
                c.setActor(rs.getString(6));
                c.setStatus(rs.getString(7));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return c;

    }

    // public static void main(String[] args) {
    // MovieDAO d = new MovieDAO(DBContext.getConn());
    // ArrayList<Movie> l = d.getall_Movie();
    // for (Movie m : l) {
    // System.out.println(m.getImage());
    // }
    // }

    public ArrayList<Movie> getMovieType() {
        String sql = "SELECT  t.TypeID,t.TypeName,count( m.MovieId) AS Total from movietype t left join  movie m on t.TypeID = m.MovieType group by t.TypeID";
        ArrayList<Movie> list = new ArrayList<>();

        try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Movie c = new Movie();
                c.setId(rs.getInt(1));
                c.setType(rs.getString(2));
                c.setTotalMovieType(rs.getInt(3));
                list.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public ArrayList<ShowTime> getShowTime(int id) {
        ArrayList<ShowTime> list = new ArrayList<>();
        String sql = " SELECT s.ShowtimeID,s.RoomID, s.MovieID, CASE DAYOFWEEK(s.showdate)\n"
                + "        WHEN 1 THEN 'CN'\n"
                + "        WHEN 2 THEN 'T2'\n"
                + "        WHEN 3 THEN 'T3'\n"
                + "        WHEN 4 THEN 'T4'\n"
                + "        WHEN 5 THEN 'T5'\n"
                + "        WHEN 6 THEN 'T6'\n"
                + "        WHEN 7 THEN 'T7'\n"
                + "    END  as thu, s.Duration, s.MaxTickets, day(s.showdate) as day, month(s.showdate) as month, date_format(s.starttime, '%H:%i') as time,  s.ShowDate  FROM showtime s where s.MovieID = ? and s.StartTime >=current_date()\n"
                + "  ";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ShowTime show = new ShowTime();
                show.setShowTimeID(rs.getInt(1));
                show.setRoomID(rs.getInt(2));
                show.setMovieID(rs.getInt(3));
                show.setDayName(rs.getString(4));
                show.setDuration(rs.getInt(5));
                show.setMaxTickets(rs.getInt(6));
                show.setDay(rs.getInt(7));
                show.setMonth(rs.getInt(8));
                show.setTime(rs.getString(9));
                show.setDate(rs.getString(10));
                list.add(show);
            }
            return list;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<ShowTime> getTime(int id) {
        ArrayList<ShowTime> list = new ArrayList<>();
        String sql = " SELECT  distinct s.ShowDate ,CASE DAYOFWEEK(s.showdate)\n"
                + "        WHEN 1 THEN 'CN'\n"
                + "        WHEN 2 THEN 'T2'\n"
                + "        WHEN 3 THEN 'T3'\n"
                + "        WHEN 4 THEN 'T4'\n"
                + "        WHEN 5 THEN 'T5'\n"
                + "        WHEN 6 THEN 'T6'\n"
                + "        WHEN 7 THEN 'T7'\n"
                + "    END AS dayname, Day(s.showdate) as day, month(s.showdate) as month  FROM showtime s where s.MovieID = ? and s.StartTime >=current_date()";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ShowTime show = new ShowTime();
                show.setTime(rs.getString(1));
                show.setDayName(rs.getString(2));
                show.setDay(rs.getInt(3));
                show.setMonth(rs.getInt(4));
                list.add(show);
            }
            return list;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
