/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import db.ProductDB;
import db.SalesmanDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 
 */
public class ProductAdd extends HttpServlet {



  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (!Authentication.verify(request, response)) return;
        request.getRequestDispatcher("/WEB-INF/new_product.jsp").forward(request, response);
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
        if (!Authentication.verify(request, response)) return;
        String name = request.getParameter("name");
        Double price = Double.parseDouble(request.getParameter("price"));
        int stock=Integer.parseInt(request.getParameter("stock"));
        ProductDB productDb = new ProductDB();
        int rows=productDb.insert(name, price, stock);
        response.sendRedirect("ProductList");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    

}
