<%@page import="java.util.ArrayList"%>
<%@page import="com.modelos.Oferta"%>
<%
    session = request.getSession(false);
    if (session.getAttribute("USER_ID") == null || !(session.getAttribute("TIPO") == "POSTULANTE")) {
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../WEB-INF/bootstrap-links.jsp" %>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ofertas</h1>
        <div class="container my-5">
            <div class="row">
                <%
                    ArrayList<Oferta> lista = (ArrayList<Oferta>) session.getAttribute("OFERTAS");
                    for (Oferta o : lista) {
                %>
                <div class="col-lg-6 col-sm-12">
                    <a href=<%= "/SISTEMA1/postulante/oferta?id=" + o.getId()%>>
                        <div class="card">
                            <div class="card-header">
                                <h3><%= o.getTitulo()%></h3>
                            </div>
                            <div class="card-body">
                                <p>Empresa: <%= o.getEmpresa().getNombre()%> <span>(<%= o.getEmpresa().getPais()%>)</span></p>
                                <p>Telefono: <%= o.getEmpresa().getTelefono()%></p>
                                <p>Cargo: <%= o.getCargo()%></p>
                            </div>
                            <div class="card-footer">
                                <p><%= o.getSalario()%> <span><%= o.getTipoContrato()%></span></p>
                            </div>
                        </div>
                    </a>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </body>
</html>
