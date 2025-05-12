/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import e.store.entities.User;
import e.store.model.UserFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author Admin
 */
@WebServlet(name = "RegisterAccountServlet", urlPatterns = {"/RegisterAccountServlet.do"})
public class RegisterAccountServlet extends HttpServlet {
@EJB private UserFacadeLocal ufl;

@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
        
        User user = createUser(username, email, password);
        user.setPassword(hashedPassword);
        ufl.create(user);
        request.setAttribute("username", username);
        request.setAttribute("email", email);
        request.setAttribute("password", hashedPassword);
       
        RequestDispatcher disp = request.getRequestDispatcher("home.jsp");
        disp.forward(request, response);
        
        
    } 
    
    private User createUser(String username, String email, String password){
        User user = new User();
        user.setName(username);
        user.setEmail(email);
        user.setPassword(password);
        
        return user;
    }
}


