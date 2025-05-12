/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import e.store.entities.Product;
import e.store.model.ProductFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
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
@WebServlet(name = "EditProductServlet", urlPatterns = {"/EditProductServlet.do"})
public class EditProductServlet extends HttpServlet {
    @EJB ProductFacadeLocal pfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name =  request.getParameter("name");
        String description =  request.getParameter("Description");
        Double price =  Double.parseDouble(request.getParameter("Price"));
        
        Product product = createProduct(name, description, price);
        pfl.edit(product);
         RequestDispatcher disp = request.getRequestDispatcher("edit_product_outcome.jsp");
        disp.forward(request, response);
    }

    private Product createProduct(String name, String description, Double price) {
        Product p = pfl.find(name);
        p.setName(name);
        p.setDescription(description);
        p.setPrice(price);
        
        return p;
    }


}
