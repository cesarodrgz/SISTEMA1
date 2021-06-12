<%-- 
    Document   : index
    Created on : 06-12-2021, 01:15:04 PM
    Author     : rodez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" />
        <title>JSP Page</title>
    </head>
    <body>

        <div class="container-fluid h-100">
            <div class="login-form w-50">
                <div class="card">
                    <div class="card-header">
                        INICIA SESSION
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="col-12 mb-3">
                                <label for="usuario" class="form-label">Usuario:</label>
                                <input type="email" class="form-control" id="usuario" placeholder="name@example.com">
                            </div>
                            <div class="col-12 mb-3">
                                <label for="contraseña" class="form-label">Contraseña:</label>
                                <input type="email" class="form-control" id="contraseña" placeholder="Contraseña">
                            </div> 
                            <div class="col-12">
                                <div class="d-grid gap-2 col-12">
                                    <button type="button" class="btn btn-success">Ingresar</button> 
                                </div>
                            </div>
                        </form> 
                    </div>
                    <div class="card-footer">
                        <a href="registrar.jsp">¿No estás registrado? Registrate aquí</a> <br>
                    </div>
                </div>
            </div>
        </div> 
    </body>
</html>
