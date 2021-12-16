<%-- 
    Document   : index
    Created on : Dec 14, 2021, 9:50:14 AM
    Author     : vfranco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="data.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="css/index.css">
    </head>
    <body>
        <jsp:include page="views/viewNavbar.jsp"></jsp:include>
        <div class="banner">
            <span class="message">Encuentra lo que necesitas</span>
            <span class="skewed"></span>
        </div>
        <h1>Productos</h1>
        <div class="content">
        <%
            Product[] products = {
                new Product("Raspberry Pi",2980,"raspberry.jpg"),
                new Product("Arduino Uno",240,"arduino_uno.jpg"),
                new Product("Arduino Nano",100,"arduino_nano.jpg"),
                new Product("Cardboard",89,"cardboard.jpg"),
                new Product("Etiqueta NFC",99,"etiqueta.jpg"),
                new Product("Disipadores",50,"disipadores.jpg"),
                new Product("Modulo BT",80,"modulo.jpg"),
                new Product("Protoboard",30,"protoboard.jpg"),
                new Product("Raspberry Pico",84,"pico.jpg"),
                new Product("Ice Tower",74,"tower.jpg"),
            };
            // communicate the products
            session.setAttribute("products",products);

            int id = 0;
            String url = "views/viewProduct.jsp";
            for(Product product: products) {
        %>
            <form action="<%=url%>" method="get" class="card">
                <a href="<%=url%>">
                    <input class="id" name="id" value="<%=id%>"/>
                    <img src="images/<%=product.getImgName()%>"/>
                    <div class="name">
                        <%=product.getName()%>
                    </div>
                    <div class="price">
                        $<%=String.format("%.2f",product.getPrice())%>
                    </div>
                </a>
            </form>
        <%
                id++;
            }
        %>
        </div>
        <script src="js/skewed.js"></script>
        <script src="js/cards.js"></script>
    </body>
</html>
