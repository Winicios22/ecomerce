<%-- 
    Document   : inicio
    Created on : 03/05/2021, 15:23:23
    Author     : Oliver
--%>

<h1>Cadastro de Produtos</h1>

<div class="cadProdutos">

<form action="CadPoduto" method="POST">
    <label>Nome do Produto</label>
    <input type="text" name="NomeDoProduto"></input>
    
    <label>Status</label>
    <input type="text" name="status"></input>
    
    <label>Preço</label>
    <input type="text" name="perco"></input>
    
    <label>Estoque:</label>
    <input type="text" name="estoque"></input>
    
    <label>Marca ou Modelo</label>
    <input type="text" name="marca"></input>
    
    <label>Categoria</label>
    <input type="text" name="categoria"></input>
    
    <input type="submit" value="cadastrar" class="but"/>
</form>
    
</div>