package dal;

import model.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

public class TicketDAO extends DBContext {
    private final Connection con;

    public TicketDAO(Connection con) {
        super();
        this.con = con;
    }

    public Room getRoomByShowtime(int id) throws SQLException {
        try {
            PreparedStatement ps = con.prepareStatement("select s.RoomID, c.RoomName,c.Status,c.Capacity from showtime s join cinemaroom c on s.RoomID=c.RoomID where s.ShowtimeID=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Room(
                        rs.getInt("RoomID"),
                        rs.getString("RoomName"),
                        rs.getString("Status"),
                        rs.getInt("Capacity"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getDateByShowtime(int id) throws SQLException {
        try {
            String sql = "select StartTime from showtime where ShowtimeID = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString("StartTime");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Movie getMovieByShowTime(int id) throws SQLException {
        try {
            String sql = "select m.MovieID,m.MovieName,m.Description,m.Types,m.Image,m.Actors,m.Status,m.Duration,m.Price, m.Trailer, m.IMDbRating " +
                    "from showtime s join movie_all m on s.MovieID =m.MovieID " +
                    "where s.ShowtimeID=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Movie(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getFloat(11)

                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getLanguageFilm(int id) throws SQLException {
        String sql = "select LanguageName from movie_all where MovieID=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public List<Seat> getSeatByRoom(int id) {
        List<Seat> seats = new ArrayList<Seat>();
        String sql = "select * from seat where RoomID = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                seats.add(new Seat(rs.getInt(2),
                        rs.getInt(1),
                        rs.getString(4),
                        rs.getString(3)));
            }
            return seats;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Ticket> getAllTicket() {
        List<Ticket> list = new ArrayList<Ticket>();
        Ticket ticket = null;
        try {
            String sql = "SELECT " +
                    "t.TicketID, c.CustomerID, c.FullName, " +
                    "DATE_FORMAT(s.StartTime, '%H:%i') AS StartTime, " +
                    "st.SeatID, st.SeatType, t.TicketPrice, " +
                    "DATE_FORMAT(t.BookingDate, '%d-%m-%Y %H:%i') AS BookingDate, " +
                    "t.Status, m.MovieName, m.Image " +
                    "FROM movieticket t " +
                    "JOIN customer c ON t.CustomerID = c.CustomerID " +
                    "JOIN showtime s ON t.ShowtimeID = s.ShowtimeID " +
                    "JOIN seat st ON t.SeatID = st.SeatID " +
                    "JOIN movie m ON s.MovieID = m.MovieID ";

            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ticket = new Ticket();
                ticket.setTicketID(rs.getInt(1));
                ticket.setComboName(rs.getString(3));
                ticket.setSeatID(rs.getString(5));
                ticket.setSeatType(rs.getString(6));
                ticket.setTicketPrice(rs.getFloat(7));
                ticket.setBookingDate(rs.getString(8));
                ticket.setStatus(rs.getString(9));
                ticket.setMovieName(rs.getString(10));
                list.add(ticket);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Ticket> getTicketByCustomer(int CustomerID) {
        List<Ticket> list = new ArrayList<>();
        String sql = "SELECT " +
                "t.TicketID, c.FullName, t.TicketPrice, " +
                "DATE_FORMAT(s.StartTime, '%d-%m-%Y') AS StartDate, " +
                "DATE_FORMAT(s.StartTime, '%H:%i') AS StartTime, " +
                "DATE_FORMAT(t.BookingDate, '%d-%m-%Y %H:%i') AS BookingDate, " +
                "m.MovieName, m.Image, t.BookingID, t.SeatID, t.Status,s.RoomID " +
                "FROM movieticket t " +
                "JOIN customer c ON t.CustomerID = c.CustomerID " +
                "JOIN showtime s ON t.ShowtimeID = s.ShowtimeID " +
                "JOIN movie m ON s.MovieID = m.MovieID " +
                "JOIN (SELECT MIN(TicketID) AS TicketID FROM movieticket GROUP BY BookingID) sub ON t.TicketID = sub.TicketID " +
                "WHERE t.CustomerID = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Ticket ticket = new Ticket();
                ticket.setTicketID(rs.getInt("TicketID"));
                ticket.setComboName(rs.getString("FullName"));
                ticket.setTicketPrice(rs.getFloat("TicketPrice"));
                ticket.setStartDate(rs.getString("StartDate"));
                ticket.setStartTime(rs.getString("StartTime"));
                ticket.setBookingDate(rs.getString("BookingDate"));
                ticket.setMovieName(rs.getString("MovieName"));
                ticket.setImage(rs.getString("Image"));
                ticket.setBookingID(rs.getString("BookingID"));
                ticket.setSeatID(rs.getString("SeatID"));
                ticket.setStatus(rs.getString("Status"));
                ticket.setRoomID(rs.getInt("RoomID"));
                list.add(ticket);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }


    public List<Ticket> getTicketByBooking(int CustomerID) {
        List<Ticket> list = new ArrayList<Ticket>();
        Ticket ticket = null;
        try {
            String sql = "SELECT " +
                    "t.TicketID, c.FullName, t.TicketPrice, " +
                    "DATE_FORMAT(s.StartTime, '%d-%m-%Y') AS StartDate, " +
                    "DATE_FORMAT(s.StartTime, '%H:%i') AS StartTime, " +
                    "DATE_FORMAT(t.BookingDate, '%d-%m-%Y %H:%i') AS BookingDate, " +
                    "m.MovieName, m.Image, t.BookingID, t.SeatID " +
                    "FROM movieticket t " +
                    "JOIN customer c ON t.CustomerID = c.CustomerID " +
                    "JOIN showtime s ON t.ShowtimeID = s.ShowtimeID " +
                    "JOIN movie m ON s.MovieID = m.MovieID " +
                    "WHERE t.CustomerID = ? " +
                    "AND DATE_FORMAT(t.BookingDate, '%Y/%m/%d %H:%i') = (" +
                    "   SELECT MAX(DATE_FORMAT(t2.BookingDate, '%Y/%m/%d %H:%i')) " +
                    "   FROM movieticket t2 " +
                    "   WHERE t2.CustomerID = ?);";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, CustomerID);
            ps.setInt(2, CustomerID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ticket = new Ticket();
                ticket.setTicketID(rs.getInt("TicketID"));
                ticket.setComboName(rs.getString("FullName"));
                ticket.setTicketPrice(rs.getFloat("TicketPrice"));
                ticket.setStartDate(rs.getString("StartDate"));
                ticket.setStartTime(rs.getString("StartTime"));
                ticket.setBookingDate(rs.getString("BookingDate"));
                ticket.setMovieName(rs.getString("MovieName"));
                ticket.setImage(rs.getString("Image"));
                ticket.setBookingID(rs.getString("BookingID"));
                ticket.setSeatID(rs.getString("SeatID"));
                list.add(ticket);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public int countTicketsByBooking(int CustomerID) {
        int count = 0;
        try {
            String sql = "SELECT COUNT(*) AS ticketCount " +
                    "FROM movieticket t " +
                    "JOIN customer c ON t.CustomerID = c.CustomerID " +
                    "JOIN showtime s ON t.ShowtimeID = s.ShowtimeID " +
                    "JOIN movie m ON s.MovieID = m.MovieID " +
                    "WHERE t.CustomerID = ? " +
                    "AND DATE_FORMAT(t.BookingDate, '%Y/%m/%d %H:%i') = (" +
                    "   SELECT MAX(DATE_FORMAT(t2.BookingDate, '%Y/%m/%d %H:%i')) " +
                    "   FROM movieticket t2 " +
                    "   WHERE t2.CustomerID = ?);";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, CustomerID);
            ps.setInt(2, CustomerID);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("ticketCount");
            }

            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    public boolean holdTicket(Seat seat) {
        boolean f = false;
        try {
            String sql = "UPDATE seat SET status=? WHERE SeatID=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, seat.getStatus());
            st.setInt(2, seat.getSeatID());

            int i = st.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public String changeSeat(String realSeat) {
        String seati = "";
        String[] selectedSeats = realSeat.split(",");
        for (int i = 0; i < selectedSeats.length; i++) {
            selectedSeats[i] = selectedSeats[i].substring(1); // Bỏ ký tự đầu tiên
            int seatInt = Integer.parseInt(selectedSeats[i]);
            int realID = (seatInt - 1) * 4 + 1;
            seati += realID + ",";
        }
        seati = seati.substring(0, seati.length() - 1);
        return seati;
    }
    public int countTicketbymonth(Date startdate,Date enddate){
        int count = 0;
        String sql="Select count(*) AS count from movieticket t where t.BookingDate <= ? and t.BookingDate>= ?;";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setDate(2, startdate);
            ps.setDate(1, enddate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt("count");

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }
    public int priceTicketbymonth(Date startdate,Date enddate){
        int count = 0;
        String sql="Select sum(t.TicketPrice) AS sum from movieticket t where t.BookingDate <= ? and t.BookingDate>= ?;";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setDate(2, startdate);
            ps.setDate(1, enddate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt("sum");

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }
    public int countTicketbymonth2(Date startdate,Date enddate){
        int count = 0;
        String sql="Select count(*) AS count from showtime t where t.ShowDate <= ? and t.ShowDate>= ?;";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setDate(2, startdate);
            ps.setDate(1, enddate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt("count");

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }
    public int[] getYear(){
        int years[] = new int[10];
        for (int j=0;j<years.length;j++){
            years[j]=0;
        }
        String sql = "SELECT distinct year(BookingDate)  as year FROM cinemamanagersystem.movieticket;";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            int i=0;
            while (rs.next()) {
                int year = rs.getInt("year");
                 years[i]=year;
                i++;
            }

        }catch(SQLException e){
            e.printStackTrace();
        }
        return years;
    }


    public static void main(String[] args) {
        TicketDAO dal = new TicketDAO(DBContext.getConn());
        int[] y = dal.getYear();
        for (int i = 0; i < y.length; i++) {
            System.out.println(y[i]+" ");
        }
    }
}
