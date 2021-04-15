<%-- 
    Document   : index
    Created on : 21/03/2021, 23:16:17
    Author     : TI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="fyles/main.css">
           <title> Página Inicial Ecomerce </title>
    </head>
    <body id="body">  
        <!------Nav Bar-------->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
      <img id="logo" src="img/background/carrinho_comercio_eletronoco.png">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" arial-current="page" href="produtos.jsp">Produtos</a>
        </li>
        
         <li class="nav-item">
            <a class="nav-link active" arial-current="page" href="cadastro_usuario.jsp">Cadastar</a>
        </li>
        
         <li class="nav-item">
            <a class="nav-link active" arial-current="page" href="login_usuario.jsp">login</a>
        </li>
      

      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Pesquise Aqui!!" aria-label="Search">
        <button class="btn btn-outline-success" type="submit" href="cadastro_usuario.jsp">Buscar</button>
      </form>
    </div>
  </div>
</nav>
         
  <!------------Section----------------------->      
        
  <section class="imgback">  
      <div class="txt-title">
   Bem Vindo!
  </div>
  <img  src="https://i.dell.com/is/image/DellContent//content/dam/global-site-design/product_images/dell_client_products/notebooks/inspiron_notebooks/13_7391/general/new-category-page-notebook-inspiron-13-7391-800x620.png?fmt=png-alpha&amp;wid=800&amp;hei=620"  src="rd-img-top" alt="...">
</div>
 
      
      
      
  </section>    
        
                       <!------------------Footer----------------->      
<footer id="footer">
    <div id="txt-botton">
    © 2021 Copyright:
         
    Ecomerce
    </div>  
</footer>
</body>
    </html>
