/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * checks whether he or she is a correct user.
 * @author
 */
public class DatabaseConnector {
    private static final String URL = "jdbc:mysql://localhost:3306/inventory";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";
    
    public static Connection connect(){
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return con;
    }
}
