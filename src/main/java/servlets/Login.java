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

/**
 *
 * @author Winicios
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
        public Usuario getUsuario(String email, String senha){
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("ecomerce");
	EntityManager manager = factory.createEntityManager();
        
        try{
            Usuario usuario = (Usuario) manager
                    .createQuery("SELECT u FROM Usuario u WHERE u.email = :email and u.senha = :senha")
                    .setParameter("email", email)
                    .setParameter("senha", senha).getSingleResult();
            return usuario;
        }catch(Exception e){
            System.out.println("result: "+ e.getMessage());
            return null;
        }
        }
        

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        Usuario validaUse = getUsuario(email, senha);
        if(validaUse == null){
            System.out.println("Erro ao fazer login" + validaUse);
            response.sendRedirect("login_usuario.jsp");
        }else{
            System.out.println("Cliente logado" + validaUse);
            response.sendRedirect("index.jsp");
        }
        
    }

}
