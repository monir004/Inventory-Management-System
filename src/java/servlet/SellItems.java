/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import db.Cart;
import db.CartDB;
import db.OrderDB;
import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Monir
 */
public class SellItems extends HttpServlet {

    OrderDB orderDB = new OrderDB();
    CartDB cartDB = new CartDB();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        -----------all attributes for ordre column-----------
        HttpSession session = request.getSession();
        String salesman = (String) session.getAttribute("username");
        int salesman_id = cartDB.getSalesman_id(salesman);
        response.getWriter().println("Salesman id " + salesman_id);
        response.getWriter().println(salesman);
        String customer = (String) session.getAttribute("customer");
        SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
        String date = sdf.format(new Date());
        Double total_amount = cartDB.total_amount();
        response.getWriter().println(total_amount);
        //insert into orders
        orderDB.insert_into_order(salesman_id, salesman, customer, date, total_amount);
        response.getWriter().println("Last inserted id is " + orderDB.last_inserted_id());

//         --------all attributes for order items table
        int last_id = orderDB.last_inserted_id();
        List<Cart> cart_items = cartDB.getCartItems();
        for (int i = 0; i < cart_items.size(); i++) {
            Cart cart = cart_items.get(i);
            int product_id = cart.getProduct_id();
            String product_name = cart.getName();
            int quantity = cart.getQuantity();
            double price = cart.getPrice();
            int rows_affected=orderDB.insert_into_order_items(product_id,product_name, quantity, price, last_id);
        }
        
        cartDB.clear_cart_items();
        
         response.sendRedirect("SaleDetails");
         //return;
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
