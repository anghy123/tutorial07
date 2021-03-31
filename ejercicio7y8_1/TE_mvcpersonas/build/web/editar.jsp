<%-- 
    Document   : editar
    Created on : 24-03-2021, 08:56:17 PM
    Author     : ANGELA CATACORA
--%>
<%@page import="com.emergentes.modelo.persona"%>
<%
    persona reg = (persona) request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de personas</h1>
        <form action="MainServlet" method="Post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%=reg.getId() %>"></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombres" value="<%=reg.getNombres() %>"></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="<%=reg.getApellidos() %>"></td>
                <tr>
                    <td>Edad</td>
                    <td><input type="number" name="edad" value="<%=reg.getEdad() %>"></td>                    
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
               
            </table>
        </form>
    </body>
</html>
