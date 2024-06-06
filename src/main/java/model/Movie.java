package model;

import java.sql.Date;

public class Movie {
    private int MovieID;
    private String MovieName;
    private String MovieDescription;
    private String MovieType;
    private String MovieDirector;
    private String MovieActor;
    private Date ReleaseDate;
    private int MovieDuration;
    private String Language;
    private String Image;

    private float MovieRating;
    private String Status;
    private int Price;

    public Movie() {
    }

    public Movie(int movieID, String movieName, String movieDescription, String movieType, String movieDirector,
            String movieActor, Date releaseDate, int movieDuration, String language, String image, float movieRating,
            String status, int price) {
        MovieID = movieID;
        MovieName = movieName;
        MovieDescription = movieDescription;
        MovieType = movieType;
        MovieDirector = movieDirector;
        MovieActor = movieActor;
        ReleaseDate = releaseDate;
        MovieDuration = movieDuration;
        Language = language;
        Image = image;
        MovieRating = movieRating;
        Status = status;
        Price = price;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String image) {
        Image = image;
    }

    public float getMovieRating() {
        return MovieRating;
    }

    public void setMovieRating(float IMDbRating) {
        this.MovieRating = IMDbRating;
    }
    public String getLanguage() {
        return Language;
    }

    public void setLanguage(String language) {
        Language = language;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public Date getReleaseDate() {
        return ReleaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        ReleaseDate = releaseDate;
    }

    public String getMovieType() {
        return MovieType;
    }

    public void setMovieType(String movieType) {
        MovieType = movieType;
    }



    public String getMovieName() {
        return MovieName;
    }

    public void setMovieName(String movieName) {
        MovieName = movieName;
    }

    public int getMovieID() {
        return MovieID;
    }

    public void setMovieID(int movieID) {
        MovieID = movieID;
    }

    public String getMovieActor(String string) {
        return MovieActor;
    }

    public void setMovieActor(String movieActor) {
        MovieActor = movieActor;
    }

    public String getMovieDescription() {
        return MovieDescription;
    }

    public void setMovieDescription(String movieDescription) {
        MovieDescription = movieDescription;
    }

    public String getMovieDirector() {
        return MovieDirector;
    }

    public void setMovieDirector(String movieDirector) {
        MovieDirector = movieDirector;
    }

    public int getMovieDuration() {
        return MovieDuration;
    }

    public void setMovieDuration(int movieDuration) {
        MovieDuration = movieDuration;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "Image='" + Image + '\'' +
                ", MovieID=" + MovieID +
                ", MovieName='" + MovieName + '\'' +
                ", MovieDescription='" + MovieDescription + '\'' +
                ", MovieType=" + MovieType +
                ", MovieDirector=" + MovieDirector +
                ", MovieActor='" + MovieActor + '\'' +
                ", ReleaseDate=" + ReleaseDate +
                ", MovieDuration=" + MovieDuration +
                ", Language=" + Language +
                ", MovieRating='" + MovieRating + '\'' +
                ", Status='" + Status + '\'' +
                ", Price=" + Price +
                '}';
    }
}
