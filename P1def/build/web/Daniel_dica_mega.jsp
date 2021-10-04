<%-- 
    Document   : Daniel_dica_mega
    Created on : 3 de out. de 2021, 23:42:48
    Author     : danie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dica de Números</title>
    </head>
    <body>
        <center><%@include file="WEB-INF/jspf/header.jspf" %></center>
        <%if(Username!=null){%> 
            <h1>Números recomendados:</h1>
            <%=session.getAttribute("Mega")%>
        <%}else{%>
        <h3>Conteúdo restrito, para visualizar essa página, faça login.</h3>
        <%}%>
    </body>
</html>
