<%-- 
    Document   : cadastro-produto
    Created on : 15/04/2021, 00:58:21
    Author     : TI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>

	<title>Cadastro-de-Produtos</title>

        <link rel="stylesheet" type="text/css" href="css/Vendedor.css"/>
        <link rel="stylesheet" type="text/css" href="css/cadastro-produtos.css"/>
        <link rel="stylesheet" type="text/css" href="css/Aplicacao.css"/>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>

<div class="aw-layout-loading  js-loading-overlay">
	<div class="aw-layout-loading__container">
		<span class="aw-balls-spinner">Carregando...</span>
	</div>
</div>

<div class="aw-layout-page">

	<nav class="navbar  navbar-fixed-top  navbar-default  js-sticky-reference" id="main-navbar">
	  <div class="container-fluid">

	    <div class="navbar-header">
	      <a class="navbar-brand  hidden-xs" href="#">
	        <img alt="AlgaWorks" src="assets/images/logo.png"/>
	      </a>

	      <ul class="nav  navbar-nav">
	        <li>
	          <a href="#" class="js-sidebar-toggle"><i class="fa  fa-bars"></i></a>
	        </li>
	      </ul>
	    </div>

	    <ul class="nav navbar-nav  navbar-right">
	    
	      <li>
	        <a href="#" class="js-search-modal-trigger-show"><i class="fa  fa-search"></i></a>
	      </li>
	      
	      <li class="dropdown">
	        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
	          <i class="fa  fa-envelope"></i> <span class="label  label-danger  aw-label-corner">48</span>
	        </a>
	                  
	        <ul class="dropdown-menu">
	          <li><a href="javascript:;">Item 1</a></li>
	          <li><a href="javascript:;">Item 2</a></li>
	        </ul>
	      </li>
	      
	      <li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	          <i class="fa  fa-user"></i>
	        </a>
	        
	        <ul class="dropdown-menu">
	          <li>
	            <div class="aw-logged-user">
	              <img src="https://api.adorable.io/avatars/80/joaodascouves" 
	                width="80" height="80" alt="João das Couves" class="aw-logged-user__picture" />
	              <span class="aw-logged-user__name">João das Couves</span>
	            </div>
	          </li>
	          <li role="separator" class="divider"></li>
	          <li><a href="#">Meu perfil</a></li>
	          <li><a href="#">Alterar senha</a></li>
	          <li><a href="#">Pagamentos</a></li>
	        </ul>
	      </li>
	      
	      <li>
	        <a href="#"><em class="fa  fa-sign-out"></em></a>
	      </li> 
	    </ul>

	  </div>
	</nav>

	<aside class="aw-layout-sidebar  js-sidebar">
		<div class="aw-layout-sidebar__content">

    <nav class="aw-menu  js-menu">
      <ul class="aw-menu__list">

        <li class="aw-menu__item">
          <a href="dashboard.html"><i class="fa  fa-fw  fa-home"></i><span>Dashboard</span></a>
        </li>

        <li class="aw-menu__item  is-active">
          <a href="#">
            <i class="fa  fa-fw  fa-file-text"></i><span>Cadastros</span>
            <i class="aw-menu__navigation-icon  fa"></i>
          </a>
      
          <ul class="aw-menu__list  aw-menu__list--sublist">
            <li class="aw-menu__item  aw-menu__item--link"><a href="cadastro-produto.html">Cadastro de produto</a></li>
            <li class="aw-menu__item  aw-menu__item--link  is-active"><a href="pesquisa-produtos.html">Pesquisa de produtos</a></li>
            <li class="aw-menu__item  aw-menu__item--link"><a href="tabela-sem-dados.html">Tabela sem dados</a></li>
          </ul>
        </li>

        <li class="aw-menu__item  is-expanded">
          <a href="#">
            <i class="fa  fa-fw  fa-file-text"></i><span>Páginas comuns</span>
            <i class="aw-menu__navigation-icon  fa"></i>
          </a>

          <ul class="aw-menu__list  aw-menu__list--sublist">
            <li class="aw-menu__item  aw-menu__item--link"><a href="pagina-vazia.html">Página vazia</a></li>
            <li class="aw-menu__item  aw-menu__item--link"><a href="login_usuario.jsp">Login</a></li>
            <li class="aw-menu__item  aw-menu__item--link"><a href="esqueceu-a-senha.html">Esqueceu a senha</a></li>
            <li class="aw-menu__item  aw-menu__item--link"><a href="403.html">403</a></li>
            <li class="aw-menu__item  aw-menu__item--link"><a href="404.html">404</a></li>
            <li class="aw-menu__item  aw-menu__item--link"><a href="500.html">500</a></li>
          </ul>
        </li>

      </ul>
    </nav>

		</div>
	</aside>

	<section class="aw-layout-content  js-content">


