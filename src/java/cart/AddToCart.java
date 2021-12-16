/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import data.*;
import java.util.ArrayList;

/**
 *
 * @author vfran
 */
public class AddToCart extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session=request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        Product[] products = (Product[]) session.getAttribute("products");
        Product product = products[id];
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        ArrayList<Product> cart = (ArrayList<Product>) session.getAttribute("cart");
        if (cart == null) cart = new ArrayList<Product>();

        for (int i=0; i<quantity; i++) cart.add(product);

        session.setAttribute("cart",cart); // update cart

        response.sendRedirect(request.getContextPath() + "/index.jsp");

    }
}
