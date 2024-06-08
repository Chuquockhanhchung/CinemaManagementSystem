package model;

public class Ticket {

    private String TicketID;
    private String CustomerID;
    private String FullName;
    private String StartTime;
    private String SeatID;
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


    public Ticket( String customerID, String fullName, String startTime, String seatID, String seatType, String eventName, float ticketPrice, String bookingDate, String status, String comboName, String movieName, String image) {
        CustomerID = customerID;
        FullName = fullName;
        StartTime = startTime;
        SeatID = seatID;
        SeatType = seatType;
        EventName = eventName;
        TicketPrice = ticketPrice;
        BookingDate = bookingDate;
        Status = status;
        ComboName = comboName;
        MovieName = movieName;
        Image = image;
    }

    public String getTicketID() {
        return TicketID;
    }

    public void setTicketID(String ticketID) {
        TicketID = ticketID;
    }

    public String getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(String customerID) {
        CustomerID = customerID;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
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
}
