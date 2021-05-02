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
        <title>Página cadastro do Admin</title>
        
    </head>
    <body>
        
            <!--------Start de Cadastro de Adim-------->
             <%--Formulario Dadastro--%>
            <div id="ConteinerCadastroProduto">  
                <h1> Àrea De Cadastrar Seus Produtos </h1>
              <form action="CadPoduto" method="POST">
                  <label class="txt">Digite o Nome do Produro:</label>
                  <input class="textfield" type="text" name="NomeDoProduto" required permission = off />
                  <br>
                  <label class="txt">Digite o Status:</label>
                  <input class="textfield" type="text" name="status" required permission = off />
                  <br>
                   <label class="txt">Digite o Preço:</label>
                  <input  class="textfield" type="text" name="perco" required permission = off />
                  <br>
                  <label class="txt">Digite o Estoque:</label>
                  <input class="textfield" type="text" name="estoque" required permission = off />
                  <br>
                   <label class="txt">Digite a Marca ou Modelo:</label>
                   <input  class="textfield" type="text" name="marca" required permission = off/>
                  <br>
                  <label class="txt">Digite a Categoria:</label>
                  <input class="textfield" type="text" name="categoria" required permission = off/>
                  <br>
                  <input  id="button-register"  type="submit" value=">>Registar cadastro<<" />
              </form>
            
                
            <!-------------------end------------------------>
    </body>
</html>
