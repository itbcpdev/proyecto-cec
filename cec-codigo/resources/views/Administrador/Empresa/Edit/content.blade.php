<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/gijgo@1.9.6/css/gijgo.min.css'>

<div class="content-wrapper">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <h4 class="h2 mb-3">Editar Empresa</h4>
                <form action="{{ route('admin.empresa.update', ['id' => $empresa->id]) }}" method="POST"
                    enctype="multipart/form-data">
                    @method('PUT')
                    @csrf

                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre"
                                    value="{{ $empresa->nombre }}">
                                @error('nombre')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label for="fec_inscrip_cec">Fecha Inscripción al CEC</label>
                                        <input id="fec_inscrip_cec" value="{{ $empresa->fec_inscrip_cec }}" name="fec_inscrip_cec" />
                                        @error('fec_inscrip_cec')
                                            <span class="invalid-feedback d-block mt-2" role="alert">
                                                <strong>{!! $message !!}</strong>
                                            </span>
                                        @enderror
                                    </div>

                                    <div class="form-group">
                                        <label for="fec_aniversario_empresa">Fecha Aniversario de Empresa</label>
                                        <input id="fec_aniversario_empresa" value="{{ $empresa->fec_aniversario_empresa }}"  name="fec_aniversario_empresa" />
                                        @error('fec_aniversario_empresa')
                                            <span class="invalid-feedback d-block mt-2" role="alert">
                                                <strong>{!! $message !!}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ruc">Ruc</label>
                                <input type="text" class="form-control" name="ruc" id="ruc" placeholder="ruc"
                                    value="{{ $empresa->ruc }}">
                                @error('ruc')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>Logo <span class="text-muted">(230px x 146px)</span></label>
                                <input type="hidden" id="logo_default" name="logo_default" value="{{ $empresa->logo }}" />
                                <input type="file" name="img_logo" class="file-upload-default" accept=".png, .jpg, .jpeg">
                                <div class="input-group col-xs-12">
                                    <input type="text" class="form-control file-upload-info" disabled
                                        placeholder="Seleccionar Imagen">
                                    <span class="input-group-append">
                                        <button class="file-upload-browse btn btn-gradient-success h-100"
                                            type="button">Seleccionar</button>
                                    </span>
                                </div>
                                <img src="{{ asset('assets/empresa/image/' . $empresa->logo) }}" class="d-block"
                                    style="max-width: 120px;margin-top: 1rem;" alt="" id="img-logo">
                                @error('img_logo')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                                
                                <button type="button" id="delete_logo" class="mt-3 btn btn-danger">Eliminar Logo</button>
                            </div>

                            <div class="form-group row">
                                <label class=" col-form-label">Sector Principal</label>
                                <div class="">
                                    <select class="form-select" name="sector_id">
                                        @foreach ($sectores as $sector)
                                            <option value="{{ $sector->id }}"
                                             {{ $sector->id == $empresa->sector_id ? 'selected' : '' }}>{{ $sector->nombre }}
                                            </option>
                                            
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="descripcion_empresa">Descripción Empresa</label>
                                <textarea class="form-control" name="descripcion_empresa" maxlength="500" id="descripcion_empresa" rows="4">{{ $empresa->descripcion_empresa }}</textarea>
                                <p class="text-count-empresa mt-2 text-right"><span class="digit">0</span>/500</p>
                                @error('descripcion_empresa')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>


                            <div class="form-group">
                                <label for="direccion">Pagina Web</label>
                                <input type="text" class="form-control" name="direccion" id="direccion"
                                    placeholder="Url de la pagina web" value="{{ $empresa->direccion }}">
                                @error('direccion')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="numero_contactos">Numero Contacto</label>
                                <input type="text" class="form-control" name="numero_contactos" id="numero_contactos"
                                    placeholder="numero_contactos" value="{{ $empresa->numero_contactos }}">
                                @error('numero_contactos')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="correo_contacto">Corrreo Contacto</label>
                                <input type="text" class="form-control" name="correo_contacto" id="correo_contacto"
                                    placeholder="example@gmail.com" value="{{ $empresa->correo }}">
                                @error('correo_contacto')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
                            <h3>Redes Sociales</h3>
                            <div class="form-group">
                                <label for="rs_linkedin">LinkedIn</label>
                                <input type="text" class="form-control" name="rs_linkedin" id="rs_linkedin"
                                    placeholder="https://www.linkedin.com" value="{{ $empresa->rs_linkedin }}">
                                @error('rs_linkedin')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_twitter">Twitter</label>
                                <input type="text" class="form-control" name="rs_twitter" id="rs_twitter"
                                    placeholder="https://twitter.com" value="{{ $empresa->rs_twitter }}">
                                @error('rs_twitter')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_facebook">Facebook</label>
                                <input type="text" class="form-control" name="rs_facebook" id="rs_facebook"
                                    placeholder="https://www.facebook.com" value="{{ $empresa->rs_facebook }}">
                                @error('rs_facebook')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_youtube">Youtube</label>
                                <input type="text" class="form-control" name="rs_youtube" id="rs_youtube"
                                    placeholder="https://www.youtube.com" value="{{ $empresa->rs_youtube }}">
                                @error('rs_youtube')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_instagram">Instagram</label>
                                <input type="text" class="form-control" name="rs_instagram" id="rs_instagram"
                                    placeholder="https://www.instagram.com" value="{{ $empresa->rs_instagram }}">
                                @error('rs_instagram')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_tiktok">Tiktok</label>
                                <input type="text" class="form-control" name="rs_tiktok" id="rs_tiktok"
                                    placeholder="https://www.tiktok.com" value="{{ $empresa->rs_tiktok }}">
                                @error('rs_tiktok')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
                            <h3>Campaña</h3>
                            <div class="form-group">
                                <label>Flyer</label>
                                <small class="d-block mt-2 text-muted">Las imagenes deben ser .jpg y .png, deben de tener un
                                    tamaño
                                    de 1200px por 400px y un peso no mayor a 2MB</small>
                                <br>
                                <input type="hidden" id="flyer_default" name="flyer_default" value="{{ $empresa->flyer }}" />
                                <input type="file" name="img_flyer" class="file-upload-default" accept=".png, .jpg, .jpeg">
                                <div class="input-group col-xs-12">
                                    <input type="text" class="form-control file-upload-info" disabled
                                        placeholder="Seleccionar Imagen">
                                    <span class="input-group-append">
                                        <button class="file-upload-browse btn btn-gradient-success h-100"
                                            type="button">Seleccionar</button>
                                    </span>
                                </div>
                                <img src="{{ asset('assets/empresa/image/' . $empresa->flyer) }}" class="d-block"
                                    style="max-width: 120px;margin-top: 1rem;" alt="" id="img-flyer">
                                @error('img_flyer')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                                <button type="button" id="delete_flyer" class="mt-3 btn btn-danger">Eliminar Flyer</button>
                            </div>

                            <div class="form-group">
                                <label>Video</label>
                                <input type="text" name="video_empresa" class="form-control" value="{{ $empresa->video }}"  placeholder="https://www.youtube.com">
                            </div>

                            <div class="form-group">
                                <label for="descripcion_campania">Descripción Campaña</label>
                                <textarea class="form-control" name="descripcion_campania" maxlength="500" id="descripcion_campania" rows="4">{{ $empresa->descripcion_campania }}</textarea>
                                <p class="text-count-campania mt-2 text-right"><span class="digit">0</span>/500</p>
                                @error('descripcion_campania')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-success me-2">Actualizar</button>
                    <a href="{{ route('admin.empresa.index') }}" class="btn btn-danger">Volver</a>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/gijgo.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/messages/messages.es-es.js'></script><script  src="./script.js"></script>

<script>
    $('#fec_inscrip_cec').datepicker({
        uiLibrary: 'bootstrap4',
        locale: 'es-es',
    });
    $('#fec_aniversario_empresa').datepicker({
        uiLibrary: 'bootstrap4',
        locale: 'es-es',
    });
    
    //Detectar cambio de Logo
    $('#delete_logo').on('click', function() {
        $('#img-logo').remove();
        $('input[name="logo_default"]').val('');
    });
    
    $('input[name="img_logo"]').on('change', function(){
        $('input[name="logo_default"]').val($('input[name="img_logo"]').val());
    });
    
    //Detectar cambio de Flyer
    $('#delete_flyer').on('click', function() {
        $('#img-flyer').remove();
        $('input[name="flyer_default"]').val('');
        $('#descripcion_campania').val('');
        $('span.digit').html('0');
    });
    
    $('input[name="img_flyer"]').on('change', function(){
        $('input[name="flyer_default"]').val($('input[name="img_flyer"]').val());
    });
</script>
