<%-- 
    Document   : contatos
    Created on : 25 de out. de 2021, 16:04:20
    Author     : danie
--%>
<%@page import="model.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String error = null;
    try{
        if(request.getParameter("formAdd")!=null){
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            int diaNasc = Integer.parseInt(request.getParameter("nascimentoDia"));
            int mesNasc = Integer.parseInt(request.getParameter("nascimentoMes"));
            int anoNasc = Integer.parseInt(request.getParameter("nascimentoAno"));
            Contato c = new Contato(nome, telefone, new Data(diaNasc, mesNasc, anoNasc));
            Base.getContatosList().add(c);
            response.sendRedirect(request.getRequestURI());
        }
        else if(request.getParameter("remover")!=null){
            int index = Integer.parseInt(request.getParameter("index"));
            response.sendRedirect(request.getRequestURI());
            Base.getContatosList().remove(index);
        }
    }
    catch(Exception e){
        error = e.getMessage();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contatos - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Contatos</h2>
        <%if(error != null){%>
            <div style="color: red;"><%= error %></div>
        <%}%>
        <form method="post">
            <fieldset>
                <legend>Novo Contato</legend>
                Nome<br/><input type="text" name="nome"/><br/>
                Telefone<br/><input type="text" name="telefone"/><br/>
                Data de nascimento<br/>
                <input type="number" step="1" name="nascimentoDia"/>/
                <input type="number" step="1" name="nascimentoMes"/>/
                <input type="number" step="1" name="nascimentoAno"/>
                <br/>
                <br/>
                <input type="submit" name="formAdd" value="Cadastrar"/>
            </fieldset>
        </form>
        <hr/>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Data de Nascimento</th>
                <th>Remover</th>
            </tr>
            <% for(Contato c: Base.getContatosList()){ %>
                <tr>
                    <th><%= c.getNome() %></th>
                    <th><%= c.getTelefone() %></th>
                    <th><%= c.getNascimento().getData() %></th>
                    <th>
                        <form method="post">
                            <input type="submit" name="remover" value="Remover"/>
                            <input type="hidden" name="index" value="<%= Base.getContatosList().indexOf(c) %>"/>
                        </form>
                    </th>
                </tr>
            <%}%>
        </table>
    </body>
</html>
