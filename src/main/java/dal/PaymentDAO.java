package dal;

import model.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PaymentDAO {

    private final Connection con;

    public PaymentDAO(Connection con) {
        this.con = con;

    }

    public Ticket getTicketByID(String customerID) {
        String sql = "SELECT " +
                "t.TicketID, c.CustomerID, c.FullName, " +
                "DATE_FORMAT(s.StartTime, '%H:%i') AS StartTime, " +
                "st.SeatID, st.SeatType, t.TicketPrice, " +
                "DATE_FORMAT(t.BookingDate, '%d-%m-%Y') AS BookingDate, " +
                "t.Status, m.MovieName, m.Image " +
                "FROM movieticket t " +
                "JOIN customer c ON t.CustomerID = c.CustomerID " +
                "JOIN showtime s ON t.ShowtimeID = s.ShowtimeID " +
                "JOIN seat st ON t.SeatID = st.SeatID " +
                "JOIN movie m ON s.MovieID = m.MovieID " +
                "WHERE c.CustomerID = ?";

        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, customerID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Ticket ticket = new Ticket();
                ticket.setTicketID(rs.getString(1));
                ticket.setCustomerID(rs.getString(2));
                ticket.setFullName(rs.getString(3));
                ticket.setStartTime(rs.getString(4));
                ticket.setSeatID(rs.getString(5));
                ticket.setSeatType(rs.getString(6));
                ticket.setTicketPrice(rs.getFloat(7));
                ticket.setBookingDate(rs.getString(8));
                ticket.setStatus(rs.getString(9));
                ticket.setMovieName(rs.getString(10));
                ticket.setImage(rs.getString(11));

                return ticket;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
<<<<<<< Updated upstream
=======
    public Customer getCustomerByID(String customerID) {
        try {
            String sql = "SELECT * from customer where CustomerID= ? ";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customer customer = new Customer(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)


                );
                return customer;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
>>>>>>> Stashed changes

}
