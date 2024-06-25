package model;

import java.util.List;

public class Ticket {

    private int TicketID;
    private int CustomerID;
    private String FullName;
    private int ShowtimeID;
    private String BookingID;
    private String StartTime;
    private String StartDate;
    private String SeatID;
    private List<String> seatIDs;
    private String SeatType;
    private String EventName;
    private float TicketPrice;
    private String BookingDate;
    private String Status;
    private String ComboName;
    private String MovieName;
    private String Image;

    public Ticket() {
        super();
    }


    public Ticket(int customerID, int showtimeID, String seatID, float ticketPrice, String status) {
        CustomerID = customerID;
        ShowtimeID = showtimeID;
        SeatID = seatID;
        TicketPrice = ticketPrice;
        Status = status;
    }

    public Ticket(int CustomerId, String name, String time, String seater, String s, String s1, float price, String string, String hold, String s2, String name1, String SeatId) {
        CustomerID = CustomerId;
        FullName = name;
        StartTime = time;
        SeatID = seater;
        EventName = s;
        ComboName = s1;
        TicketPrice = price;
        Status = string;
        BookingDate = hold;
        MovieName = s2;
        Image = name1;
        SeatType = SeatId;
    }

    @Override
    public String toString() {
        return "Ticket{" +
                "TicketID=" + TicketID +
                ", CustomerID=" + CustomerID +
                ", FullName='" + FullName + '\'' +
                ", ShowtimeID=" + ShowtimeID +
                ", StartTime='" + StartTime + '\'' +
                ", SeatID=" + SeatID +
                ", SeatType='" + SeatType + '\'' +
                ", EventName='" + EventName + '\'' +
                ", TicketPrice=" + TicketPrice +
                ", BookingDate='" + BookingDate + '\'' +
                ", Status='" + Status + '\'' +
                ", ComboName='" + ComboName + '\'' +
                ", MovieName='" + MovieName + '\'' +
                ", Image='" + Image + '\'' +
                '}';
    }

    public List<String> getSeatIDs() {
        return seatIDs;
    }

    public void setSeatIDs(List<String> seatIDs) {
        this.seatIDs = seatIDs;
    }

    public int getTicketID() {
        return TicketID;
    }

    public void setTicketID(int ticketID) {
        TicketID = ticketID;
    }

    public String getBookingID() {
        return BookingID;
    }

    public void setBookingID(String bookingID) {
        BookingID = bookingID;
    }

    public int getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(int customerID) {
        CustomerID = customerID;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
    }

    public int getShowtimeID() {
        return ShowtimeID;
    }

    public void setShowtimeID(int showtimeID) {
        ShowtimeID = showtimeID;
    }

    public String getStartTime() {
        return StartTime;
    }

    public void setStartTime(String startTime) {
        StartTime = startTime;
    }

    public String getSeatID() {
        return SeatID;
    }

    public void setSeatID(String seatID) {
        SeatID = seatID;
    }

    public String getSeatType() {
        return SeatType;
    }

    public void setSeatType(String seatType) {
        SeatType = seatType;
    }

    public String getEventName() {
        return EventName;
    }

    public void setEventName(String eventName) {
        EventName = eventName;
    }

    public float getTicketPrice() {
        return TicketPrice;
    }

    public void setTicketPrice(float ticketPrice) {
        TicketPrice = ticketPrice;
    }

    public String getBookingDate() {
        return BookingDate;
    }

    public void setBookingDate(String bookingDate) {
        BookingDate = bookingDate;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public String getComboName() {
        return ComboName;
    }

    public void setComboName(String comboName) {
        ComboName = comboName;
    }

    public String getMovieName() {
        return MovieName;
    }

    public void setMovieName(String movieName) {
        MovieName = movieName;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String image) {
        Image = image;
    }

    public String getStartDate() {
        return StartDate;
    }

    public void setStartDate(String startDate) {
        StartDate = startDate;
    }
}
