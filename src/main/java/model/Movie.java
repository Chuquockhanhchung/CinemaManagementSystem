package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Chi
 */
public class Movie {

    private int id;
    private String name;
    private String description;
    private String type;
    private String imge;
    private String actor;
    private String status;
    private int totalMovieType;

    public Movie(int id, String name, String description, String type, String imge, String actor, String status) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.type = type;
        this.imge = imge;
        this.actor = actor;
        this.status = status;
    }

    public Movie() {
    }

    ;
 public int getId() {
        return id;

    }

    public void setId(int id) {
        this.id = id;

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

    public String getImge() {
        return imge;
    }

    public void setImge(String imge) {
        this.imge = imge;

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

    public int getTotalMovieType() {

        return totalMovieType;

    }

    public void setTotalMovieType(int totalMovieType) {
        this.totalMovieType = totalMovieType;

    }

}
