package dal;

import model.Account;
import model.Movie;
import model.ShowTime;

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
        String sql = "SELECT * FROM movie_all;";
        try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Movie a = new Movie();
                a.setMovieID(rs.getInt(1));
                a.setName(rs.getString(2));
                a.setType(rs.getString(3));
                a.setDescription(rs.getString(4));
                a.setImage(rs.getString(10));
                movies.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }

    public ArrayList<Movie> getMovieType(int id) {
        String sql = "select m.MovieID, m.MovieName, m.Description, t.TypeName, m.Image, m.Status,  m.Duration  from movietype t join (SELECT m.MovieID, m.MovieName, m.Description, t.TypeID, m.Image, m.Status, m.Duration FROM movie m join movie_has_types t on m.MovieID = t.MovieID) m on m.TypeID = t.TypeID   where m.MovieID = ? ";
        ArrayList<Movie> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Movie c = new Movie();
                c.setMovieID(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setDescription(rs.getString(3));
                c.setType(rs.getString(4));
                c.setImage(rs.getString(5));
                c.setStatus(rs.getString(6));
                c.setDuration(rs.getInt(7));
                list.add(c);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;

    }

    public Movie getMovie(int id) {
        String sql = "SELECT m.MovieID, m.MovieName, m.Description, m.Image, m.Status, m.Duration FROM movie m join movie_has_types t on m.MovieID = t.MovieID where m.MovieID =? ";
        Movie c = new Movie();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                c.setMovieID(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setDescription(rs.getString(3));
                c.setImage(rs.getString(4));
                c.setStatus(rs.getString(5));
                c.setDuration(rs.getInt(6));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return c;

    }

//

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
