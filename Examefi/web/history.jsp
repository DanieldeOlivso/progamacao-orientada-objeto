<%-- 
    Document   : history
    Created on : 13 de dez. de 2021, 15:43:04
    Author     : danie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%if(session.getAttribute("user") == null){%>
        <div style="color: red">Não é possível acessar este conteúdo sem estar logado.</div>
        <%}else{%>
        
        <%}%>
    </body>
</html>
