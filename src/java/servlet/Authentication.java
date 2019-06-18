/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 
 * @author 
 */
public class Authentication {

    public static boolean verify(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        if (username == null) {
            try {
                request.setAttribute("error", "Please login!");
                response.sendRedirect("LoginServlet");
                return false;
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return true;
    }
}
