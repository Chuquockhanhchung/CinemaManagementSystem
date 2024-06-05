package model;

//import java.util.Date;
import java.sql.Date;

public class Movie {
    private int MovieID ;
    private String MovieName ;
    private String Description  ;
    private int MovieType ;
    private int Director;
    private int Actors ;
    private Date ReleaseDate;
    private int Duration;
    private int Language;
    private String Image;
    private float IMDbRating;
    private String Status;

    //================
    private String MovieType_Name;
    private String Director_Name;

    public int getMovieType() {
        return MovieType;
    }

    public void setMovieType(int movieType) {
        MovieType = movieType;
    }

    public String getMovieType_Name() {
        return MovieType_Name;
    }

    public void setMovieType_Name(String movieType_Name) {
        MovieType_Name = movieType_Name;
    }

    public String getDirector_Name() {
        return Director_Name;
    }

    public void setDirector_Name(String director_Name) {
        Director_Name = director_Name;
    }

    public Movie() {
    }

    public int getMovieID() {
        return MovieID;
    }

    public void setMovieID(int movieID) {
        MovieID = movieID;
    }

    public String getMovieName() {
        return MovieName;
    }

    public void setMovieName(String movieName) {
        MovieName = movieName;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public int getMovieTYpe() {
        return MovieType;
    }

    public void setMovieTYpe(int movieTYpe) {
        MovieType = movieTYpe;
    }

    public int getDirector() {
        return Director;
    }

    public void setDirector(int director) {
        Director = director;
    }

    public int getActors() {
        return Actors;
    }

    public void setActors(int actors) {
        Actors = actors;
    }

    public Date getReleaseDate() {
        return ReleaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        ReleaseDate = releaseDate;
    }

    public int getDuration() {
        return Duration;
    }

    public void setDuration(int duration) {
        Duration = duration;
    }

    public int getLanguage() {
        return Language;
    }

    public void setLanguage(int language) {
        Language = language;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String image) {
        Image = image;
    }

    public float getIMDbRating() {
        return IMDbRating;
    }

    public void setIMDbRating(float IMDbRating) {
        this.IMDbRating = IMDbRating;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }
}

