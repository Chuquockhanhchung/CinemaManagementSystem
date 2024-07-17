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
                "DATE_FORMAT(t.BookingDate, '%d-%m-%Y %H:%i') AS BookingDate, " +
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
                ticket.setTicketID(rs.getInt(1));
                ticket.setCustomerID(rs.getInt(2));
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
    public Customer getCustomerByID(int customerID) {
        try {
            String sql = "SELECT * from customer where CustomerID=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, customerID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customer customer = new Customer(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                );
                return customer;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public boolean addTicket(Ticket ticket) {
        boolean f = false;
        try {
            String sql = "INSERT INTO movieticket (CustomerID, ShowtimeID, SeatID, BookingID, TicketPrice, BookingDate, Status,ComboID) VALUES (?, ?, ?, ?, ?, now(), 'successful',?)";
            PreparedStatement ps = con.prepareStatement(sql);

            for (String seatID : ticket.getSeatIDs()) {
                ps.setInt(1, ticket.getCustomerID());
                ps.setInt(2, ticket.getShowtimeID());
                ps.setString(3, seatID);
                ps.setString(4, ticket.getBookingID());
                ps.setFloat(5, ticket.getTicketPrice());
                // Check if the ComboId list is not empty before accessing it
                if (ticket.getComboId() != null && !ticket.getComboId().isEmpty()) {
                    ps.setInt(6, ticket.getComboId().get(0).getId());
                } else {
                    // Handle the case where ComboId is empty or null
                    ps.setNull(6, java.sql.Types.INTEGER);
                }

                int i = ps.executeUpdate();
                if (i == 1) {
                    f = true;
                } else {
                    f = false;
                    break;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return f;
    }

}
