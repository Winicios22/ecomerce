/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;

/**
 *
 * @author Winicios
 */
@WebServlet(name = "CadAdm", urlPatterns = {"/CadAdm"})
public class CadAdm extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String senhaPadrao;
        String emailPadrao;
        senhaPadrao = "123";
        emailPadrao = "adm@adm.com";
        
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        if(email.equals(emailPadrao) && senha.equals(senhaPadrao)){  
             response.sendRedirect("adminpage.jsp");
            System.out.println("senha correta");
            
            
        }else{
           // response.sendRedirect("loginAdm.jsp");
            response.sendRedirect("respostaNegativa.jsp");
            System.out.println("senha incorreta!!!!");
             
            
        
        }
       
        }
    }

