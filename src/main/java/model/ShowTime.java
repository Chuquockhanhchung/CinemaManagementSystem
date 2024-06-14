/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Chi
 */
public class ShowTime {
    private int showTimeID;
    private int roomID;
    private int MovieID;
    private String dayName;
    private int Duration;
    private int MaxTickets;
    private int day;
    private int month;
    private String time;
    private String date;

    public ShowTime() {
    }

    public ShowTime(int showTimeID, int roomID, int MovieID, String dayName, int Duration, int MaxTickets, int day, int month, String time, String date) {
        this.showTimeID = showTimeID;
        this.roomID = roomID;
        this.MovieID = MovieID;
        this.dayName = dayName;
        this.Duration = Duration;
        this.MaxTickets = MaxTickets;
        this.day = day;
        this.month = month;
        this.time = time;
        this.date = date;
    }

    public int getShowTimeID() {
        return showTimeID;
    }

    public void setShowTimeID(int showTimeID) {
        this.showTimeID = showTimeID;
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public int getMovieID() {
        return MovieID;
    }

    public void setMovieID(int MovieID) {
        this.MovieID = MovieID;
    }

    public String getDayName() {
        return dayName;
    }

    public void setDayName(String dayName) {
        this.dayName = dayName;
    }

    public int getDuration() {
        return Duration;
    }

    public void setDuration(int Duration) {
        this.Duration = Duration;
    }

    public int getMaxTickets() {
        return MaxTickets;
    }

    public void setMaxTickets(int MaxTickets) {
        this.MaxTickets = MaxTickets;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "ShowTime{" +
                "date='" + date + '\'' +
                ", showTimeID=" + showTimeID +
                ", roomID=" + roomID +
                ", MovieID=" + MovieID +
                ", dayName='" + dayName + '\'' +
                ", Duration=" + Duration +
                ", MaxTickets=" + MaxTickets +
                ", day=" + day +
                ", month=" + month +
                ", time='" + time + '\'' +
                '}';
    }
}