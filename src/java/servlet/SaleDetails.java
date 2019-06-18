/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import db.OrderDB;
import db.OrderedItemsDB;
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
public class SaleDetails extends HttpServlet {

    OrderDB orderDB=new OrderDB();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String customer = (String) session.getAttribute("customer");
        int order_id=orderDB.getOrderID(customer);
        response.getWriter().println("Order id "+ order_id);
        
        OrderedItemsDB orderedItems=new OrderedItemsDB();
        request.setAttribute("ordered_lists", orderedItems.getAllOrderedItems(order_id));
        request.getRequestDispatcher("/WEB-INF/sale_Details.jsp").forward(request, response);
//        request.getRequestDispatcher("/WEB-INF/sale_Details.jsp").forward(request, response);
    }

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
