<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="fyles/main.css">
           <title> Página De Produtos </title>
    </head>
    <body id="produts"> 
                           <!-----Nav Bar/Menu--------->
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
        </l
   <li> 
      <div class="dropdown">
            <a class="dropbtn">Categoria</a>  
      <div class="dropdown-content">
    <ul>
        <a  class="nav-link active" href="Acessorios.jsp">Acessorios </a> 
        <a class="nav-link active " href="">Hardware</a>
        <a class="nav-link active" href="Smartphone.jsp">Smartphone</a>     
    </ul>
  </div>
      </div>     
       </div>
        </li>
        <img src="img/icones/ícone-do-carrinho-de-compras.jpg">
        <div id="valorcarrinho">0</div>
    </ul>       
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Pesquise Aqui!!" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Buscar</button>
      </form>
    </div>
  </div>
       </nav>       
                           <!--------Fim do Nav bar---------->
     <!-----------------------conteudo:Produtos---------------------------------------------------->  
     <h2>Resultados para "Notebooks"</h2>              
    <div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
          <img id="img_not" src="https://a-static.mlcdn.com.br/618x463/asus-zenbook-ux363-ultrabook-2-in-1-intel-11a-geracao-i7-1165g7-tela-13-video-iris-xe-ssd-512gb-nvme-ram-16gb/laptopshopcombr/7908078429101/baf8d4c5f6b16d3f22bc1d1a3d7bdb7b.jpg" class="card-img-top" alt="...">

        <h5 class="card-title">Modelo x0</h5>
        <p class="card-text">Temporianriamente Indisponivel</p>
       <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a> 
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
          <img id="img_not" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHVHUZJU8NY3C7DDS8-Sx-MrdYfNbjHmvUdUkuX_j6HnxR_N8cnNybKQzHSibXSvdL1DCdF0C6&usqp=CAc" class="card-img-top" alt="...">

        <h5 class="card-title">Modelo x03</h5>
        <p class="card-text">Temporianriamente Indisponivel</p>
        <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
      </div>
    </div>
  </div>
        <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
          <img id="img_not"  src="https://s2.glbimg.com/CSA_Hl8eOiSkZTI3HZnyq0zNOIc=/0x0:695x423/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2018/O/0/dsdniTQ0WnPxifdvdsBw/mi-gaming-laptop.png" class="card-img-top" alt="...">

        <h5 class="card-title">Modelo xz5</h5>
        <p class="card-text">Temporianriamente Indisponivel</p>
        <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
      </div>
    </div>
  </div>
        <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
          <img id="img_not" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFkQwGUq0E_OCwTPIo1TZDuICjJyY8xAgizlFadLC2KB12oWaChk9CtTRNOw3wlrZtlxbV6m5j&usqp=CAc" class="card-img-top" alt="...">
        <h5 class="card-title">modelo 0c-3</h5>
        <p class="card-text">Temporianriamente Indisponivel</p>
        <a href="#" class="btn btn-primary">Adicionar ao Carrinho</a>
      </div>
    </div>
  </div>
        <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
          <img  id="img_not" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_JDapopCUwMvIz5ODQSssyPlK_VPHypmJqA&usqp=CAU" class="card-img-top" alt="...">
          
        <h5 class="card-title">Modelo AMc-49</h5>
        <p class="card-text">Temporianriamente Indisponivel</p>
        <a href="#" class="btn" onclick="Save()">Adicionar ao Carrinho</a>        
      </div>
    </div>             
         </div>
            </div>
     
   <!------------------Footer\rodapé----------------->      
      <footer id="footer">
         <div id="txt-botton">
           © 2021 Copyright:  
              Ecomerce
         </div>  
         </footer>
   
   
   <script>
         function Save(){ 
            var carrinho;
             var txt =  window.document.getElementById("valorcarrinho");
                carrinho = carrinho + 1;
                 txt.innerTxt = carrinho;
                 txt.innerTxt = ${carrinho}                         
                             
              //var res = document.getElementById("valorcarrinho");
                 //   res.innerHTML =carrinho;
             
                }
   </script>
                 </body>
    </html>
