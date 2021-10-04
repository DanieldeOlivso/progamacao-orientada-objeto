<%-- 
    Document   : Daniel_de_Oliveira
    Created on : 3 de out. de 2021, 23:16:38
    Author     : danie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página do autor</title>
    </head>
    <body>
        <center><%@include file="WEB-INF/jspf/header.jspf" %></center>
        <%if(Username!=null){%>
        <h1>Sobre:</h1>
            <p>Nome: Daniel de Oliveira Soares<br/>
                RA: 1290481012006<br/>
                Semestre que ingressou na Fatec: 1º Semestre de 2020<br/>
                Link do Github: <a href="https://github.com/DanieldeOlivso/progamacao-orientada-objeto">https://github.com/DanieldeOlivso/progamacao-orientada-objeto</a><br/>
                Materias Cursando:<br/>
                <table border="1px">
                    <tr>
                        <td><center><strong>Materias<strong></center></td>
                        <td><center><strong>Dia(s) da semana<strong></center></td>
                    </tr>
                    <tr>
                        <td>Programação Orientada a Objetos</td>
                        <td>Segunda-feira</td>
                    </tr>
                    <tr>
                        <td>Banco de Dados</td>
                        <td>Terça-feira</td>
                    </tr>
                    <tr>
                        <td>Sistemas Operacionais II(SOII)</td>
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
            </p>
        <%}else{%>
            <h3>Conteúdo restrito, faça login para continuar.</h3>
        <%}%>
    </body>
</html>
