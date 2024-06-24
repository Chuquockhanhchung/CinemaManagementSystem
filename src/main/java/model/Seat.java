package model;

public class Seat {
    private int SeatID;
    private int RoomID;
    private String Status;
    private String SeatType;
    private int index;

    public Seat() {
    }

    public Seat(int roomID, int SeatID, String seatType, String status) {
        RoomID = roomID;
        this.SeatID = SeatID;
        SeatType = seatType;
        Status = status;
        index = (SeatID-RoomID)/4+1;
    }
    public int getIndex(){
        return index;
    }
    public int getRoomID() {
        return RoomID;
    }

    public void setRoomID(int roomID) {
        RoomID = roomID;
    }

    public int getSeatID() {
        return SeatID;
    }

    public void setSeatID(int seatID) {
        SeatID = seatID;
    }


    public String getSeatType() {
        return SeatType;
    }

    public void setSeatType(String seatType) {
        SeatType = seatType;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    @Override
    public String toString() {
        return "Seat{" +
                "RoomID=" + RoomID +
                ", seatNo=" + SeatID +
                ", Status='" + Status + '\'' +
                ", SeatType='" + SeatType + '\'' +
                ", index=" + index +
                '}';
    }
}
