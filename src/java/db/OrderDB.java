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

public class OrderDB {
    int last_id = 0;
    private Connection con;
    PreparedStatement statement;
    ResultSet result;

    public OrderDB() {
        con = DatabaseConnector.connect();
    }

    public List<Order> getOrderItems() {

        
        
        List<Order> orderLists = new ArrayList<>();

        try {
            String sql = "SELECT * FROM orders";
            statement = con.prepareStatement(sql);
            result = statement.executeQuery();
            
            while (result.next()) {
                int id = result.getInt("id");
                int salesman_id = result.getInt("salesman_id");
                String salesman = result.getString("salesman");
                    String customer = result.getString("customer");
                String purchase_date = result.getString("purchase_date");
                Double total_amount = result.getDouble("total_amount");
              
                Order order = new Order(id, salesman_id, salesman, customer, purchase_date, total_amount);
                orderLists.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orderLists;
    }

    
    public int insert_into_order(int salesman_id,String salesman, String customer, String purchase_date, Double total_amount) {

        int rows_affected = 0;
//        List<Product> productList = new ArrayList<>();

        try {
            String sql = "INSERT INTO orders(salesman_id,salesman, customer,purchase_date,total_amount) VALUES(?,?,?,?,?)";
            statement = con.prepareStatement(sql);
            statement.setInt(1, salesman_id);
            statement.setString(2, salesman);
            statement.setString(3, customer);
            statement.setString(4, purchase_date);
            statement.setDouble(5, total_amount);
            rows_affected = statement.executeUpdate();
            
            ResultSet rs = statement.executeQuery("select * from orders");
            if (rs.last()) {
                last_id = rs.getInt("id");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rows_affected;
    }
    public int insert_into_order_items(int product_id,String product_name, int quantity, double price,int order_id)
    {
        int rows_affected=0;
        try {
            String sql = "INSERT INTO order_items(product_id,product_name, qantity, price, order_id) VALUES(?,?,?,?,?)";
            statement = con.prepareStatement(sql);
            statement.setInt(1, product_id);
            statement.setString(2, product_name);
            statement.setInt(3, quantity);
            statement.setDouble(4, price);
            statement.setInt(5, order_id);
            rows_affected = statement.executeUpdate(); 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rows_affected;
    }
    public int last_inserted_id() {
        
        return last_id;

    }
    
    public int getOrderID(String customer)
    {
         int id=0;
        PreparedStatement statement;
        ResultSet result;
        try {
            String sql = "SELECT id FROM orders WHERE customer=?";
            statement = con.prepareStatement(sql);
            statement.setString(1, customer);
            
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
