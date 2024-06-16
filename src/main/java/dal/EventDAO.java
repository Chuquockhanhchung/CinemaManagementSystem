package dal;

import model.Event;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
            String sql = "INSERT INTO event (EventName, EventCode, EventDetail, StartDate, EndDate) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql) ;
            ps.setString(1, event.getEventName());
            ps.setString(2, event.getEventCode());
            ps.setString(3, event.getEventDetail());
            ps.setString(4, event.getStartDate());
            ps.setString(5, event.getEndDate());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return f;
    }

    public List<Event> getAllEvent() {
        List<Event> list = new ArrayList<Event>();
        Event event = null;
        try {
            String sql = "Select * From event WHERE Status = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "Active");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                event = new Event();
                event.setEventID(rs.getInt(1));
                event.setEventName(rs.getString(2));
                event.setEventCode(rs.getString(3));
                event.setEventDetail(rs.getString(5));
                event.setEventImage(rs.getString(6));
                event.setStartDate(rs.getString(7));
                event.setEndDate(rs.getString(8));
                event.setDiscount(rs.getFloat(9));
                event.setStatus(rs.getString(10));

                list.add(event);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
