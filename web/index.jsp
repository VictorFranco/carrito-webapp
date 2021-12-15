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
        <div class="banner">
            <span class="name">Tecnología.com</span>
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
            for(Product product: products) {
                out.println("<div class=\"card\">");
                out.println("<img src=\"images/"+product.getImgName()+"\"/>");
                out.println("<div class=\"name\">"+product.getName()+"</div>");
                out.println("<div class=\"price\">$"+
                    String.format("%.2f",product.getPrice())
                    +"</div>");
                out.println("</div>");
            }
        %>
        </div>
        <script src="js/skewed.js"></script>
    </body>
</html>
