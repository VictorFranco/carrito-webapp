<%-- 
    Document   : viewProduct
    Created on : Dec 15, 2021, 1:45:52 PM
    Author     : vfran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="data.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
        <link rel="stylesheet" href="../css/viewProduct.css">
    </head>
    <body>
        <jsp:include page="../views/viewNavbar.jsp"></jsp:include>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Product[] products = (Product[]) session.getAttribute("products");
            Product product = products[id];
        %>
        <div class="content">
            <div class="img_section">
                <img src="../images/<%=product.getImgName()%>"/>
            </div>
            <form method="post" action="../AddToCart" class="description">
                <input class='id' name='id' value='<%=id%>'/>
                <div class="name">
                    <%=product.getName()%>
                </div>
                <div class="price">
                    <%=("$"+String.format("%.2f",product.getPrice()))%>
                </div>
                <div>
                    Cantidad:
                    <input type="number" name="quantity" value="1" min="1" max="20">
                </div>
                <button type="submit">Añadir a carrito</button>
            </form>
        </div>
    </body>
</html>
