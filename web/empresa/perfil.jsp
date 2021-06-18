<%
    session = request.getSession();
    
    if(session == null ){
        response.sendRedirect("404.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oferta</title>
        <%@include file="../WEB-INF/bootstrap-links.jsp" %>
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/header.css" />
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/footer.css" />
        <link rel="stylesheet" href="/SISTEMA1/estilo/assets/css/botones.css" />
    </head>
    <body>
        <header>
            <%@include file="../WEB-INF/header.jsp" %>
        </header>
        <div class="container my-5">
            <form method="POST" action="/SISTEMA1/ControladorEmpresa">
                <div class="card">
                    <div class="card-header">
                        <h3>Datos Oferta</h3>
                    </div>
                    <div class="card-body">
                        <div class="row justify-content-center mb-3">
                            <div class="col-md-8 col-lg-6 col-sm-12">
                                <label class="form-label">Titulo*</label>
                                <input class="form-control" type="text" name="tituloOferta"/>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-3">
                            <div class="col-md-8 col-lg-6 col-sm-12">
                                <label class="form-label">Cargo*</label>
                                <input class="form-control" type="text" name="cargoOferta"/>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-3">
                            <div class="col-md-8 col-lg-6 col-sm-12">
                                <label class="form-label">Jornada Laboral*</label>
                                <select class="form-select" type="text" name="jornadaLaboralOferta">
                                    <option value="tiempo parcial">Tiempo Parcial</option>
                                    <option value="tiempo completo">Tiempo Completo</option>
                                    <option value="por hora">Por Hora</option>
                                    <option value="desde casa">Desde Casa</option>
                                </select>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-3">
                            <div class="col-md-8 col-lg-6 col-sm-12">
                                <label class="form-label">Tipo de Contrato*</label>
                                <select class="form-select" type="text" name="tipoContratoOferta">
                                    <option value="tiempo parcial">Tiempo Parcial</option>
                                    <option value="tiempo completo">Tiempo Completo</option>
                                    <option value="por hora">Por Hora</option>
                                    <option value="desde casa">Desde Casa</option>
                                </select>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-3">
                            <div class="col-md-8 col-lg-6 col-sm-12">
                                <label class="form-label">Salario*</label>
                                <input class="form-control" type="number" name="salarioOferta" step=".01"/>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-3">
                            <div class="col-md-8 col-lg-6 col-sm-12">
                                <label class="form-label">Descripcion de Tareas*</label>
                                <textarea class="form-control" rows="5" name="descripcionOferta"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3>Requerimientos</h3>
                    </div>
                    <div class="card-body">
                        <div class="row justify-content-center mb-3">
                            <div class="col-md-8 col-lg-6 col-sm-12">
                                <label class="form-label">Habilidades</label>
                                <select class="form-select">
                                    <option value="">OPTION 1</option>
                                    <option value="">OPTION 2</option>
                                    <option value="">OPTION 3</option>
                                    <option value="">OPTION 4</option>
                                    <option value="">OPTION 5</option>
                                </select>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-3">
                            <div class="col-md-8 col-lg-6 col-sm-12">
                                <label class="form-label">Idiomas</label>
                                <select class="form-select">
                                    <option value="">OPTION 1</option>
                                    <option value="">OPTION 2</option>
                                    <option value="">OPTION 3</option>
                                    <option value="">OPTION 4</option>
                                    <option value="">OPTION 5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row ">
                    <div class="col-12 my-4 d-flex justify-content-center">
                        <button class="btn btn-confirm" type="submit" name="accion" value="publicar">PUBLICAR</button>
                    </div>
                </div>
            </form>
        </div>

        <%@include file="../WEB-INF/footer.jsp"%>
    </body>
</html>
