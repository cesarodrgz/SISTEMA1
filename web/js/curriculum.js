var habilidades = [];

function agregarConocimientosAcademicos() {
    var nombreInstitucion = $('#FormConocimientosAcademicos input[name="nombreInstitucion"]');
    var nombreTitulo = $('#FormConocimientosAcademicos input[name="nombreTitulo"]');
    var inputs = '<input type="hidden" value=" ' + nombreInstitucion.val() + ' " name="nombreInstitucion[]"/> <input type="hidden" value=" ' + nombreTitulo.val() + ' " name="nombreTitulo[]"/>';

    var card = $('<div class="card my-3"></div>');

    var botonEliminar = document.createElement("button");
    botonEliminar.classList.add("btn", "btn-danger");
    botonEliminar.addEventListener('click', eliminarComponente(card));
    botonEliminar.innerHTML = "Eliminar";

    var cardBody = $('<div class="card-body"><h3>' + nombreInstitucion.val() + '</h3><p>' + nombreTitulo.val() + '</p>' + inputs + '</div>');
    cardBody.append(botonEliminar);
    card.append(cardBody);


    $('#card-conocimientos-academicos').append(card);

    nombreInstitucion.val("")
    nombreTitulo.val("");

    $("#conocimientosAcaModal").modal('hide');
}

function agregarPremio() {
    var nombrePremio = $('#FormPremios input[name="nombrePremio"]');
    var descripcionPremio = $('#FormPremios input[name="descripcionPremio"]');
    var inputs = '<input type="hidden" value=" ' + nombrePremio.val() + ' " name="nombrePremio[]"/> <input type="hidden" value=" ' + descripcionPremio.val() + ' " name="descripcionPremio[]"/>';

    var card = $('<div class="card my-3"></div>');

    var botonEliminar = document.createElement("button");
    botonEliminar.classList.add("btn", "btn-danger");
    botonEliminar.addEventListener('click', eliminarComponente(card));
    botonEliminar.innerHTML = "Eliminar";

    var cardBody = $('<div class="card-body"><h3>' + nombrePremio.val() + '</h3><p>' + descripcionPremio.val() + '</p>' + inputs + '</div>');
    cardBody.append(botonEliminar);
    card.append(cardBody);


    $('#card-premios').append(card);

    nombrePremio.val("")
    descripcionPremio.val("");

    $("#premiosModal").modal('hide');
}

function agregarLaborSocial() {
    var nombreLaborSocial = $('#FormLaborSocial input[name="nombreLaborSocial"]');
    var descripcionLaborSocial = $('#FormLaborSocial input[name="descripcionLaborSocial"]');
    var inputs = '<input type="hidden" value=" ' + nombreLaborSocial.val() + ' " name="nombreLaborSocial[]"/> <input type="hidden" value=" ' + descripcionLaborSocial.val() + ' " name="descripcionLaborSocial[]"/>';

    var card = $('<div class="card my-3"></div>');

    var botonEliminar = document.createElement("button");
    botonEliminar.classList.add("btn", "btn-danger");
    botonEliminar.addEventListener('click', eliminarComponente(card));
    botonEliminar.innerHTML = "Eliminar";

    var cardBody = $('<div class="card-body"><h3>' + nombreLaborSocial.val() + '</h3><p>' + descripcionLaborSocial.val() + '</p>' + inputs + '</div>');
    cardBody.append(botonEliminar);
    card.append(cardBody);


    $('#card-labores-sociales').append(card);

    nombreLaborSocial.val("")
    descripcionLaborSocial.val("");

    $("#laborSocialModal").modal('hide');
}

function agregarLibro() {
    var tituloLibro = $('#FormLibros input[name="tituloLibro[]"]');
    var lugarPublicacionLibro = $('#FormLibros input[name="lugarPublicacionLibro[]"]');
    var edicionLibro = $('#FormLibros input[name="edicionLibro[]"]');
    var isbnLibro = $('#FormLibros input[name="isbnLibro[]"]');

    var inputs = '<input type="hidden" value=" ' + tituloLibro.val() + ' " name="tituloLibro[]"/> <input type="hidden" value=" ' + lugarPublicacionLibro.val() + ' " name="lugarPublicacionLibro[]"/>';
    inputs += '<input type="hidden" value=" ' + edicionLibro.val() + ' " name="edicionLibro[]"/>';
    inputs += '<input type="hidden" value=" ' + isbnLibro.val() + ' " name="isbnLibro[]"/>';
  
    var card = $('<div class="card my-3"></div>');

    var botonEliminar = document.createElement("button");
    botonEliminar.classList.add("btn", "btn-danger");
    botonEliminar.addEventListener('click', eliminarComponente(card));
    botonEliminar.innerHTML = "Eliminar";

    var cardBody = $('<div class="card-body"><h3>' + tituloLibro.val() + '</h3><p>' + lugarPublicacionLibro.val() + '</p>' + inputs + '</div>');
    cardBody.append(botonEliminar);
    card.append(cardBody);


    $('#card-libros').append(card);

    tituloLibro.val("")
    lugarPublicacionLibro.val("");
    edicionLibro.val("");
    isbnLibro.val("");

    $("#librosModal").modal('hide');
}

