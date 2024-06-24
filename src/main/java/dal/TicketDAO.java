package dal;

import model.Movie;
import model.Room;
import model.Seat;
import model.Ticket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TicketDAO extends DBContext{
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
                return new Room(rs.getInt("RoomID"), rs.getString("RoomName"), rs.getString("Status"), rs.getInt("Capacity"));
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public String getDateByShowtime(int id) throws SQLException {
        try{
            String sql ="select StartTime from showtime where ShowtimeID = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString("StartTime");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public Movie getMovieByShowTime(int id) throws SQLException {
        try {
            String sql = "select m.MovieID,m.MovieName,m.Description,m.Types,m.Image,m.Actors,m.Status,m.Duration,m.Price, m.Trailer, m.IMDbRating,m.ReleaseDate " +
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
                        rs.getDate(10),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getFloat(11)

                );
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public String getLanguageFilm(int id) throws SQLException {
        String sql="select LanguageName from movie_all where MovieID=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
    public List<Seat> getSeatByRoom(int id){
        List<Seat> seats = new ArrayList<Seat>();
        String sql="select * from seat where RoomID = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                seats.add(new Seat(rs.getInt(2),
                        rs.getInt(1),
                        rs.getString(4),
                        rs.getString(3)));
            }
            return seats;
        }catch (SQLException e) {
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

    public List<Ticket> getTicketByBooking(int CustomerID) {
        List<Ticket> list = new ArrayList<Ticket>();
        Ticket ticket = null;
        try {
            String sql = "SELECT *\n" +
                    "FROM movieticket\n" +
                    "WHERE CustomerID = ?\n" +
                    "  AND DATE_FORMAT(BookingDate, '%Y/%m/%d %H') = (\n" +
                    "      SELECT MAX(DATE_FORMAT(BookingDate, '%Y/%m/%d %H'))\n" +
                    "      FROM movieticket\n" +
                    "      WHERE CustomerID = ?\n" +
                    "  );";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, CustomerID);
            ps.setInt(2, CustomerID);
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



    public static void main(String[] args) {
        TicketDAO dal = new TicketDAO(DBContext.getConn());
        try {
            System.out.println(dal.getMovieByShowTime(1));
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
