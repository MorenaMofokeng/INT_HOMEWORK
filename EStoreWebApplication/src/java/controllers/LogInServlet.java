/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import e.store.entities.User;
import e.store.model.UserFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LogInServlet", urlPatterns = {"/LogInServlet.do"})
public class LogInServlet extends HttpServlet {
    @EJB UserFacadeLocal ufl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        User user = ufl.findByName(username);
        if(password.equals(user.getPassword())){
            request.setAttribute("username", username);
        }
        
        RequestDispatcher disp = request.getRequestDispatcher("home.jsp");
        disp.forward(request, response);
    }

}
