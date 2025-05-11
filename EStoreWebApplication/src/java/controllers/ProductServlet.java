/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

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
 * @author Admin
 */
@WebServlet("/product")
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        Long productId = Long.parseLong(request.getParameter("id"));
        
        System.out.println("Action: " + action);
        System.out.println("ID: " + productId);
        
        if(action == null){
            //Show product page for a specific product
            RequestDispatcher rd = request.getRequestDispatcher("product.jsp");
            rd.forward(request, response);
        }else if(action.equalsIgnoreCase("edit")){
            //Show edit page for a specific product
            RequestDispatcher rd = request.getRequestDispatcher("edit_product.jsp");
            rd.forward(request, response);
        }else if(action.equalsIgnoreCase("delete")){
            //handle delection of the product
            RequestDispatcher rd = request.getRequestDispatcher("products.jsp");
            rd.forward(request, response);
        }else if(action.equalsIgnoreCase("remove")){
            //handle delection of the product
            System.out.println("Removed successfully");
            RequestDispatcher rd = request.getRequestDispatcher("favorites.jsp");
            rd.forward(request, response);
        }else if(action.equalsIgnoreCase("add-to-favorite")){
            //handle add to favorite
            System.out.println("Added to favorites successfully");
            RequestDispatcher rd = request.getRequestDispatcher("favorites.jsp");
            rd.forward(request, response);
        }else if(action.equalsIgnoreCase("remove")){
            //handle delection of the product
            System.out.println("Canceled successfully");
            RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
            rd.forward(request, response);
        }else if(action.equalsIgnoreCase("add-to-cart")){
            //handle delection of the product
            System.out.println("Added to cart successfully");
            RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
            rd.forward(request, response);
        }
        
    }


}
