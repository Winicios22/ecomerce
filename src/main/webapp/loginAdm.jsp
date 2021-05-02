<%-- 
    Document   : loginAdm
    Created on : 01/05/2021, 13:58:43
    Author     : Winicios
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de Login do Adm</title>
    <link rel="stylesheet" href="css/login-use.css">
    <link rel="stylesheet" type="text/css" href="fyles/main.css">
</head>
<body>  
            <a style="font-size:20px;"   href="index.jsp">Voltar ao Inicio</a>
      
    <div id="login-container">
        <h1>Login</h1>
            <form action="CadAdm" method="POST">
              <label for="email">E-mail</label>
              <input type="email" name="email" id="email-use" placeholder="Digite seu e-mail" autocomplete="on" required permission = off/>
              <label for="password">Senha</label>
              <input type="password" name="senha" id="password-use" placeholder="Digite sua senha" required permission = off/>
              <input type="submit" value="Login">
            </form>
    </div>
</body>
</html>