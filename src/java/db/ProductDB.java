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

/**
 *
 * @author sakib
 */
public class ProductDB {

    private Connection con;

    public ProductDB() {
        con = DatabaseConnector.connect();
    }

    public List<Product> getProductList() {

        PreparedStatement statement;
        ResultSet result;
        List<Product> productList = new ArrayList<>();

        try {
            String sql = "SELECT * FROM products";
            statement = con.prepareStatement(sql);
            result = statement.executeQuery();
            while (result.next()) {
                int id = result.getInt("id");
                String name = result.getString("name");
                double price = result.getDouble("price");
                int stock = result.getInt("stock");
                Product product = new Product(id, name, price, stock);
                productList.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return productList;
    }

    public int insert(String name, Double price, int stock) {
        PreparedStatement statement;
        int rows_affected = 0;
        List<Product> productList = new ArrayList<>();

        try {
            String sql = "INSERT INTO products(name,price,stock) VALUES(?,?,?)";
            statement = con.prepareStatement(sql);
            statement.setString(1, name);
            statement.setDouble(2, price);
            statement.setInt(3, stock);
            rows_affected = statement.executeUpdate();
            

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rows_affected;
    }

    public Product getProduct(int id) {
        Product product = null;
        PreparedStatement statement;
        ResultSet result;

        try {
            String sql = "SELECT * FROM products WHERE id=?";
            statement = con.prepareStatement(sql);
            statement.setInt(1, id);
            result = statement.executeQuery();
            if (result.next()) {
                String name = result.getString("name");
                double price = result.getDouble("price");
                int stock = result.getInt("stock");
                product = new Product(id, name, price, stock);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }
    public int update(int id,String name, Double price, int stock){
        PreparedStatement preparedStatement;
      //  ResultSet resultSet;
        int rows_affected = 0;
        try {
            String sql = "UPDATE products SET name=?,price=?,stock=? WHERE id=?";
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setDouble(2, price);
            preparedStatement.setInt(3, stock);
            preparedStatement.setInt(4, id);
            rows_affected = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rows_affected;
    }
    
   public int insert_into_cart(int id, String name, int quantity, Double price ) {
        PreparedStatement statement;
        int rows_affected = 0;
//        List<Product> productList = new ArrayList<>();

        try {
            String sql = "INSERT INTO cart(product_id, name,price,quantity) VALUES(?,?,?,?)";
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
}
