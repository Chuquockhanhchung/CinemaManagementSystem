package model;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 *
 * @author Chi
 */
public class Customer {

    private String id;
    private int idCustomer;
    private String name;
    private String email;
    private String picture;
    private String phone;
    private String pass;
    private int role;
    private String date;
    private String status;
    private String DOB;

    public Customer() {
        super();
    }

    public Customer(int idCustomer, String id, String name, String email, String phone, String picture) {

        this.idCustomer = idCustomer;
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.picture = picture;
    }

    public Customer(String id, String pass, int role, String date, String status) {
        this.id = id;
        this.pass = pass;
        this.role = role;
        this.date = date;
        this.status = status;
    }
    public Customer(String id, String fullname, String email, String phone, String picture) {
        this.id = id;
        this.name = fullname;
        this.email = email;
        this.phone = phone;
        this.picture = picture;
    }

    public String getStatus() {
        return status;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
         return (phone != null) ? phone : ""; 
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStauts() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
