<%-- 
    Document   : consultarA
    Created on : 31 mar. 2022, 20:25:11
    Author     : Erickson05
--%>

<%@page import="java.util.*"%>
<%@page import="Modelo.Registro"%>
<%@page import="Control.AccionesAlumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <h1>Tabla de todos los alumnos</h1>
        <br>
        <table border="2">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Boleta</th>
                    <th>Grupo</th>
                    <th>Nombre</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Edad</th>
                    <th>Telefono</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Registro> lista = AccionesAlumno.TodosA();
                for (Registro a : lista) {
                        %>
                        <tr>
                            <td><%=a.getId()%></td>
                            <td><%=a.getBol()%></td>
                            <td><%=a.getGrup()%></td>
                            <td><%=a.getNom()%></td>
                            <td><%=a.getAppat()%></td>
                            <td><%=a.getApmat()%></td>
                            <td><%=a.getEdad()%></td>
                            <td><%=a.getTel()%></td>
                            <td><a href="editarA.jsp?id="<%=a.getId()%>>Editar</a></td>
                            <td><a href="borrarA.jsp?id="<%=a.getId()%>>Borrar</a></td>
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <br>
        <a href="index.html">Regresar al menú principal</a>
    </body>
</html>
