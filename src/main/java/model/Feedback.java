package model;

import java.sql.Date;
import java.util.ArrayList;

public class Feedback {
    private int feedbackID;
    private int movieID;
    private Customer CustomerID;
    private String Feedback;
    private Date FeedbackDate;
    private int rate;
    private int replyID;
    private ArrayList<Feedback> Relpies;

    public Feedback() {}

    public Feedback(int feedbackID, int movieID,Customer customerID, String feedback, Date feedbackDate,int rate ) {
        CustomerID = customerID;
        Feedback = feedback;
        FeedbackDate = feedbackDate;
        this.feedbackID = feedbackID;
        this.movieID = movieID;
        this.rate = rate;
    }
    public Feedback( int movieID,Customer customerID, String feedback, Date feedbackDate,int rate,int replyID ) {
        CustomerID = customerID;
        Feedback = feedback;
        FeedbackDate = feedbackDate;
        this.movieID = movieID;
        this.rate = rate;
        this.replyID = replyID;
    }

    public ArrayList<model.Feedback> getRelpies() {
        return Relpies;
    }

    public void setRelpies(ArrayList<model.Feedback> relpies) {
        Relpies = relpies;
    }

    public int getReplyID() {
        return replyID;
    }

    public void setReplyID(int replyID) {
        this.replyID = replyID;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public Customer getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(Customer customerID) {
        CustomerID = customerID;
    }

    public String getFeedback() {
        return Feedback;
    }

    public void setFeedback(String feedback) {
        Feedback = feedback;
    }

    public Date getFeedbackDate() {
        return FeedbackDate;
    }

    public void setFeedbackDate(Date feedbackDate) {
        FeedbackDate = feedbackDate;
    }

    public int getFeedbackID() {
        return feedbackID;
    }

    public void setFeedbackID(int feedbackID) {
        this.feedbackID = feedbackID;
    }

    public int getMovieID() {
        return movieID;
    }

    public void setMovieID(int movieID) {
        this.movieID = movieID;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "CustomerID=" + CustomerID.toString() +
                ", feedbackID=" + feedbackID +
                ", movieID=" + movieID +
                ", Feedback='" + Feedback + '\'' +
                ", FeedbackDate=" + FeedbackDate +
                '}';
    }
}
