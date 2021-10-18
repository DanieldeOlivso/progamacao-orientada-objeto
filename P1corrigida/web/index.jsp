<%-- 
    Document   : index
    Created on : 4 de out. de 2021, 21:25:42
    Author     : danie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<String> sessionList = null;
    if(application.getAttribute("headerSessionList")!=null){
        sessionList = (ArrayList)application.getAttribute("headerSessionList");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <center><%@include file="WEB-INF/jspf/header.jspf" %></center>
        <h3><%= cont%> usuário(s) logado(s) na aplicação</h3>
        <%if(Username!=null && sessionList!=null){%>
            <ul>
                <%for(String name: sessionList){%>
                    <li><%= name %></li>
                <%}%>
            </ul>
        <%}%>
    </body>
</html>
