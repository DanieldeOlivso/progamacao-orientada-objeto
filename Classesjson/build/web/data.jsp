<%-- 
    Document   : data
    Created on : 25 de out. de 2021, 16:03:43
    Author     : danie
--%>
<%@page import="model.Data" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data padrao = new Data();
    //Data hoje; diz ao compilador que o objeto da classe Data existirá, não necessariamente existe na memória, o "new" cria o objeto na memória
    Data hoje = new Data();
    hoje.setDia(2);
    hoje.setMes(10);
    hoje.setAno(2021);
    String data = hoje.getData();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Classe Data - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Data Padrao</h2>
        <%= padrao.getData() %>
        <h2>Data</h2>
        <%= hoje.getDia() %>/<%= hoje.getMes() %>/<%= hoje.getAno() %>
        <h2>Data com o getData( );</h2>
        <%= data %>
        
    </body>
</html>
