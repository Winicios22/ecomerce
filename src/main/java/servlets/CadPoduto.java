package servlets;

import java.io.IOException;
import static java.lang.Integer.parseInt;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Produto;

/**
 *
 * @author Winicios
 */
@WebServlet(name = "CadPoduto", urlPatterns = {"/CadPoduto"})
public class CadPoduto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int conf = 0; 
       
        try{
       
         String nome = request.getParameter("");
         String status = request.getParameter("");
         String preco = request.getParameter("");
         String quantidade = request.getParameter("");
         String marca = request.getParameter("");
         String categoria = request.getParameter("");
         
         Produto novoProduto = new Produto();
         novoProduto.setNomeProduto(nome);
         novoProduto.setPreco(Float.parseFloat(preco));
         novoProduto.setQuantidadeEstoque(parseInt(quantidade));
         novoProduto.setMarcaModelo(marca);
         novoProduto.setCategoria(categoria);
         
         if(status == "True"){
             novoProduto.setStatus(true);
         }else
             novoProduto.setStatus(false);
         
         if (nome != null && preco != null && quantidade != null && marca != null && categoria != null && status != null){
                EntityManagerFactory factory = Persistence.createEntityManagerFactory("Ecomerce");
		EntityManager manager = factory.createEntityManager();
                
                manager.getTransaction().begin();								
		manager.persist(novoProduto);
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
                RequestDispatcher rd=request.getRequestDispatcher("");  
                rd.forward(request, response);
            
            }else{
                RequestDispatcher rd=request.getRequestDispatcher("");  
                rd.forward(request, response);
  
            }
        }
    }
}
