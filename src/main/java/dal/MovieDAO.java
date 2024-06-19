package dal;

import model.*;

import java.sql.*;
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
                a.setId(rs.getInt(1));
                a.setName(rs.getString(2));
                a.setType(rs.getString(3));
                a.setDescription(rs.getString(4));
                a.setImge(rs.getString(10));
                movies.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }
    public String getDateById(int id) {
        String date = "";
        String sql = "SELECT ReleaseDate FROM movie WHERE MovieID=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                date = rs.getString(1);
            }
            return date;
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public float getRatingById(int id) {
        float rating = 0;
        String sql = "SELECT IMDbRating FROM movie WHERE MovieID=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                rating = rs.getFloat(1);
                return rating;
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    return rating;
    }
    public ArrayList<Feedback> getFBbyID(int id){
        ArrayList<Feedback> feedbacks = new ArrayList<>();
        String sql = "SELECT * FROM Feedback WHERE MovieID=?";
        CustomerDAO cdao = new CustomerDAO(con);
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                feedbacks.add(new Feedback(
                        rs.getInt(1),
                        rs.getInt(2),
                        cdao.getCustomerByCID(String.valueOf(rs.getInt(3))),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6)
                ));
            }
            return feedbacks;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return feedbacks;
    }
    public ArrayList<Feedback> getFBbyFBID(int id){
        ArrayList<Feedback> feedbacks = new ArrayList<>();
        String sql = "SELECT * FROM Feedback WHERE ReplyID=?";
        CustomerDAO cdao = new CustomerDAO(con);
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                feedbacks.add(new Feedback(
                        rs.getInt(1),
                        rs.getInt(2),
                        cdao.getCustomerByCID(String.valueOf(rs.getInt(3))),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6)
                ));
            }
            return feedbacks;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return feedbacks;
    }
    public void delete_Feedback(int id){
        String sql = "DELETE FROM `cinemamanagersystem`.`feedback` WHERE (`FeedbackID` = ?);\n";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            ps.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public void insert_Feedback(Feedback feedback) {
        String sql="INSERT INTO `cinemamanagersystem`.`feedback` (`MovieID`, `CustomerID`, `Content`, `FeedbackDate`, `Rate`,`ReplyID`) VALUES (?,?,?, ?, ?,?);\n";
        try{
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1,feedback.getMovieID());
            ps.setInt(2,feedback.getCustomerID().getIdCustomer());
            ps.setString(3,feedback.getFeedback());
            ps.setDate(4,feedback.getFeedbackDate());
            ps.setInt(5,feedback.getRate());
            ps.setInt(6,feedback.getReplyID());
            ps.executeUpdate();

        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        MovieDAO dao = new MovieDAO(DBContext.getConn());
//        CustomerDAO daoc = new CustomerDAO(DBContext.getConn());
//        Customer cu = daoc.getCustomerByCID("60");
//        ArrayList<Feedback> feedbacks = dao.getFBbyFBID(110);
//        for (Feedback feedback : feedbacks) {
//            System.out.println(feedback);
//        }
        dao.delete_Feedback(124);
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
                c.setId(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setDescription(rs.getString(3));
                c.setType(rs.getString(4));
                c.setImge(rs.getString(5));
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
                c.setId(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setDescription(rs.getString(3));
                c.setImge(rs.getString(4));
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
