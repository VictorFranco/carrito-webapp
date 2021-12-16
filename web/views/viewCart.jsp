<%-- 
    Document   : viewCart
    Created on : Dec 15, 2021, 10:50:01 PM
    Author     : vfranco
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="data.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <link rel="stylesheet" href="../css/viewProduct.css">
        <link rel="stylesheet" href="../css/viewCart.css">
    </head>
    <body>
        <jsp:include page="../views/viewNavbar.jsp"></jsp:include>
        <%
            double totalPrice = 0;
            int quantity = 0;
            ArrayList<Product> cart = (ArrayList<Product>) session.getAttribute("cart");
            if (cart != null) {
                quantity = cart.size();
                for(Product product: cart) totalPrice += product.getPrice();
            }
        %>
        <div class="content">
            <div class="img_section">
                <img src="../images/cart.jpg"/>
            </div>
            <form method="post" action="../BuyTheCart" class="description">
                <div class="quantity">
                    <%=quantity%> productos en el carrito
                </div>
                <div class="price">
                    Precio total: $<%=String.format("%.2f",totalPrice)%>
                </div>
                <button type="submit">Comprar</button>
            </form>
        </div>
        <div class="list">
        <%
            for(Product product: cart){
        %>
            <div class="name">
                <%=product.getName()%>
            </div>
            <div class="price">
                $<%=String.format("%.2f",product.getPrice())%>
            </div>
        <%
            }
        %>
        </div>
    </body>
</html>
