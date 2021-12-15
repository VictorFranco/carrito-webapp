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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Product[] products = (Product[]) session.getAttribute("products");
            out.println(products[id].getName());
        %>
    </body>
</html>
