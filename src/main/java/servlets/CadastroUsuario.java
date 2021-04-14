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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Usuario;
import static models.Usuario_.cpf;

/**
 *
 * @author Ailton-Oliver
 */
@WebServlet(name = "CadastroUsuario", urlPatterns = {"/CadastroUsuario"})
public class CadastroUsuario extends HttpServlet {
    
      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManager em = null ;
        int conf = 0;
        
        
        try {
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
            cliente.setCpf(Float.parseFloat(cpf));
            cliente.setContato(contato);
            cliente.setSobrenome(sobrenome);
            cliente.setEndereco(endereco);
            cliente.setNumeroDaCasa(numeroDaCasa);
            cliente.setSenha(senha);
            cliente.setComfirmarSenha(comfirmarSenha);
            
            if (nome != null && email != null && cpf != null && contato != null && sobrenome != null && endereco != null && numeroDaCasa != null && senha != null){
                EntityManagerFactory factory = Persistence.createEntityManagerFactory("Ecomerce");
		EntityManager manager = factory.createEntityManager();
                
                manager.getTransaction().begin();								
		manager.persist(cliente);
		manager.getTransaction().commit();
                
            } 
        }catch(NullPointerException e){
            EntityManagerFactory factory = Persistence.createEntityManagerFactory("Ecomerce");
            EntityManager manager = factory.createEntityManager();
            
            if(manager.getTransaction().isActive())
               manager.getTransaction().rollback();
               manager.close();
               conf = 1;
            
        }finally{
            if(conf != 0){
                RequestDispatcher rd=request.getRequestDispatcher("respostaNegativa.jsp");  
                rd.forward(request, response);
                
            }else{
                RequestDispatcher rd=request.getRequestDispatcher("respostaPositiva.jsp");  
                rd.forward(request, response);
                
            }
                
            }
    }
}
