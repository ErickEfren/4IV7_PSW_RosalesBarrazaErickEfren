<%-- 
    Document   : editarA
    Created on : 31 mar. 2022, 21:05:37
    Author     : Erickson05
--%>

<%@page import="Modelo.Registro"%>
<%@page import="Control.AccionesAlumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tabla para Actualizar empleados</h1
        <br>
        <form name="actualizarA" method="post" action="actualizarA">
                    <table border="2">
                        <%
                            int id = Integer.parseInt(request.getParameter("id"));
                            Registro a = AccionesAlumno.BuscarA(id);
                        %>
                        <tr>
                            <td>Id</td>
                            <td><input type="hidden" name="id2" value="<%=a.getId()%>"></td>
                        </tr>
                        <tr>
                            <td>Número de Boleta: </td>
                            <td><input type="number" name="bol2" size="30" value="<%=a.getBol()%>"></td>
                        </tr>
                        <tr>
                            <td>Grupo: </td>
                            <td><input type="text" name="grup2" size="30" value="<%=a.getGrup()%>"></td>
                        </tr>
                        <tr>
                            <td>Nombre(s): </td>
                            <td><input type="text" name="nom2" size="30" value="<%=a.getNom()%>"></td>
                        </tr>
                        <tr>
                            <td>Apellido Paterno: </td>
                            <td><input type="text" name="appat2" size="30" value="<%=a.getAppat()%>"></td>
                        </tr>
                        <tr>
                            <td>Apellido Materno: </td>
                            <td><input type="text" name="apmat2" size="30" value="<%=a.getApmat()%>"></td>
                        </tr>
                        <tr>
                            <td>Edad: </td>
                            <td><input type="number" name="edad2" size="30" value="<%=a.getEdad()%>"></td>
                        </tr>
                        <tr>
                            <td>Número de Teléfono: </td>
                            <td><input type="number" name="tel2" size="30" value="<%=a.getTel()%>"></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="submit" value="Actualizar Alumno"></td>
                        </tr>
                    </table>
                    <br>
                    <div class="ContainerConsulta">
                        <a href="consultarA.jsp">Consultar todos los alumnos</a>
                    </div>
                </form>
    </body>
</html>
