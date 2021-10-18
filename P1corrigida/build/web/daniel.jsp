<%-- 
    Document   : daniel
    Created on : 4 de out. de 2021, 21:25:56
    Author     : danie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre o autor</title>
    </head>
    <body>
        <center><%@include file="WEB-INF/jspf/header.jspf" %></center>
        <%if(Username!=null){%>
            <p>
                Nome: Daniel de Oliveira Soares<br/>
                RA: 1290481012006<br/>
                Semestre que ingressou na Fatec: 1º Semestre de 2020<br/>
                Link do Github: <a href="https://github.com/DanieldeOlivso/progamacao-orientada-objeto">https://github.com/DanieldeOlivso/progamacao-orientada-objeto</a><br/>
                Materias Cursando:<br/>
            </p>
            <table border="1px">
                <tr>
                    <td>Disciplina</td>
                    <td>Dia(s) da semana</td>
                </tr>
                <tr>
                    <td>POO</td>
                    <td>Segunda-feira</td>
                </tr>
                <tr>
                    <td>Banco de Dados</td>
                    <td>Terça-feira</td>
                </tr>
                <tr>
                    <td>Sistema Operacionais II</td>
                    <td>Terça-feira e Quarta-feira</td>
                </tr>
                <tr>
                    <td>Engenharia de Software III</td>
                    <td>Quinta-feira</td>
                </tr>
                <tr>
                    <td>Metodologia</td>
                    <td>Sexta-feira</td>
                </tr>
                <tr>
                    <td>Inglês</td>
                    <td>Sexta-feira</td>
                </tr>
            </table>
        <%}else{%>
            <h3>Você não tem acesso ao conteúdo dessa página</h3>
        <%}%>
    </body>
</html>
