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
    <title>Pagina de Login</title>
    <link rel="stylesheet" href="css/login-use.css">
    <link rel="stylesheet" type="text/css" href="fyles/main.css">
</head>
<body>  
            <a style="font-size:20px;"   href="index.jsp">Voltar ao Inicio</a>
      
    <div id="login-container">
        <h1>Login</h1>
            <form action="Login" method="POST">
              <label for="email">E-mail</label>
              <input type="email" name="email" id="email-use" placeholder="Digite seu e-mail" autocomplete="off" required permission = off/>
              <label for="password">Senha</label>
              <input type="password" name="senha" id="password-use" placeholder="Digite sua senha" required permission = off/>
              <input type="submit" value="Login">
            </form>
        <div id="register-container">
            <p>Ainda não tem uma conta?</p>
            <a href="cadastro_usuario.jsp" style="font-size:23px;">REGISTRE-SE</a> <br>
            <a href="loginAdm.jsp" style="font-size: 23px;"> FAZER LOGIN </a> <br>
        </div>
    </div>
</body>
</html>