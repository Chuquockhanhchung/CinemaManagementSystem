package dal;

import model.Event;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EventDAO {

    private final Connection con;

    public EventDAO(Connection con) {
        this.con = con;

    }

    public boolean addEvent(Event event) {
        boolean f = false;
        try {
            String sql = "INSERT INTO event (EventName, EventCode, EventDetail, EventImage, StartDate, EndDate, Discount, Status) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, event.getEventName());
            ps.setString(2, event.getEventCode());
            ps.setString(3, event.getEventDetail());
            ps.setString(4, event.getEventImage());
            ps.setString(5, event.getStartDate());
            ps.setString(6, event.getEndDate());
            ps.setFloat(7, event.getDiscount());
            ps.setInt(8, event.getStatus());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return f;
    }
    public int countevented(Date date){
        int count = 0;
        String sql = "select count(*) from event e where  e.StartDate<?";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setDate(1, date);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }
    public List<Event> getAllEvent() {
        List<Event> list = new ArrayList<>();
        Event event = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM event WHERE Status IN ('1', '0')";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                event = new Event();
                event.setEventID(rs.getInt(1));
                event.setEventName(rs.getString(2));
                event.setEventCode(rs.getString(3));
                event.setEventDetail(rs.getString(4));
                event.setEventImage(rs.getString(5));
                event.setStartDate(rs.getString(6));
                event.setEndDate(rs.getString(7));
                event.setDiscount(rs.getFloat(8));
                event.setStatus(rs.getInt(9));

                list.add(event);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng tài nguyên
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return list;
    }

    public boolean deleteEvent(int eventID) {
        boolean deleted = false;
        PreparedStatement ps = null;

        try {
            String sql = "DELETE FROM event WHERE EventID = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, eventID);

            int rowsDeleted = ps.executeUpdate();
            if (rowsDeleted > 0) {
                deleted = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng tài nguyên
            try {
                if (ps != null) ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return deleted;
    }

    public boolean editEvent(Event event) {
        boolean updated = false;
        PreparedStatement ps = null;

        try {
            String sql = "UPDATE event SET EventName = ?, EventCode = ?, EventDetail = ?, EventImage = ?, "
                    + "StartDate = ?, EndDate = ?, Discount = ?, Status = ? WHERE EventID = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, event.getEventName());
            ps.setString(2, event.getEventCode());
            ps.setString(3, event.getEventDetail());
            ps.setString(4, event.getEventImage());
            ps.setString(5, event.getStartDate());
            ps.setString(6, event.getEndDate());
            ps.setFloat(7, event.getDiscount());
            ps.setInt(8, event.getStatus());
            ps.setInt(9, event.getEventID());

            int rowsUpdated = ps.executeUpdate();
            if (rowsUpdated > 0) {
                updated = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng tài nguyên
            try {
                if (ps != null) ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return updated;
    }

    public Event getEventByID(int EventID) {
        Event event = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM event WHERE EventID = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, EventID);
            rs = ps.executeQuery();

            if (rs.next()) {
                event = new Event();
                event.setEventID(rs.getInt("EventID"));
                event.setEventName(rs.getString("EventName"));
                event.setEventCode(rs.getString("EventCode"));
                event.setEventDetail(rs.getString("EventDetail"));
                event.setEventImage(rs.getString("EventImage"));
                event.setStartDate(rs.getString("StartDate"));
                event.setEndDate(rs.getString("EndDate"));
                event.setDiscount(rs.getFloat("Discount"));
                event.setStatus(rs.getInt("Status"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng tài nguyên
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return event;
    }
}
