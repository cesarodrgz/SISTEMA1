<div class="modal fade" id="conocimientosAcaModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Conocimientos Academicos</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="FormConocimientosAcademicos">
                    <div class="row">
                        <div class="col-12 mb-3">
                            <input class="form-control" type="text" placeholder="Nombre de la Institucion" name="nombreInstitucion"/>
                        </div>
                        <div class="col-12 mb-3">
                            <input class="form-control" type="text" placeholder="Nombre del titulo" name="nombreTitulo"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="guardarConocimientos" onclick="agregarConocimientosAcademicos()">Agregar</button>
            </div>
        </div>
    </div>
</div>