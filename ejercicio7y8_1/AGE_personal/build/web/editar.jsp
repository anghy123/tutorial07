<%-- 
    Document   : editar
    Created on : 24-03-2021, 08:56:17 PM
    Author     : ANGELA CATACORA
--%>
<%@page import="com.emergentes.modelo.agenda"%>
<%
    agenda reg = (agenda) request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agenda personal</h1>
        <form action="MainServlet" method="Post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%=reg.getId() %>"></td>
                </tr>
                <tr>
                    <td>Hora</td>
                    <td><input type="time" name="hora" value="<%=reg.getHora() %>"></td>
                </tr>
                <tr>
                    <td>Actividad</td>
                    <td><input type="text" name="actividad" value="<%=reg.getActividad() %>"></td>
                <tr>
                    <td>Completado</td>
                    <td><input type="text" name="completado" value="<%=reg.getCompletado() %>"></td>                    
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
               
            </table>
        </form>
    </body>
</html>
