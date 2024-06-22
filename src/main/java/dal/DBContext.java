/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.*;
import model.*;
import java.util.ArrayList;

/**
 *
 * @author hi
 */
public class DBContext {

    protected static Connection conn;

    private static String URL = "jdbc:mysql://localhost:3306/cinemamanagersystem";

    private static String USER = "root";

    private static String PASS = "thuhoai123";

    public static Connection getConn() {
        try {
            System.out.println("URL --->" + URL);
            System.out.println("USER --->" + USER);
            System.out.println("PASS --->" + PASS);
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASS);
            System.out.println("Successfully connected to the database.");
        } catch (Exception e) {
            System.out.println("Failed to connect to the database.");
            e.printStackTrace(); // Print stack trace for debugging
            throw new RuntimeException("Failed to connect to the database.", e);
        }
        return conn;
    }
    public static void main(String[] args) {
        try (Connection con = getConn()) {
            MovieDAO dao = new MovieDAO(con);
            ArrayList<ShowTime> list = dao.getShowTime(44);
            System.out.println(list.get(0).getDayName());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

    
    
//    private static String URL = "jdbc:mysql://cinemamanagementsystem.mysql.database.azure.com:3306/cinemamanagersystem?useSSL=true";
//
//    private static String USER = "cinema";
//
//    private static String PASS = "Rapchieuphim@";
//
//    public static Connection getConn() {
//        try {
//            System.out.println("URL --->" + URL);
//            System.out.println("USER --->" + USER);
//            System.out.println("PASS --->" + PASS);
//            Class.forName("com.mysql.jdbc.Driver");
//            conn = DriverManager.getConnection(URL, USER, PASS);
//            System.out.println("Successfully connected to the database.");
//        } catch (Exception e) {
//            System.out.println("Failed to connect to the database.");
//            e.printStackTrace(); // Print stack trace for debugging
//            throw new RuntimeException("Failed to connect to the database.", e);
//        }
//        return conn;
//    }
//    public static void main(String[] args) {
//        try (Connection con = getConn()) {
//            MovieDAO dao = new MovieDAO(con);
//            ArrayList<ShowTime> list = dao.getShowTime(44);
//            System.out.println(list.get(0).getDayName());
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//}

    
//    private static String URL = "jdbc:sqlserver://SUPPER:1433;DatabaseName=ShopBacNamHai;user=sa;password=123;encrypt=true;trustServerCertificate=true;";
//
//    private static String USER = "sa";
//
//    private static String PASS = "123";
//
//    public static Connection getConn() {
//        try {
//            System.out.println("URL --->" + URL);
//            System.out.println("USER --->" + USER);
//            System.out.println("PASS --->" + PASS);
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            conn = DriverManager.getConnection(URL, USER, PASS);
//            System.out.println("Successfully connected to the database.");
//        } catch (Exception e) {
//            System.out.println("Failed to connect to the database.");
//            e.printStackTrace(); // Print stack trace for debugging
//            throw new RuntimeException("Failed to connect to the database.", e);
//        }
//        return conn;
//    }


