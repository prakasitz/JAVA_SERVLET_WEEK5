/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package week5.sevlet.lab52;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author praka
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String user = req.getParameter("user");
        String pass = req.getParameter("pass");
        boolean status = false;
        
        if(user.equals("admin") && pass.equals("1234")) {
            status = true;
        } else {
            status = false;
        }
       
        req.setAttribute("status", status);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/loginResult.jsp");
        dispatcher.forward(req, resp);
        
    }
    
}
