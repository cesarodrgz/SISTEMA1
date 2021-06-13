<%-- 
    Document   : registrar.jsp
    Created on : 06-12-2021, 01:15:47 PM
    Author     : rodez
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Registro</title>

        <link href="estilo/assets/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">
        <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">
        <link href="estilo/assets/css/owl.carousel.css" rel="stylesheet">
        <link href="estilo/assets/css/owl.carousel.theme.min.css" rel="stylesheet">
        <link href="estilo/assets/css/main.css" rel="stylesheet">
        
    </head>
    <body data-spy="scroll" data-target="#main-navbar">

        <!-- NavigationBar Section -->
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="index.jsp">
                    <img class="img-responsive" src="estilo/assets/images/logoues.png" alt="logo">
                  </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="main-navbar">
                  <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active"><a href="registrar.jsp">Registrarme<span class="sr-only">(current)</span></a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
                </nav>

        <!-- Header Section -->
            <header id="header" class="header overlay-dark">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3">
                            <div class="intro-box c-table">
                                <div class="intro ct-cell">
                                    <h1>Iniciar</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

        <!-- Fun Facts -->
            <section id="fun" class="fun">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="title-box">
                                <div class="container-fluid">
                                    <div class="row my-5">
                                        <div class="col-sm-12 col-md-6 mx-auto">
                                            <h2>Rellene con la información correspondiente</h2> <br>
                                            <!--Formulario de registro-->
                                            <form enctype="multipart/form-data" method="POST" action="ControladorPostulante">

                                                <!--Nombre-->
                                                <div class="col-md-6 mb-3"> 
                                                    <label for="txtnombre" class="form-label">Nombres:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txtnombre" name="txtnombre"> <br>
                                                </div>

                                                <!--Apellido-->
                                                <div class="col-md-6 mb-3"> 
                                                    <label for="txtapellido" class="form-label">Apellidos:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txtapellido" name="txtapellido"> <br>
                                                </div>

                                                <!--Genero-->
                                                <div class="col-md-6 mb-3"> 
                                                    <label class="form-label">Genero:</label>
                                                    <select name="txtgenero" class="form-control" style="border: 0.1px solid black">
                                                        <option>Elegir</option>
                                                        <option value="M">M</option>
                                                        <option value="F">F</option>
                                                    </select> <br>
                                                </div>

                                                <!--Fecha Nacimiento-->
                                                <div class="col-md-6 mb-3"> 
                                                    <label for="txtfecha" class="form-label">Fecha Nacimiento:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txtfecha" name="txtfecha"> <br>
                                                </div>

                                                <!--DUI-->
                                                <div class="col-md-6 mb-3"> 
                                                    <label for="txtdui" class="form-label">DUI:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txtdui" name="txtdui"> <br>
                                                </div>

                                                <!--Pasaporte-->
                                                <div class="col-md-6 mb-3"> 
                                                    <label for="txtpasaporte" class="form-label">Pasaporte:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txtpasaporte" name="txtpasaporte"> <br>
                                                </div>

                                                <!--nit-->
                                                <div class="col-md-6 mb-3"> 
                                                    <label for="txtnit" class="form-label">NIT:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txtnit" name="txtnit"> <br>
                                                </div>

                                                <!--nup-->
                                                <div class="col-md-6 mb-3"> 
                                                    <label for="txtnup" class="form-label">NUP:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txtnup" name="txtnup"> <br>
                                                </div>

                                                <!--direccion-->
                                                <div class="col-md-12 mb-3"> 
                                                    <label for="txtdireccion" class="form-label">Dirección:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txtdireccion" name="txtdireccion"> <br>
                                                </div>

                                                <!--telefono-->
                                                <div class="col-md-6 mb-3"> 
                                                    <label for="txttelefono" class="form-label">Telefono:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txttelefono" name="txttelefono"> <br>
                                                </div>

                                                <!--Correo-->
                                                <div class="col-md-6 mb-3"> 
                                                    <label for="txtcorreo" class="form-label">Correo:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txtcorreo" name="txtcorreo"> <br>
                                                </div>

                                                <!--Redes Sociales-->
                                                <div class="col-md-12 mb-3"> 
                                                    <label for="txtrs" class="form-label">Redes sociales:</label>
                                                    <input type="Text" style="border: 0.1px solid black" class="form-control" id="txtrs" name="txtrs"> <br>
                                                </div>

                                                <!--Curriculum Vitae-->
                                                <div class="col-md-12 mb-3"> 
                                                    <label for="cv" class="form-label">Curriculum Vitae:</label>
                                                    <input type="file" style="border: 0.1px solid black" class="form-control" id="cv" name="cv"> <br>
                                                </div>

                                                <button type="submit" class="btn btn-success">Registrar</button> <br>
                                            </form>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>

        <!-- Footer -->
            <footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <p>
                                Base de Datos - Ing. De sistemas Informaticos - UES - FMO
                            </p>
                        </div>
                        <div class="col-sm-6">
                            <div class="footer-social">
                                <a href="#"><i class="ion-social-facebook"></i></a>
                                <a href="#"><i class="ion-social-linkedin-outline"></i></a>
                                <a href="#"><i class="ion-social-skype-outline"></i></a>
                                <a href="#"><i class="ion-social-twitter"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        
        <!-- Scripts -->
        <script src="estilo/assets/js/jquery-1.12.3.min.js"></script>
        <script src="estilo/assets/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        <script src="estilo/assets/js/owl.carousel.min.js"></script>
        <script src="estilo/assets/js/script.js"></script>
    </body>
</html>
