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
            <form action="">
              <label for="email">E-mail</label>
              <input type="email" name="email-use" id="email-use" placeholder="Digite seu e-mail" autocomplete="off">
              <label for="password">Senha</label>
              <input type="password" name="password-use" id="password-use" placeholder="Digite sua senha">
              <input type="submit" value="Login">
            </form>
        <div id="register-container">
            <p>Ainda não tem uma conta?</p>
            <a href="cadastro_usuario.jsp">Registre-se Agora  </a> <br>
            <a href="adminpage.jsp">È Administrador(a)  </a>
        </div>
    </div>
</body>
</html>