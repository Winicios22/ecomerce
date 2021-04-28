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
       
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("ecomerce");
	EntityManager manager = factory.createEntityManager();
                
        try{
       
         String nome = request.getParameter("NomeDoProduto");
         String status = request.getParameter("status");
         String preco = request.getParameter("perco");
         String quantidade = request.getParameter("estoque");
         String marca = request.getParameter("marca");
         String categoria = request.getParameter("categoria");
         
         Produto novoProduto = new Produto();
         novoProduto.setNomeProduto(nome);
         novoProduto.setPreco(Float.parseFloat(preco));
         novoProduto.setQuantidadeEstoque(parseInt(quantidade));
         novoProduto.setMarcaModelo(marca);
         novoProduto.setCategoria(categoria);
         novoProduto.setStatus(status);
      
         if (nome != null && preco != null && quantidade != null && marca != null && categoria != null){
                
                manager.getTransaction().begin();								
		manager.persist(novoProduto);
		manager.getTransaction().commit();
                
            } 
         
        }catch(NullPointerException e){
            
            if(manager.getTransaction().isActive())
               manager.getTransaction().rollback();
               manager.close();
               conf = 1;
        
        }finally{
        
            if(conf != 0){
                RequestDispatcher rd=request.getRequestDispatcher("respostaNegativa.jsp");  
                rd.forward(request, response);
            
            }else{
                RequestDispatcher rd=request.getRequestDispatcher("produtos.jsp");  
                rd.forward(request, response);
  
            }
        }
    }
}
