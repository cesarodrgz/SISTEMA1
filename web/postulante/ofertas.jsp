<%@page import="java.util.ArrayList"%>
<%@page import="com.modelos.Oferta"%>
<%
    session = request.getSession(false);
    if (session.getAttribute("USER_ID") == null || !(session.getAttribute("TIPO") == "POSTULANTE")) {
        System.out.println("Inicie session");
        request.getRequestDispatcher("/SISTEMA1/login.jsp").forward(request, response);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../WEB-INF/bootstrap-links.jsp" %>
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/cv.css"/>
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/header.css"/>
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/footer.css" />
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/ofertas.css" />
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/botones.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <%@include file="../WEB-INF/header.jsp" %>
        </header>
        <div id="content" class="container my-5">
            <div class="row">
                <%
                    ArrayList<Oferta> lista = (ArrayList<Oferta>) session.getAttribute("OFERTAS");
                    for (Oferta o : lista) {
                %>
                <div class="col-lg-4 col-sm-12">
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
        <%@include file="../WEB-INF/footer.jsp" %>
    </body>
</html>
