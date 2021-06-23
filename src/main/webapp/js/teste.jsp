<%-- 
    Document   : teste
    Created on : 22/06/2021, 22:57:36
    Author     : Winicios
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="ShoppingCartItem.java" method="POST">
            ${cart}
            <p>Your shopping cart contains ${cart.numberOfItems} items.</p>
            
            <c:forEach var="cartItem" items="${cart.items}" varStatus="iter">

  <c:set var="product" value="${cartItem.product}"/>

    <tr class="${((iter.index % 2) == 0) ? 'lightBlue' : 'white'}">
        <td>
            <img src="${initParam.productImagePath}${product.name}.png"
                 alt="${product.name}">
        </td>

        <td>${product.name}</td>

        <td>
            &amp;euro; ${cartItem.total}
            <br>
            <span class="smallText">( &amp;euro; ${product.price} / unit )</span>
        </td>
        ...
    </tr>

</c:forEach>
            
            <input type="submit" value="ok" />
        </form>
    </body>
</html>