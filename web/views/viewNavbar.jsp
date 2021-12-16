<%-- 
    Document   : viewNavbar
    Created on : Dec 15, 2021, 7:34:29 PM
    Author     : vfran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String root = request.getContextPath(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="<%=root%>/css/viewNavbar.css" type="text/css">
    </head>
    <body>
        <div class="nav">
            <div class="logo">
                <a href="<%=root%>/index.jsp">T</a>
            </div>
            <div class="name">
                <a href="<%=root%>/index.jsp">Tecnología.com</a>
            </div>
            <div>
                <img src="<%=root%>/images/cart.jpg"/>
            </div>
        </div>
    </body>
</html>