function agregarCongreso() {
    var nombreCongreso = $('#FormCongresos input[name="nombreCongreso[]"]');
    var lugarCongreso = $('#FormCongresos input[name="lugarCongreso[]"]');
    var paisCongreso = $('#FormCongresos input[name="paisCongreso[]"]');
    var anfitrionCongreso = $('#FormCongresos input[name="anfitrionCongreso[]"]');

    var inputs = '<input type="hidden" value=" ' + nombreCongreso.val() + ' " name="nombreCongreso[]"/> <input type="hidden" value=" ' + lugarCongreso.val() + ' " name="lugarCongreso[]"/>';
    inputs += '<input type="hidden" value=" ' + paisCongreso.val() + ' " name="paisCongreso[]"/>';
    inputs += '<input type="hidden" value=" ' + anfitrionCongreso.val() + ' " name="anfitrionCongreso[]"/>';
  
    var card = $('<div class="card my-3"></div>');

    var botonEliminar = document.createElement("button");
    botonEliminar.classList.add("btn", "btn-danger");
    botonEliminar.addEventListener('click', eliminarComponente(card));
    botonEliminar.innerHTML = "Eliminar";

    var cardBody = $('<div class="card-body"><h3>' + nombreCongreso.val() + '</h3><p>' + lugarCongreso.val() + '</p>' + inputs + '</div>');
    cardBody.append(botonEliminar);
    card.append(cardBody);


    $('#card-congresos').append(card);

    nombreCongreso.val("")
    lugarCongreso.val("");
    paisCongreso.val("");
    anfitrionCongreso.val("");

    $("#congresosModal").modal('hide');
}

function agregarCertificacion(){
    var tituloCertificacion = $('#FormCertificaciones input[name="tituloCertificacion[]"]');
    var tipoCertificacion = $('#FormCertificaciones input[name="tipoCertificacion[]"]');
    var codigoCertificacion = $('#FormCertificaciones input[name="codigoCertificacion[]"]');
    var institucionCertificacion = $('#FormCertificaciones input[name="institucionCertificacion[]"]');

    var inputs = '<input type="hidden" value=" ' + tituloCertificacion.val() + ' " name="tituloCertificacion[]"/> <input type="hidden" value=" ' + tipoCertificacion.val() + ' " name="tipoCertificacion[]"/>';
    inputs += '<input type="hidden" value=" ' + codigoCertificacion.val() + ' " name="paisCongreso[]"/>';
    inputs += '<input type="hidden" value=" ' + institucionCertificacion.val() + ' " name="anfitrionCongreso[]"/>';
  
    var card = $('<div class="card my-3"></div>');

    var botonEliminar = document.createElement("button");
    botonEliminar.classList.add("btn", "btn-danger");
    botonEliminar.addEventListener('click', eliminarComponente(card));
    botonEliminar.innerHTML = "Eliminar";

    var cardBody = $('<div class="card-body"><h3>' + tituloCertificacion.val() + '</h3><p>' + tipoCertificacion.val() + '</p>' + inputs + '</div>');
    cardBody.append(botonEliminar);
    card.append(cardBody);


    $('#card-certificaciones').append(card);

    tituloCertificacion.val("")
    tipoCertificacion.val("");
    codigoCertificacion.val("");
    institucionCertificacion.val("");

    $("#certificacionesModal").modal('hide');
}

function agregarHabilidades(){
    var listaHabilidades = $("#lista-habilidades");
    
    var habilidadSelecionada = listaHabilidades.children("option:selected").text();
   
    
    if(habilidades.includes(habilidadSelecionada)){ }
    else{
        var container = $("#habilidades-selecionadas");
        habilidades.push(habilidadSelecionada);
        container.append($('<span class="badge bg-primary mx-1">' + habilidadSelecionada + '</span>'));
        container.append($('<input type="hidden" value="' + habilidadSelecionada + '" name="habilidades[]" />'));
    }
}

function eliminarComponente(componente) {
    return function () {
        componente.remove();
    }
}