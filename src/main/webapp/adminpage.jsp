<%-- 
    Document   : adminpage
    Created on : 23/04/2021, 01:23:59
    Author     : Ailton_Oliver
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Pagina_admin.css">
        <title>Pagina admin</title>
        
    </head>
    <body>
        
          <%--Painel horizontal--%>
        <div id="paineltopo">
            <div id="painelUsuarioAdmin">
                <div id="cadUsuarioAdmin">
                  <h1>Admin</h1>
                  <img id="adminUser" src="img/icones/icone_usuario.jpg" width="100" height="100">
                </div>
            </div>
            
            <%--Painel Vertical--%>
        
        <div id="painelMenuAdmin">
            <div id="opcaonMenu">
               <li>
                <a id="nomeCadastro" arial-current="page" href="cadastro_usuario.jsp">Cadastar</a>
              </li>
            </div>
        </div>
            
            <%--Formulario Dadastro--%>
            <div id="ConteinerCadastroProduto">  
                <h1>Cadastro de produtos</h1>
              <form action="CadPoduto" method="POST">
                  <label>Nome do Produro</label>
                  <input type="text" name="NomeDoProduto" value="" />
                  <br>
                  <label>Status</label>
                  <input type="text" name="status" value="" />
                  <br>
                   <label>Preço</label>
                  <input type="text" name="perco" value="" />
                  <br>
                   <label>Estoque</label>
                  <input type="text" name="estoque" value="" />
                  <br>
                   <label>Marca ou Modelo</label>
                  <input type="text" name="marca" value="" />
                  <br>
                  <label>Categoria</label>
                  <input type="text" name="categoria" value="" />
                  <br>
                  <input type="submit" value="Registar" />
              </form>
                
            </div>
            
            
    </body>
</html>
