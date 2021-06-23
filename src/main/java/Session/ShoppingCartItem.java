/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Session;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import ShoppingCart.java

/**
 *
 * @author Winicios
 */
import models.ShoppingCart;
@WebServlet(name = "ShoppingCartItem", urlPatterns = {"/ShoppingCartItem"})
public class ShoppingCartItem extends HttpServlet {
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      /* HttpSession session = request.getSession(); 
        ShoppingCart cart = new ShoppingCart();
        session.setAttribute("cart", cart);
        cart = (ShoppingCart) session.getAttribute("cart");
        */
      
      String userPath = request.getServletPath();
      HttpSession session = request.getSession();
      ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
      
      if (userPath.equals("/addToCart")){
          if(cart == null){
              cart = new ShoppingCart();
              session.setAttribute("cart", cart);
          }
      }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
