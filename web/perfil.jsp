<%-- 
    Document   : perfil
    Created on : 06-17-2021, 04:55:53 PM
    Author     : rodez
--%>

<%@page import="com.modelos.Empresa"%>
<%
    session = request.getSession(false);    
    if (session == null) {
        response.sendRedirect("login.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= ((Empresa)session.getAttribute("empresa")).getNombre() %></h1>
        <h1><%= ((Empresa)session.getAttribute("empresa")).getDescripcion() %></h1>
        <h1><%= ((Empresa)session.getAttribute("empresa")).getDireccion() %></h1>
    </body>
</html>
