<%-- 
    Document   : editar
    Created on : 24-03-2021, 08:56:17 PM
    Author     : ANGELA CATACORA
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.agenda"%>
<%
    if (session.getAttribute("listaper") == null) {
        ArrayList<agenda> la = new ArrayList<agenda>();
        session.setAttribute("listaper", la);
    }
    ArrayList<agenda> lista = (ArrayList<agenda>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Agenda personal</h1>
        <a href="MainServlet?op=nuevo" >Nuevo registro</a>
        <table border="1" cellspacing='1'>
            <tr>
                <th>Id</th>
                <th>hora</th>
                <th>actividad</th>
                <th>completado</th>       

            </tr>
            <%
                if (lista != null) {
                    for (agenda item : lista) {

            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getHora()%></td>
                <td><%=item.getActividad()%></td>
                <td><%= item.getCompletado()%></td>
                <td><a href="MainServlet?op=editar&id=<%=item.getId()%>">Editar</a></td>
                <td><a href="MainServlet?op=eliminar&id=<%=item.getId()%>" onclick="return(confirm('Esta seguro de eliminar?'))">Eliminar</a></td>
                
            </tr>
            <%                 }
                }
            %>
        </table>
    </body>
</html>
