<%@page import="com.modelos.Oferta"%>
<%
    session = request.getSession(false);
    if (session.getAttribute("USER_ID") == null || !(session.getAttribute("TIPO") == "POSTULANTE")) {
        System.out.println("Inicie session");
        request.getRequestDispatcher("/SISTEMA1/login.jsp").forward(request, response);
    }

    Oferta o = (Oferta) session.getAttribute("OFERTA");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oferta</title>
        <%@include file="../WEB-INF/bootstrap-links.jsp" %>
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/oferta.css"/>
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/header.css"/>
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/footer.css" />
    </head>
    <body>
        <header>
            <%@include file="../WEB-INF/header.jsp" %>
        </header>
        <div id="vacant-container">      

            <div class="header-vacant w-100">
                <div class="header-info w-100">
                    <h3 class="text-center"><%= o.getEmpresa().getNombre()%> <span>(<%= o.getEmpresa().getPais()%>)</span></h3>
                    <p class="text-center"><%= o.getEmpresa().getDireccion()%></p>
                    <p class="text-center"><%= o.getEmpresa().getTelefono()%></p>
                </div>
                <img class="img-fluid" src="/SISTEMA1/estilo/assets/images/bg.jpg"/>
            </div>

            <div id="vacant-info" class="container my-2">
                <div class="row">
                    <div class="col-12 border-bottom border-white">
                        <h2 ><%= o.getTitulo()%></h2>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-12">
                        <p>Jornada Laboral: <%= o.getJornadaLaboral()%></p>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-12">
                        <p>Tipo de Contrato: <%= o.getTipoContrato()%></p>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-12">
                        <p>Salario: <%= o.getSalario()%></p>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-12">
                        <p>Descripcion: <%= o.getDescripcion()%></p>
                    </div>
                </div>
                <div class="row my-3 p-4">
                    <div class="col-12">
                        <form method="POST"  action="/SISTEMA1/ControladorOferta">
                            <input type="hidden" value=<%= o.getId()%> name="idOferta"/>    
                            <button name="accion" value="aplicar" class="btn btn-warning d-block mx-auto">APLICAR</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../WEB-INF/footer.jsp" %>
    </body>
</html>
