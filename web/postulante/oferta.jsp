<%@page import="com.modelos.Oferta"%>
<%
    session = request.getSession(false);
    if (session.getAttribute("USER_ID") == null || !(session.getAttribute("TIPO") == "POSTULANTE")) {
        response.sendRedirect("login.jsp");
    }

    Oferta o = (Oferta) session.getAttribute("OFERTA");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../WEB-INF/bootstrap-links.jsp" %>
        <title>Oferta</title>
    </head>
    <body>
        <h1>OFERTA!</h1>
        <div class="container">
            <div class="row">
                <form method="POST">
                    <input type="hidden" value=<%= o.getId()%> />
                    <div class="col-12">
                        <h2><%= o.getTitulo()%></h2>
                        <p>Cargo: <%= o.getCargo()%></p>
                        <p>Empresa: <%= o.getEmpresa().getNombre()%></p>
                        <p>Direccion: <%= o.getEmpresa().getDireccion()%></p>
                        <p>Jornada Laboral <%= o.getJornadaLaboral()%></p>
                        <p>Tipo de Contrato: <%= o.getTipoContrato()%></p>
                        <p>Salario: <%= o.getSalario()%></p>
                        <p>Descripcion: <%= o.getDescripcion()%></p>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-danger" type="submit">Aplicar</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
