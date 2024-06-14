package model;

public class Room {
    private int roomId;
    private String roomName;
    private String Status;
    private int capacity;
    public Room(int roomId, String roomName, String Status, int capacity) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.Status = Status;
        this.capacity = capacity;

    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    @Override
    public String toString() {
        return "Room{" +
                "roomId=" + roomId +
                ", roomName='" + roomName + '\'' +
                ", Status='" + Status + '\'' +
                ", capacity=" + capacity +
                '}';
    }
}
