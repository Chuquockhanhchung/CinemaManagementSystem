package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.sql.Date;

/**
 *
 * @author Chi
 */
public class Movie {

    private int MovieID;
    private String name;
    private String description;
    private String type;
    private String image;
    private String actor;
    private Date ReleaseDate;
    private String status;
    private int duration;
    private int price;

    public Movie() {
    }

    public Movie(int MovieID, String name, String description, String type, String imge, String actor,Date releaseDate, String status, int duration,int price) {
        this.MovieID = MovieID;
        this.name = name;
        this.description = description;
        this.type = type;
        this.image = imge;
        this.ReleaseDate=releaseDate;
        this.actor = actor;
        this.status = status;
        this.duration = duration;
        this.price = price;
    }

    public Date getReleaseDate() {
        return ReleaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        ReleaseDate = releaseDate;
    }

    public int getMovieID() {
        return MovieID;
    }

    public void setMovieID(int movieID) {
        MovieID = movieID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "actor='" + actor + '\'' +
                ", description='" + description + '\'' +
                ", duration=" + duration +
                ", MovieID=" + MovieID +
                ", image='" + image + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", ReleaseDate=" + ReleaseDate +
                ", status='" + status + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}