<div class="page-header">
	<div class="container-fluid">
		<h1>
			Cadastro de produto
		</h1>
	</div>
</div>

<div class="container-fluid">

	<div class="alert  alert-danger  alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		<i class="fa  fa-exclamation-circle"></i> Já existe um produto com o nome informado.
	</div>

	<form method="get" class="form-vertical  js-form-loading">
		
		<div class="form-group">
			<label for="input-produto-nome">Nome do Produto </label>
			<input id="input-produto-nome" type="text" class="form-control"/>
		</div>

		<div class="form-group">
			<label for="input-produto-descricao">Marca ou Modelo</label>
                        <input id="input-produto-nome" type="text" placeholder="Exe: Samsung">
		</div>

               <div class="form-group"> 
                   <label for="input-produto-nome"> Ano de Fabricação</label>
                   <input type="date" for="input-fabc-produto">
            
                   <div class="form-group">
                       <label> Estado do Produto:</label> <br>
                       <label>Novo</label>
                       <input for="input-estado-novo" type="radio" >
                       <br>
                       <label>Usado</label>
                       <input type="radio" for="input-estado-usado">
                   </div>
                   
		<div class="row">
			<div class="col-sm-3">
				<div class="form-group">
					<label for="input-produto-preco">Preço unitário do Produto</label>
					<input id="input-produto-preco" type="text" class="form-control" placeholder="R$"/>
				</div>
			</div>
			
			<div class="col-sm-3">
				<div class="form-group">
					<label for="input-produto-estoque">Estoque</label>
					<input id="input-produto-estoque" type="text" class="form-control" placeholder="Unidades"/>
				</div>
			</div>
		</div>
		
		<div class="form-group">
			<button class="btn  btn-primary" type="submit">Salvar</button>
			<a href="pesquisa-produtos.html" class="btn  btn-default">Cancelar</a>
			<a href="#" class="btn  btn-link  aw-btn-link-danger" onclick="excluir()">Excluir este produto</a>
		</div>

	</form>
</div>

<script>
function excluir() {
	swal({
		title: "Tem certeza?",
		text: "Você não poderá recuperar o produto após a exclusão.",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: "#DD6B55",
		confirmButtonText: "Sim, exclua agora!",
		closeOnConfirm: false,
		showLoaderOnConfirm: true
	}, function() {
		setTimeout(function() {
			swal("Excluído!", "O produto foi excluído com sucesso.", "success");
		}, 2000);
	});
}
</script>

	</section>
	
	<footer class="aw-layout-footer  js-content">
		<div class="container-fluid">
			<span class="aw-footer-disclaimer">&copy; 2016 AlgaWorks. Todos os direitos reservados.</span>
		</div>
	</footer>

</div>

<div class="aw-search-modal  js-search-modal">
	<form action="#" class="aw-search-modal__form">
		<input class="aw-search-modal__input  js-search-modal-input" type="text" placeholder="O que você está procurando?"/>
		<div class="aw-search-modal__input-icon">
			<i class="glyphicon  glyphicon-search  js-search-modal-go"></i>
		</div>
	</form>
	
	<div class="aw-search-modal__controls">
		<i class="glyphicon glyphicon-remove  js-search-modal-close"></i>
	</div>
</div>

<script src="assets/javascripts/vendors.min.js"></script>
<script src="assets/javascripts/algaworks.min.js"></script>

</body>
</html>