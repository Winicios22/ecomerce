<%-- 
    Document   : login-use
    Created on : 30 de mar. de 2021, 13:47:55
    Author     : gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/login-use.css">
</head>
<body>
    
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
    </div>
  </div>
</nav>
    
    <div id="login-container">
        <h1>Login</h1>
        <form action="">
            <label for="email">E-mail</label>
            <input type="email" name="email-use" id="email-use" placeholder="Digite seu e-mail" autocomplete="off">
            <label for="password">Senha</label>
            <input type="password" name="password-use" id="password-use" placeholder="Digite sua senha">
            <input type="submit" value="Login">
        </form>
        
        <div id="register-container">
            <p>Ainda não tem uma conta?</p>
            <a href="cadastro-use.jsp">Registre-se</a>
        </div>
    </div>
</body>
</html>