<%-- 
    Document   : index
    Created on : 25 de out. de 2021, 15:31:44
    Author     : danie
--%>

<%
    Horario atual = new Horario(1,1,1);
    Horario intervalo = new Horario(16,40,0);
    
%>
<%@page import="model.Horario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Horário - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Horário</h2>
        Atual: <%= atual.getTime() %><br/>
        Intervalo: <%= intervalo.getHorario() %>
    </body>
</html>
