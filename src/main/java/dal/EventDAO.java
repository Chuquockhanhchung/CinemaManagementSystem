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
            PreparedStatement ps = con.prepareStatement(sql) ;
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
        List<Event> list = new ArrayList<Event>();
        Event event = null;
        try {
            String sql = "Select * From event WHERE Status = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "1");
            ResultSet rs = ps.executeQuery();
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
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
