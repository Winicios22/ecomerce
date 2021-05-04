<%-- 
    Document   : Admin
    Created on : 03/05/2021, 15:16:29
    Author     : Oliver
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin</title>
    <link rel="stylesheet" href="css/css-admin.css">

    </head>

    <body>

      <div class="conteudo">
          <div class="topo">
              <a href="" class="logo"></a>
              <h1>Pagina admin</h1>
                <form action="">
                    <input type="text" name="txt_valor" id="txt_valo" placeholder="pesquisa">
              
                    <input type="button" class="but">
                </form>

          </div>

          <div class="menu">
              <h2>Menu</h2>
              <ul>
                  <li> <a href=""  class="inicio">Inicio</a></li>
                  <li> <a href="" class="novo">Novo</a></li>
                  <li> <a href="" class="alterar">Alterar</a></li>
                  <li> <a href="" class="excluir">Excluir</a></li>
                  <li> <a href="" class="listar">Listar</a></li>
              </ul>
          </div>

          <div class="centro">
              
              <jsp:include page="cadastro_produtos.jsp"/>
              
          </div>
          
             
        
          </div>
          <div class="limpar"></div>
          <div class="rodape">
              <p>copyright © 2020 - Planetec</p>
          </div>

      </div>
    
    </body>

</html>

