<%-- 
    Document   : daniel_dica_megasena
    Created on : 4 de out. de 2021, 21:26:13
    Author     : danie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números da sorte</title>
    </head>
    <body>
        <center><%@include file="WEB-INF/jspf/header.jspf" %></center>
        <%if(Username!=null){%>
            <h3>Seus números da sorte são: <%= session.getAttribute("Mega") %></h3>
        <%}else{%>
            <h3>Você não tem acesso ao conteúdo dessa página</h3>
        <%}%>
    </body>
</html>
