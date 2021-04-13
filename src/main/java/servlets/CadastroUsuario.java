/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Usuario;

/**
 *
 * @author Ailton-Oliver
 */
@WebServlet(name = "CadastroUsuario", urlPatterns = {"/CadastroUsuario"})
public class CadastroUsuario extends HttpServlet {

      private EntityManagerFactory emf = null;
      
      public EntityManager getEntityManeger(){
          return emf.createEntityManager();
      }
  
      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManager em = null ;
        
            String nome = request.getParameter("nome_usuario");
            String email = request.getParameter("email_usuario");
            String cpf = request.getParameter("cpf_usuario");
            String contato = request.getParameter("contato_usuario");
            String sobrenome = request.getParameter("sobrenome_usuario");
            String endereco = request.getParameter("endereco_usuario");
            String numeroDaCasa = request.getParameter("numero_casa_usuario");
            String senha = request.getParameter("senha_usuario");
            String comfirmarSenha = request.getParameter("senha_usuario_repeti");
            
            Usuario cliente = new Usuario();
            cliente.setNome(nome);
            cliente.setEmail(email);
            cliente.setCpf(0);
            cliente.setContato(contato);
            cliente.setSobrenome(sobrenome);
            cliente.setEndereco(endereco);
            cliente.setNumeroDaCasa(0);
            cliente.setSenha(senha);
            cliente.setComfirmarSenha(comfirmarSenha);
            
               	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Ecomerce");
		EntityManager manager = factory.createEntityManager();
                
                manager.getTransaction().begin();								
		manager.persist(cliente);
		manager.getTransaction().commit();

    }
    
}
