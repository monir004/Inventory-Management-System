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
public class Order {
    int id;
    int salesman_id;
    String salesman;
    String customer;
    String purchase_date;
    double total_amount;

    public Order(int id, int salesman_id, String salesman, String customer, String purchase_date, double total_amount) {
        this.id = id;
        this.salesman_id = salesman_id;
        this.salesman = salesman;
        this.customer = customer;
        this.purchase_date = purchase_date;
        this.total_amount = total_amount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSalesman_id() {
        return salesman_id;
    }

    public void setSalesman_id(int salesman_id) {
        this.salesman_id = salesman_id;
    }
    
    public String getSalesman() {
        return salesman;
    }

    public void setSalesman(String customer) {
        this.customer = salesman;
    }
    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public String getPurchase_date() {
        return purchase_date;
    }

    public void setPurchase_date(String purchase_date) {
        this.purchase_date = purchase_date;
    }

    public double getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(double total_amount) {
        this.total_amount = total_amount;
    }
    
}
