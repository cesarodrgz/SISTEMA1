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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous"><!-- comment -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="estilo/assets/css/footer.css" rel="stylesheet">    
        <link href="estilo/assets/css/registro.css" rel="stylesheet">    
        <link href="estilo/assets/css/header.css" rel="stylesheet">    
    </head>
    <body data-spy="scroll" data-target="#main-navbar">

        <nav class="navbar fixed-top navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img class="img-fluid logo" src="estilo/assets/images/logoues.png" alt="logo">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">HOME</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!--<section class=" container d-flex justify-content-center align-items-center">-->
        <!--<div class="container-form">-->
        <div class="container my-5 pt-5">
            <div class="card">
                <div class="card-header">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="enterprise-tab" data-bs-toggle="tab" data-bs-target="#enterprise" type="button" role="tab" aria-controls="home" aria-selected="true">Empresa</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="student-tab" data-bs-toggle="tab" data-bs-target="#student" type="button" role="tab" aria-controls="profile" aria-selected="false">Estudiante</button>
                        </li>
                    </ul>
                </div>  
                <div class="card-body">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="enterprise" role="tabpanel" aria-labelledby="home-tab">
                            <form method="POST" action="ControladorEmpresa">
                                <div class="row justify-content-center">
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-building"></i></span>
                                        <input class="form-control" type="text" placeholder="Nombre de la empresa" name="nombreEmpresa"/>
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-telephone"></i></span>
                                        <input class="form-control" type="text" placeholder="Telefono" name="telefonoEmpresa"/>
                                    </div>
                                    </di
                                    <div class="row justify-content-center">
                                        <div class="col-md-6 mb-3 input-group">
                                            <span class="input-group-text"><i class="bi bi-envelope"></i></span>
                                            <input class="form-control" type="text" placeholder="Email" name="emailEmpresa"/>
                                        </div>
                                        <div class="col-md-6 mb-3 input-group">
                                            <span class="input-group-text"><i class="bi bi-key"></i></span>
                                            <input class="form-control" type="password" placeholder="Contrase�a" name="contrasenaEmpresa"/>
                                        </div>
                                    </div>
                                    <div class="row justify-content-center">
                                        <div class="col-md-6 mb-3 input-group">
                                            <span class="input-group-text"><i class="bi bi-globe"></i></span>
                                            <select name="paisEmpresa" class="form-select">
                                                <option value="AF">Afganist�n</option>
                                                <option value="AL">Albania</option>
                                                <option value="DE">Alemania</option>
                                                <option value="AD">Andorra</option>
                                                <option value="AO">Angola</option>
                                                <option value="AI">Anguilla</option>
                                                <option value="AQ">Ant�rtida</option>
                                                <option value="AG">Antigua y Barbuda</option>
                                                <option value="AN">Antillas Holandesas</option>
                                                <option value="SA">Arabia Saud�</option>
                                                <option value="DZ">Argelia</option>
                                                <option value="AR">Argentina</option>
                                                <option value="AM">Armenia</option>
                                                <option value="AW">Aruba</option>
                                                <option value="AU">Australia</option>
                                                <option value="AT">Austria</option>
                                                <option value="AZ">Azerbaiy�n</option>
                                                <option value="BS">Bahamas</option>
                                                <option value="BH">Bahrein</option>
                                                <option value="BD">Bangladesh</option>
                                                <option value="BB">Barbados</option>
                                                <option value="BE">B�lgica</option>
                                                <option value="BZ">Belice</option>
                                                <option value="BJ">Benin</option>
                                                <option value="BM">Bermudas</option>
                                                <option value="BY">Bielorrusia</option>
                                                <option value="MM">Birmania</option>
                                                <option value="BO">Bolivia</option>
                                                <option value="BA">Bosnia y Herzegovina</option>
                                                <option value="BW">Botswana</option>
                                                <option value="BR">Brasil</option>
                                                <option value="BN">Brunei</option>
                                                <option value="BG">Bulgaria</option>
                                                <option value="BF">Burkina Faso</option>
                                                <option value="BI">Burundi</option>
                                                <option value="BT">But�n</option>
                                                <option value="CV">Cabo Verde</option>
                                                <option value="KH">Camboya</option>
                                                <option value="CM">Camer�n</option>
                                                <option value="CA">Canad�</option>
                                                <option value="TD">Chad</option>
                                                <option value="CL">Chile</option>
                                                <option value="CN">China</option>
                                                <option value="CY">Chipre</option>
                                                <option value="VA">Ciudad del Vaticano (Santa Sede)</option>
                                                <option value="CO">Colombia</option>
                                                <option value="KM">Comores</option>
                                                <option value="CG">Congo</option>
                                                <option value="CD">Congo, Rep�blica Democr�tica del</option>
                                                <option value="KR">Corea</option>
                                                <option value="KP">Corea del Norte</option>
                                                <option value="CI">Costa de Marf�l</option>
                                                <option value="CR">Costa Rica</option>
                                                <option value="HR">Croacia (Hrvatska)</option>
                                                <option value="CU">Cuba</option>
                                                <option value="DK">Dinamarca</option>
                                                <option value="DJ">Djibouti</option>
                                                <option value="DM">Dominica</option>
                                                <option value="EC">Ecuador</option>
                                                <option value="EG">Egipto</option>
                                                <option value="SV">El Salvador</option>
                                                <option value="AE">Emiratos �rabes Unidos</option>
                                                <option value="ER">Eritrea</option>
                                                <option value="SI">Eslovenia</option>
                                                <option value="ES" selected>Espa�a</option>
                                                <option value="US">Estados Unidos</option>
                                                <option value="EE">Estonia</option>
                                                <option value="ET">Etiop�a</option>
                                                <option value="FJ">Fiji</option>
                                                <option value="PH">Filipinas</option>
                                                <option value="FI">Finlandia</option>
                                                <option value="FR">Francia</option>
                                                <option value="GA">Gab�n</option>
                                                <option value="GM">Gambia</option>
                                                <option value="GE">Georgia</option>
                                                <option value="GH">Ghana</option>
                                                <option value="GI">Gibraltar</option>
                                                <option value="GD">Granada</option>
                                                <option value="GR">Grecia</option>
                                                <option value="GL">Groenlandia</option>
                                                <option value="GP">Guadalupe</option>
                                                <option value="GU">Guam</option>
                                                <option value="GT">Guatemala</option>
                                                <option value="GY">Guayana</option>
                                                <option value="GF">Guayana Francesa</option>
                                                <option value="GN">Guinea</option>
                                                <option value="GQ">Guinea Ecuatorial</option>
                                                <option value="GW">Guinea-Bissau</option>
                                                <option value="HT">Hait�</option>
                                                <option value="HN">Honduras</option>
                                                <option value="HU">Hungr�a</option>
                                                <option value="IN">India</option>
                                                <option value="ID">Indonesia</option>
                                                <option value="IQ">Irak</option>
                                                <option value="IR">Ir�n</option>
                                                <option value="IE">Irlanda</option>
                                                <option value="BV">Isla Bouvet</option>
                                                <option value="CX">Isla de Christmas</option>
                                                <option value="IS">Islandia</option>
                                                <option value="KY">Islas Caim�n</option>
                                                <option value="CK">Islas Cook</option>
                                                <option value="CC">Islas de Cocos o Keeling</option>
                                                <option value="FO">Islas Faroe</option>
                                                <option value="HM">Islas Heard y McDonald</option>
                                                <option value="FK">Islas Malvinas</option>
                                                <option value="MP">Islas Marianas del Norte</option>
                                                <option value="MH">Islas Marshall</option>
                                                <option value="UM">Islas menores de Estados Unidos</option>
                                                <option value="PW">Islas Palau</option>
                                                <option value="SB">Islas Salom�n</option>
                                                <option value="SJ">Islas Svalbard y Jan Mayen</option>
                                                <option value="TK">Islas Tokelau</option>
                                                <option value="TC">Islas Turks y Caicos</option>
                                                <option value="VI">Islas V�rgenes (EEUU)</option>
                                                <option value="VG">Islas V�rgenes (Reino Unido)</option>
                                                <option value="WF">Islas Wallis y Futuna</option>
                                                <option value="IL">Israel</option>
                                                <option value="IT">Italia</option>
                                                <option value="JM">Jamaica</option>
                                                <option value="JP">Jap�n</option>
                                                <option value="JO">Jordania</option>
                                                <option value="KZ">Kazajist�n</option>
                                                <option value="KE">Kenia</option>
                                                <option value="KG">Kirguizist�n</option>
                                                <option value="KI">Kiribati</option>
                                                <option value="KW">Kuwait</option>
                                                <option value="LA">Laos</option>
                                                <option value="LS">Lesotho</option>
                                                <option value="LV">Letonia</option>
                                                <option value="LB">L�bano</option>
                                                <option value="LR">Liberia</option>
                                                <option value="LY">Libia</option>
                                                <option value="LI">Liechtenstein</option>
                                                <option value="LT">Lituania</option>
                                                <option value="LU">Luxemburgo</option>
                                                <option value="MK">Macedonia, Ex-Rep�blica Yugoslava de</option>
                                                <option value="MG">Madagascar</option>
                                                <option value="MY">Malasia</option>
                                                <option value="MW">Malawi</option>
                                                <option value="MV">Maldivas</option>
                                                <option value="ML">Mal�</option>
                                                <option value="MT">Malta</option>
                                                <option value="MA">Marruecos</option>
                                                <option value="MQ">Martinica</option>
                                                <option value="MU">Mauricio</option>
                                                <option value="MR">Mauritania</option>
                                                <option value="YT">Mayotte</option>
                                                <option value="MX">M�xico</option>
                                                <option value="FM">Micronesia</option>
                                                <option value="MD">Moldavia</option>
                                                <option value="MC">M�naco</option>
                                                <option value="MN">Mongolia</option>
                                                <option value="MS">Montserrat</option>
                                                <option value="MZ">Mozambique</option>
                                                <option value="NA">Namibia</option>
                                                <option value="NR">Nauru</option>
                                                <option value="NP">Nepal</option>
                                                <option value="NI">Nicaragua</option>
                                                <option value="NE">N�ger</option>
                                                <option value="NG">Nigeria</option>
                                                <option value="NU">Niue</option>
                                                <option value="NF">Norfolk</option>
                                                <option value="NO">Noruega</option>
                                                <option value="NC">Nueva Caledonia</option>
                                                <option value="NZ">Nueva Zelanda</option>
                                                <option value="OM">Om�n</option>
                                                <option value="NL">Pa�ses Bajos</option>
                                                <option value="PA">Panam�</option>
                                                <option value="PG">Pap�a Nueva Guinea</option>
                                                <option value="PK">Paquist�n</option>
                                                <option value="PY">Paraguay</option>
                                                <option value="PE">Per�</option>
                                                <option value="PN">Pitcairn</option>
                                                <option value="PF">Polinesia Francesa</option>
                                                <option value="PL">Polonia</option>
                                                <option value="PT">Portugal</option>
                                                <option value="PR">Puerto Rico</option>
                                                <option value="QA">Qatar</option>
                                                <option value="UK">Reino Unido</option>
                                                <option value="CF">Rep�blica Centroafricana</option>
                                                <option value="CZ">Rep�blica Checa</option>
                                                <option value="ZA">Rep�blica de Sud�frica</option>
                                                <option value="DO">Rep�blica Dominicana</option>
                                                <option value="SK">Rep�blica Eslovaca</option>
                                                <option value="RE">Reuni�n</option>
                                                <option value="RW">Ruanda</option>
                                                <option value="RO">Rumania</option>
                                                <option value="RU">Rusia</option>
                                                <option value="EH">Sahara Occidental</option>
                                                <option value="KN">Saint Kitts y Nevis</option>
                                                <option value="WS">Samoa</option>
                                                <option value="AS">Samoa Americana</option>
                                                <option value="SM">San Marino</option>
                                                <option value="VC">San Vicente y Granadinas</option>
                                                <option value="SH">Santa Helena</option>
                                                <option value="LC">Santa Luc�a</option>
                                                <option value="ST">Santo Tom� y Pr�ncipe</option>
                                                <option value="SN">Senegal</option>
                                                <option value="SC">Seychelles</option>
                                                <option value="SL">Sierra Leona</option>
                                                <option value="SG">Singapur</option>
                                                <option value="SY">Siria</option>
                                                <option value="SO">Somalia</option>
                                                <option value="LK">Sri Lanka</option>
                                                <option value="PM">St Pierre y Miquelon</option>
                                                <option value="SZ">Suazilandia</option>
                                                <option value="SD">Sud�n</option>
                                                <option value="SE">Suecia</option>
                                                <option value="CH">Suiza</option>
                                                <option value="SR">Surinam</option>
                                                <option value="TH">Tailandia</option>
                                                <option value="TW">Taiw�n</option>
                                                <option value="TZ">Tanzania</option>
                                                <option value="TJ">Tayikist�n</option>
                                                <option value="TF">Territorios franceses del Sur</option>
                                                <option value="TP">Timor Oriental</option>
                                                <option value="TG">Togo</option>
                                                <option value="TO">Tonga</option>
                                                <option value="TT">Trinidad y Tobago</option>
                                                <option value="TN">T�nez</option>
                                                <option value="TM">Turkmenist�n</option>
                                                <option value="TR">Turqu�a</option>
                                                <option value="TV">Tuvalu</option>
                                                <option value="UA">Ucrania</option>
                                                <option value="UG">Uganda</option>
                                                <option value="UY">Uruguay</option>
                                                <option value="UZ">Uzbekist�n</option>
                                                <option value="VU">Vanuatu</option>
                                                <option value="VE">Venezuela</option>
                                                <option value="VN">Vietnam</option>
                                                <option value="YE">Yemen</option>
                                                <option value="YU">Yugoslavia</option>
                                                <option value="ZM">Zambia</option>
                                                <option value="ZW">Zimbabue</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6 mb-3 input-group">
                                            <span class="input-group-text"><i class="bi bi-house-door"></i></span>
                                            <input class="form-control" type="text" placeholder="Direccion " name="direccionEmpresa"/>
                                        </div>
                                    </div>

                                    <div class="row justify-content-center">      
                                        <div class="col-md-6 mb-3 input-group">
                                            <span class="input-group-text"><i class="bi bi-sort-numeric-down"></i></span>
                                            <input class="form-control" type="text" placeholder="NIT" name="nitEmpresa"/>
                                        </div>
                                        <div class="col-md-6 mb-3 input-group">
                                            <span class="input-group-text"><i class="bi bi-building"></i></span>
                                            <select name="sectorEmpresa" class="form-select">
                                                <option>SECTOR 1</option>
                                                <option>SECTOR 2</option>
                                                <option>SECTOR 3</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row justify-content-center mb-3">
                                        <div class="col-12">
                                            <textarea class="form-control" rows="3" name="descripcionEmpresa" placeholder="Descripcion de la empresa"></textarea>
                                        </div>
                                    </div>

                                    <div class="row justify-content-start">
                                        <div class="col-2">
                                            <button class="btn btn-success" type="submit" name="accion" value="registrar">Registrarse</button>
                                        </div>
                                    </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="student" role="tabpanel" aria-labelledby="profile-tab">
                            <form method="POST" action="ControladorPostulante" enctype="multipart/form-data">
                                <div class="row justify-content-center"> 
                                    <div class="col-lg-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-person"></i></span>
                                        <input type="Text" class="form-control" id="txtnombre" name="txtnombre" placeholder="Nombre">
                                    </div>
                                    <div class="col-lg-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-people-fill"></i></span>
                                        <input type="Text" class="form-control"  id="txtapellido" name="txtapellido" placeholder="Apellidos">
                                    </div>
                                    <div class="col-lg-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-key"></i></span>
                                        <input type="password" class="form-control" name="txtContrasena" placeholder="Contrase�a">
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-gender-ambiguous"></i></span>
                                        <select name="txtgenero" class="form-control">
                                            <option>Elegir</option>
                                            <option value="M">M</option>
                                            <option value="F">F</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-calendar-day"></i></span>
                                        <input type="date" class="form-control" id="txtfecha" name="txtfecha">
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-sort-numeric-down"></i></span>
                                        <input type="Text" class="form-control" id="txtdui" name="txtdui" placeholder="N�mero �nico de Identidad (DUI)">
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-sort-numeric-down"></i></span>
                                        <input type="Text" class="form-control" id="txtpasaporte" name="txtpasaporte" placeholder="Pasaporte"> 
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-sort-numeric-down"></i></span>
                                        <input type="Text" class="form-control" id="txtnit" name="txtnit" placeholder="N�mero de Identificaci�n Tributaria (NIT)">
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-sort-numeric-down"></i></span>
                                        <input type="Text" class="form-control" id="txtnup" name="txtnup" placeholder="N�mero �nico Previsional (NUP)">
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-house-door"></i></span>
                                        <input type="Text" class="form-control" id="txtdireccion" name="txtdireccion" placeholder="Direcci�n"> 
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-telephone"></i></span>
                                        <input type="Text" class="form-control" id="txttelefono" name="txttelefono" placeholder="Tel�fono">
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-envelope"></i></span>
                                        <input type="email" class="form-control" id="txtcorreo" name="txtcorreo" placeholder="Correo (ejemplo@correo.com)">
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span>Curriculum Vitae:</span>
                                    </div>
                                    <div class="col-md-6 mb-3 input-group">
                                        <span class="input-group-text"><i class="bi bi-file-person"></i></span>
                                        <input type="file" class="form-control" id="cv" name="cv">
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <button type="submit" class="btn btn-success col-md-12 mb-3 input-group" name="accion" value="registrar">Registrar</button> 
                                    </div> 
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--</div>-->
        <!--</section>-->

        <%@include file="WEB-INF/footer.jsp" %>

        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>
</html> 
