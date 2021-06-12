<%-- 
    Document   : registrar.jsp
    Created on : 06-12-2021, 01:15:47 PM
    Author     : rodez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row my-5">
                <div class="col-sm-12 col-md-6 mx-auto">

                    <!--Formulario de registro-->
                    <form enctype="multipart/form-data" method="POST" action="ControladorPostulante">

                        <!--Nombre-->
                        <div class="col-12 mb-3"> 
                            <label for="txtnombre" class="form-label">Nombres:</label>
                            <input type="Text" class="form-control" id="txtnombre" name="txtnombre">
                        </div>

                        <!--Apellido-->
                        <div class="col-12 mb-3"> 
                            <label for="txtapellido" class="form-label">Apellidos:</label>
                            <input type="Text" class="form-control" id="txtapellido" name="txtapellido">
                        </div>

                        <!--Genero-->
                        <div class="col-md-12 mb-3"> 
                            <label class="form-label">Genero:</label>
                            <select name="txtgenero" class="form-select">
                                <option>Elegir</option>
                                <option value="M">M</option>
                                <option value="F">F</option>
                            </select>
                        </div>

                        <!--Fecha Nacimiento-->
                        <div class="col-md-12 mb-3"> 
                            <label for="txtfecha" class="form-label">Fecha Nacimiento:</label>
                            <input type="Text" class="form-control" id="txtfecha" name="txtfecha">
                        </div>

                        <!--DUI-->
                        <div class="col-md-12 mb-3"> 
                            <label for="txtdui" class="form-label">DUI:</label>
                            <input type="Text" class="form-control" id="txtdui" name="txtdui">
                        </div>

                        <!--Pasaporte-->
                        <div class="col-md-12 mb-3"> 
                            <label for="txtpasaporte" class="form-label">Pasaporte:</label>
                            <input type="Text" class="form-control" id="txtpasaporte" name="txtpasaporte">
                        </div>

                        <!--nit-->
                        <div class="col-md-12 mb-3"> 
                            <label for="txtnit" class="form-label">NIT:</label>
                            <input type="Text" class="form-control" id="txtnit" name="txtnit">
                        </div>

                        <!--nup-->
                        <div class="col-md-12 mb-3"> 
                            <label for="txtnup" class="form-label">NUP:</label>
                            <input type="Text" class="form-control" id="txtnup" name="txtnup">
                        </div>

                        <!--direccion-->
                        <div class="col-md-12 mb-3"> 
                            <label for="txtdireccion" class="form-label">Dirección:</label>
                            <input type="Text" class="form-control" id="txtdireccion" name="txtdireccion">
                        </div>

                        <!--telefono-->
                        <div class="col-md-12 mb-3"> 
                            <label for="txttelefono" class="form-label">Telefono:</label>
                            <input type="Text" class="form-control" id="txttelefono" name="txttelefono">
                        </div>

                        <!--Correo-->
                        <div class="col-md-12 mb-3"> 
                            <label for="txtcorreo" class="form-label">Correo:</label>
                            <input type="Text" class="form-control" id="txtcorreo" name="txtcorreo">
                        </div>

                        <!--Redes Sociales-->
                        <div class="col-md-12 mb-3"> 
                            <label for="txtrs" class="form-label">Redes sociales:</label>
                            <input type="Text" class="form-control" id="txtrs" name="txtrs">
                        </div>

                        <!--Curriculum Vitae-->
                        <div class="col-md-12 mb-3"> 
                            <label for="cv" class="form-label">Curriculum Vitae:</label>
                            <input type="file" class="form-control" id="cv" name="cv">
                        </div>

                        <button type="submit" class="btn btn-success">Registrar</button> 
                    </form>   
                </div>
            </div>
        </div>
    </body>
</html>
