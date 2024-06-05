package model;

public class Seat {
    private int seatNo;
    private int RoomID;
    private String Status;
    private String SeatType;
    private int index;

    public Seat() {
    }

    public Seat(int roomID, int seatNo, String seatType, String status) {
        RoomID = roomID;
        this.seatNo = seatNo;
        SeatType = seatType;
        Status = status;
        index = (seatNo-RoomID)/4+1;
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

    public int getSeatNo() {
        return seatNo;
    }

    public void setSeatNo(int seatNo) {
        this.seatNo = seatNo;
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
                ", seatNo=" + seatNo +
                ", Status='" + Status + '\'' +
                ", SeatType='" + SeatType + '\'' +
                ", index=" + index +
                '}';
    }
}
