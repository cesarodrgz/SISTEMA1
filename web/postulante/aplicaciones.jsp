<%@page import="java.util.ArrayList"%>
<%@page import="com.modelos.Oferta"%>
<%
    session = request.getSession(false);
    if (session.getAttribute("USER_ID") == null || !(session.getAttribute("TIPO") == "POSTULANTE")) {
        request.getRequestDispatcher("/SISTEMA1/login.jsp").forward(request, response);
    }

    ArrayList<Oferta> lista = (ArrayList<Oferta>) session.getAttribute("APLICACIONES");
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
        <h1>Mis aplicaciones</h1>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <%
                        if (lista.isEmpty()) {
                    %>
                    <h3>No hay Aplicaciones.</h3>
                    <%
                    } else {
                    %>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Titulo</th>
                                <th scope="col">Cargo</th>
                                <th scope="col">Tipo de Contrato</th>
                                <th scope="col">Salario</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Oferta o : lista) {
                            %>
                            <tr>
                                <th scope="row"><%= o.getTitulo()%></th>
                                <td><%= o.getCargo()%></td>
                                <td><%= o.getTipoContrato()%></td>
                                <td><%= o.getSalario()%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
