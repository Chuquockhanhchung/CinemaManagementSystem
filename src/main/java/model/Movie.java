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
    private String ReleaseDate;
    private String status;
    private int duration;
    private int price;
    private String director;
    private int languages;
    

    public Movie() {
    }

    public Movie(int MovieID, String name, String description, String type, String image, String actor, String ReleaseDate, String status, int duration, int price, String director, int languages) {
        this.MovieID = MovieID;
        this.name = name;
        this.description = description;
        this.type = type;
        this.image = image;
        this.actor = actor;
        this.ReleaseDate = ReleaseDate;
        this.status = status;
        this.duration = duration;
        this.price = price;
        this.director = director;
        this.languages = languages;
    }

    public int getMovieID() {
        return MovieID;
    }

    public void setMovieID(int MovieID) {
        this.MovieID = MovieID;
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

    public String getReleaseDate() {
        return ReleaseDate;
    }

    public void setReleaseDate(String ReleaseDate) {
        this.ReleaseDate = ReleaseDate;
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

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public int getLanguages() {
        return languages;
    }

    public void setLanguages(int languages) {
        this.languages = languages;
    }

    
   
}