<%-- 
    Document   : cadastro-use
    Created on : 30 de mar. de 2021, 13:47:10
    Author     : gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="fyles/main.css">
    <title>Cadastro</title>
    <link rel="stylesheet" href="css/cadastro-use.css">
</head>
<body id="body"> 
    <a style="font-size: 20px;" class="nav-link active" aria-current="page" href="index.jsp">Voltar Para o Inicio</a>
               
    <div id="main-container">
        <h1>Cadastre-se</h1>
        <form action="CadastroUsuario" method="POST" id="castro-use">
            <div class="full-box">
                <label for="email-use">E-mail</label>
                <input type="email" name="email_usuario" id="email-use" placeholder="Digite seu e-mail"  data-email-validate required permission = off> 
            </div>

            <div class="half-box spacing">
                <label for="contato-use">Contato</label>
                <input type="number" name="contato_usuario" id="contato-use" placeholder="Número para contato" data-min-length="11" data-max-length="11" required permission = off/>
            </div>

            <div class="half-box">
                <label for="cpf">CPF</label>
                <input type="text" name="cpf_usuario" id="cpf-use" placeholder="Digite seu CPF" data-min-length="11" data-max-length="11" required permission = off/>
            </div>

            <div class="half-box spacing">
                <label for="name-use">Nome</label>
                <input type="text" name="nome_usuario" id="name-use" placeholder="Digite o seu nome" required permission = off>
            </div>

            <div class="half-box">
                <label for="lastename-use">Sobrenome</label>
                <input type="text" name="sobrenome_usuario" id="lastename-use" placeholder="Digite o seu sobrenome" required permission = off/>
            </div>

            <div class="half-box spacing">
                <label for="endereco-use">Endereço</label>
                <input type="text" name="endereco_usuario" id="endereco-use" placeholder="Digite seu endereço" required permission = off/>
            </div>

            <div class="half-box">
                <label for="n-use">Número da casa</label>
                <input type="text" name="numero_casa_usuario" id="n-use" placeholder="Digite o número da casa" required permission = off/>
            </div>

            <div class="half-box spacing">
                <label for="password-use">Senha</label>
                <input type="password" name="senha_usuario" id="password-use" placeholder="Digite sua senha" data-min-length="8" data-max-length="8"  data-password-validate required permission = off/> 
            </div>

            <div class="half-box">
                <label for="passconfirmatio-use">Confirme sua senha</label>
                <input type="password" name="senha_usuario_repeti" id="passconfirmatio-use" placeholder="Confirme sua senha" data-equal="password-use" required permission = off/>
                
            </div>

            <div class="half-box">
                <input type="submit" value="Registrar" name="Registrar dados" >

                <input type="reset" value="Limpar campos" name="Registrar dados"   >
            </div>
        </form>
        <div id="register-container">
            <p>Já tem conta?</p>
            <a href="login_usuario.jsp" style="font-size: 23px;">FAZER LOGIN</a>
          </div>
    </div>
    <p class="error-validation template"></p>
    <script src="js/scripts.js"></script>
<body>
</html>
