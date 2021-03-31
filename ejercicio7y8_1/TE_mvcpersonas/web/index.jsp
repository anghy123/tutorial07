<%-- 
    Document   : editar
    Created on : 24-03-2021, 08:56:17 PM
    Author     : ANGELA CATACORA
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.persona"%>
<%
    if (session.getAttribute("listaper") == null) {
        ArrayList<persona> la = new ArrayList<persona>();
        session.setAttribute("listaper", la);
    }
    ArrayList<persona> lista = (ArrayList<persona>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de personas</h1>
        <a href="MainServlet?op=nuevo" >Nuevo registro</a>
        <table border="1" cellspacing='1'>
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th colspan="2">opcion</th>          

            </tr>
            <%
                if (lista != null) {
                    for (persona item : lista) {

            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getNombres()%></td>
                <td><%=item.getApellidos()%></td>
                <td><%= item.getEdad()%></td>
                <td><a href="MainServlet?op=editar&id=<%=item.getId()%>">Editar</a></td>
                <td><a href="MainServlet?op=eliminar&id=<%=item.getId()%>" onclick="return(confirm('Esta seguro de eliminar?'))">Eliminar</a></td>
                
            </tr>
            <%                 }
                }
            %>
        </table>
    </body>
</html>
