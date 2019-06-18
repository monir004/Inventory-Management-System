/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author sakib
 */
public class SalesmanDB {
    
    private Connection con;
    
    public SalesmanDB() {
        con = DatabaseConnector.connect();
    }
    
    public boolean auth(String username, String password){
        PreparedStatement statement;
        ResultSet result;
        try {
            String sql = "SELECT * FROM salesman WHERE username=? AND password=?";
            statement = con.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            result = statement.executeQuery();
            if (result.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
