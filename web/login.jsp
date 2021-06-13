<%-- 
    Document   : login
    Created on : 06-12-2021, 12:18:43 AM
    Author     : Julio Chica
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>LOGIN</title>

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
                    <li class="active"><a href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
                    <li><a href="registrar.jsp">Registrarme</a></li>
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
                                    <h1>Iniciar Sesión</h1>
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
                                
                                    <form>
                                        <div class="row justify-content-md-center">
                                            <div class="col-12 col-md-8">
                                                <label for="usuario" class="form-label">Usuario:</label>
                                                <input type="email" style="border: 0.1px solid black" class="form-control" id="usuario" placeholder="name@example.com"> <br>
                                            </div>
                                        </div>
                                        
                                        <div class="row justify-content-md-center">
                                            <div class="col-12 col-md-8">
                                                <label for="contraseña" class="form-label">Contraseña:</label>
                                                <input type="text" style="border: 0.1px solid black" class="form-control" id="contraseña" placeholder="Contraseña"> <br>
                                            </div> 
                                        </div>
                                        

                                        <div class="row justify-content-md-center">
                                            <div class="col-12 col-md-8">
                                                <button type="button" class="btn btn-success">Ingresar</button> <br> <br>
                                                <a href="registrar.jsp">¿No estás registrado? Registrate aquí</a> <br>
                                                <a href="listar.jsp">LISTA</a> <br>
                                            </div>
                                        </div>
                                        <br>
                                    </form>
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