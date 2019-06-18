/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import db.CartDB;
import db.Product;
import db.ProductDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Monir
 */
public class SellProducts extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDB productDB = new ProductDB();
        request.setAttribute("productList", productDB.getProductList());

        CartDB cartDB = new CartDB();
        request.setAttribute("cartItems", cartDB.getCartItems());
        Double total_amount=cartDB.total_amount();
        request.setAttribute("total", total_amount);
        request.getRequestDispatcher("/WEB-INF/sell_products.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.valueOf(request.getParameter("product"));
        
        String customer = request.getParameter("customer");
        HttpSession session = request.getSession();
        session.setAttribute("customer", customer);
        
        ProductDB product_db = new ProductDB();
        Product product = product_db.getProduct(id);
        String name = product.getName();
        int quantity = Integer.valueOf(request.getParameter("quantity"));
        Double price = product.getPrice();
        
        CartDB cartDB = new CartDB();
        int rows = cartDB.insert_into_cart(id, name, quantity, price);

        response.sendRedirect("SellProducts");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
