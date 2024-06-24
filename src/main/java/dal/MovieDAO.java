package dal;

import model.*;

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

    public static void main(String[] args) {
        MovieDAO mdao = new MovieDAO(DBContext.getConn());
        ArrayList<Movie> movies = mdao.phim("Đang Chiếu","");
        for (Movie movie : movies) {
            System.out.println(movie);
        }
    }
    public ArrayList<Movie> phim(String status, String Type) {
        ArrayList<Movie> movies = new ArrayList<>();
        String sql = "SELECT * FROM movie_all where Status like ? and Types like ?";

        // Kiểm tra giá trị đầu vào
        if (status == null || Type == null) {
            System.out.println("Status or Type is null");
            return movies;
        }

        // Kiểm tra kết nối cơ sở dữ liệu
        if (con == null) {
            System.out.println("Database connection is null");
            return movies;
        }

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + status + "%");
            ps.setString(2, "%" + Type + "%");

            // In ra câu lệnh SQL cuối cùng để kiểm tra
            System.out.println("Executing query: " + ps.toString());

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Movie a = new Movie();
                a.setId(rs.getInt(1));
                a.setName(rs.getString(2));
                a.setType(rs.getString(3));
                a.setDescription(rs.getString(4));
                a.setImage(rs.getString(10));
                a.setTrailer(rs.getString(11));
                movies.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("SQL Error Code: " + e.getErrorCode());
            System.out.println("SQL State: " + e.getSQLState());
            System.out.println("Error Message: " + e.getMessage());
        }
        return movies;
    }

    public ArrayList<Movie> film(){
        ArrayList<Movie> movies = new ArrayList<>();
        String sql = "SELECT * FROM movie_all where IMDbRating > 3.5;";
        try {PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Movie a = new Movie();
                a.setId(rs.getInt(1));
                a.setName(rs.getString(2));
                a.setType(rs.getString(3));
                a.setDescription(rs.getString(4));
                a.setImage(rs.getString(10));
                a.setTrailer(rs.getString(11));
                a.setRate(rs.getFloat(12));
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
    public ArrayList<Actor> getActorByMovieId(int id) {
        ArrayList<Actor> actors = new ArrayList<>();
        String sql = "Select a.ActorID,a.ActorImg,a.ActorName from actors a join movie_has_actors m on a.ActorID=m.ActorID where m.MovieID=?";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                actors.add(new Actor(rs.getInt(1), rs.getString(3), rs.getString(2)));
            }
            return actors;
        }catch (SQLException e){
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

    public ArrayList<Movie> filter(String name, String status, String date) {
        ArrayList<Movie> movies = new ArrayList<>();
        name = "%" + name + "%";
        status = "%" + status + "%";
        date = "%" + date + "%";
        MovieTypeDAO tdao = new MovieTypeDAO(con);
        String sql = "SELECT * FROM movie_all  where MovieName LIKE ? And Status Like ? and ReleaseDate Like ? ;";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, name);
            ps.setString(2, status);
            ps.setString(3, date);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Movie a = new Movie();
                a.setId(rs.getInt(1));
                a.setName(rs.getString(2));
                a.setType(rs.getString(3));
                a.setStatus(rs.getString(13));
                a.setReleaseDate(rs.getString(7));
                a.setDescription(rs.getString(4));
                a.setImage(rs.getString(10));
                movies.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
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
                a.setStatus(rs.getString(13));
                a.setReleaseDate(rs.getString(7));
                a.setDescription(rs.getString(4));
                a.setImage(rs.getString(10));
                a.setTrailer(rs.getString(11));
                movies.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }
    public ArrayList<Movie> SearchMovie(String Search, String Status){
        ArrayList<Movie> movies = new ArrayList<>();
        String sql = "SELECT * FROM movie_all where MovieName like ? and Status like ?;";
        try {PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%"+Search+"%");
            ps.setString(2, "%"+Status+"%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Movie a = new Movie();
                a.setId(rs.getInt(1));
                a.setName(rs.getString(2));
                a.setType(rs.getString(3));
                a.setDescription(rs.getString(4));
                a.setImage(rs.getString(10));
                a.setTrailer(rs.getString(14));
                movies.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }

    public ArrayList<String> getMovieType(){
        ArrayList<String> type = new ArrayList<>();
        String sql = "select movietype.TypeName from cinemamanagersystem.movietype;";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                type.add(rs.getString("TypeName"));
            }
            return type;

        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    public double GetRateByID (int id){
        String sql="SELECT sum(Rate), count(Rate) from feedback where MovieID = ? and rate>0;";
        try {PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return (double) rs.getDouble(1)/rs.getDouble(2);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
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
        String sql = "SELECT m.MovieID, m.MovieName, m.Description, m.Image, m.Status, m.Duration,m.Trailer FROM movie m join movie_has_types t on m.MovieID = t.MovieID where m.MovieID =? ";
        Movie c = new Movie();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                c.setId(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setDescription(rs.getString(3));
                c.setImage(rs.getString(4));
                c.setStatus(rs.getString(5));
                c.setDuration(rs.getInt(6));
                c.setTrailer(rs.getString(7));

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

    public ArrayList<Language> getAllLanguage() {
        ArrayList<Language> list = new ArrayList<>();
        String sql = "SELECT * FROM cinemamanagersystem.movielanguage;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Language l = new Language();
                l.setId(rs.getInt(1));
                l.setName(rs.getString(2));
                list.add(l);

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public ArrayList<MovieType> getAllMovieType() {
        ArrayList<MovieType> list = new ArrayList<>();
        String sql = "SELECT * FROM cinemamanagersystem.movietype;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MovieType m = new MovieType();
                m.setTypeID(rs.getInt(1));
                m.setTypeName(rs.getString(2));
                m.setTypeDescription(rs.getString(3));
                list.add(m);

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public ArrayList<Actor> getAllActor() {
        ArrayList<Actor> list = new ArrayList<>();
        String sql = "SELECT * FROM cinemamanagersystem.actors;";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Actor m = new Actor();
                m.setId(rs.getInt(1));
                m.setName(rs.getString(2));
                list.add(m);

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void AddMovie(Movie m) {
        String sql = "insert into movie  (MovieName, Description, Director, ReleaseDate, Duration, Language, Image, status,Price)Values (?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, m.getName());
            ps.setString(2, m.getDescription());
            ps.setString(3, m.getDirector());
            ps.setString(4, m.getReleaseDate());
            ps.setInt(5, m.getDuration());
            ps.setInt(6, m.getLanguages());
            ps.setString(7, m.getImage());
            ps.setString(8, m.getStatus());
            ps.setInt(9, m.getPrice());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void AddHasType(int a, int b) {
        String sql = "insert into movie_has_types (MovieID, TypeID) VALUES(?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, a);
            ps.setInt(2, b);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void AddActor(String a) {
        String sql = "insert into actors ( ActorName) values(?)";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, a);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

     public void AddType(String a) {
        String sql = "insert into movietype ( TypeName) values(?)";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, a);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void AddHasActor(int a, int b) {
        String sql = "insert into movie_has_actors (MovieID, ActorID) values(?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, a);
            ps.setInt(2, b);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public int getIDMovie(){
        String sql ="SELECT max(MovieID) FROM movie ";
        int movieID = 0;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                movieID = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return movieID;
    }

    public int getIdActor(){
        String sql ="SELECT max(ActorID) FROM cinemamanagersystem.actors";
        int actorID = 0;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                actorID = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return actorID;
    }

     public int getIdType(){
        String sql ="SELECT max(TypeID) FROM cinemamanagersystem.movietype";
        int typeID = 0;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                typeID = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return typeID;
    }


}
