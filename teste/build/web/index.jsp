<%-- 
    Document   : index
    Created on : 8 de nov. de 2021, 20:40:20
    Author     : danie
--%>

<%@page import="web.DBListener"%>
<%@page import="db.Tasks"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    Date date = new Date();
    try{
        if(request.getParameter("add")!=null){
            String taskName = request.getParameter("taskName");
            Tasks.addTask(taskName);
            response.sendRedirect(request.getRequestURI());
            taskList = Tasks.getTasks();
        }
        
        if(request.getParameter("remove")!=null){
            String taskName = request.getParameter("taskName");
            Tasks.removeTask(taskName);
            response.sendRedirect(request.getRequestURI());
            taskList = Tasks.getTasks();
        }
        
    }catch(Exception ex){
        requestException = ex;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - List</title>
    </head>
    <body>
        <h1><strong>Daniel de Oliveira Soares - 08/11/2021 <%= dateFormat.format(date) %></strong></h1>
        <%if(DBListener.exception!=null){%>
        <div style="color: red">
            Erro na criação do Banco de Dados:</br>
            <%= DBListener.exception.getMessage()%>
        </div>
        <%}%>
        <%if(requestException!=null){%>
        <div style="color: red">
            Erro na leitura ou gravação de dados:</br>
            <%= requestException.getMessage()%>
        </div>
        <%}%>
        <h2>Tarefas</h2>
        <form method="post">
            <input type="text" name="taskName"/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>
        <table>
            <% for(String taskName: Tasks.getTasks()){%>
                <tr>
                    <td><%= taskName %></td>
                    <td>
                        <form method="post">
                            <input type="hidden" name="taskName" value="<%= taskName %>"/>
                            <input type="submit" name="remove" value="-"/>
                        </form>
                    </td>
                </tr>
            <%}%>
        </table>
    </body>
</html>
