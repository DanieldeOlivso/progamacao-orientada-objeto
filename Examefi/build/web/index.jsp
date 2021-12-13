<%-- 
    Document   : index
    Created on : 13 de dez. de 2021, 15:16:31
    Author     : danie
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.danielUser"%>

<%
    ArrayList<String> taskList = new ArrayList<>();
    if(request.getParameter("login") != null){
        String password = (String) session.getAttribute("password");
        String username = (String) session.getAttribute("username");
        String name = (String) session.getAttribute("user");
        //buscar username no banco antes de incluir
        danielUser.addUser(username, password, name);
        response.sendRedirect(request.getRequestURI());
    }
    //remover manualmente
    if(request.getParameter("logout") != null){
        String username = (String) session.getAttribute("username");
        //buscar username no banco antes de excluir
        danielUser.removeUser(username);
        response.sendRedirect(request.getRequestURI());
    }
        
    taskList = danielUser.getTasks();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Daniel Exame</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%if (session.getAttribute("user") == null) {%>
        <%}else{%>
        <h1> Bem-vindo(a), <%= session.getAttribute("user")%> </h1>
        <%}%>
    </body>
</html>
