/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartDB {

    private Connection con;
    PreparedStatement statement;
    ResultSet result;
    public CartDB() {
        con = DatabaseConnector.connect();
    }
     
    public List<Cart> getCartItems() {

        
        
        List<Cart> productList = new ArrayList<>();

        try {
            String sql = "SELECT * FROM cart";
            statement = con.prepareStatement(sql);
            result = statement.executeQuery();
            
            while (result.next()) {
                int product_id = result.getInt("product_id");
                String name = result.getString("name");
                int quantity = result.getInt("quantity");
                double price = result.getDouble("price");
              
                Cart cart = new Cart(product_id, name, quantity, price);
                productList.add(cart);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return productList;
    }

    public int insert_into_cart(int id, String name, int quantity, Double price) {
       
        int rows_affected = 0;
//        List<Product> productList = new ArrayList<>();
        int last_inserted_id=0;
        try {
            String sql = "INSERT INTO cart(product_id, name,quantity,price) VALUES(?,?,?,?)";
            statement = con.prepareStatement(sql);
            statement.setInt(1, id);
            statement.setString(2, name);
            statement.setInt(3, quantity);
            statement.setDouble(4, price);
            rows_affected = statement.executeUpdate();
            

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rows_affected;
    }
   
    public void clear_cart_items() {
        try {
           
            String sql = "DELETE FROM cart";
            statement = con.prepareStatement(sql);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    public double total_amount()
    {
        double total=0.0;
        try {
            String sql = "SELECT * FROM cart";
            statement = con.prepareStatement(sql);
            result = statement.executeQuery();
            while (result.next()) {
                //int product_id = result.getInt("product_id");
                //String name = result.getString("name");
                int quantity = result.getInt("quantity");
                double price = result.getDouble("price");
                total=total+price*quantity;
                //Cart cart = new Cart(product_id, name, quantity, price);
                //productList.add(cart);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        
        return total;
    }
    public int getSalesman_id(String username)
    {
        int id=0;
        PreparedStatement statement;
        ResultSet result;
        try {
            String sql = "SELECT id FROM salesman WHERE username=?";
            statement = con.prepareStatement(sql);
            statement.setString(1, username);
            
            result = statement.executeQuery();
            if (result.next()) {
                id = result.getInt("id");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return id;
    }
    
}
