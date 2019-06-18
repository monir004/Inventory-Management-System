/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

/**
 *
 * @author Monir
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderedItemsDB {
    int last_id = 0;
    private Connection con;
    PreparedStatement statement;
    ResultSet result;

    public OrderedItemsDB() {
        con = DatabaseConnector.connect();
    }
    public List<OrderedItems> getAllOrderedItems(int ord_id) {

        
        
        List<OrderedItems> orderLists = new ArrayList<>();

        try {
            String sql = "SELECT * FROM order_items WHERE order_id=?";
            statement = con.prepareStatement(sql);
            statement.setInt(1, ord_id);
            result = statement.executeQuery();
            
            while (result.next()) {
                int id = result.getInt("id");
                int product_id = result.getInt("product_id");
                String product_name = result.getString("product_name");
                int qantity = result.getInt("qantity");
                Double price = result.getDouble("price");
                int order_id = result.getInt("order_id");
              
                OrderedItems orderedItems = new OrderedItems(id, product_id, product_name, qantity, price, order_id);
                orderLists.add(orderedItems);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orderLists;
    }
}
