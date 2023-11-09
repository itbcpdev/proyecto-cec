<!-- Include Bootstrap Datepicker -->
{{-- <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'> --}}
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
                <h4 class="h2 mb-3">Crear Empresa</h4>
                <form action="{{ route('admin.empresa.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" name="nombre" value="{{ old('nombre') }}" id="nombre" placeholder="Nombre">
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
                                        <input id="fec_inscrip_cec"  value="{{ old('fec_inscrip_cec') }}" name="fec_inscrip_cec" />
                                        @error('fec_inscrip_cec')
                                            <span class="invalid-feedback d-block mt-2" role="alert">
                                                <strong>{!! $message !!}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label for="fec_aniversario_empresa">Fecha Aniversario de Empresa</label>
                                        <input id="fec_aniversario_empresa"  value="{{ old('fec_aniversario_empresa') }}" name="fec_aniversario_empresa" />
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
                                <input type="text" class="form-control" value="{{ old('ruc') }}" name="ruc" id="ruc" placeholder="ruc">
                                @error('ruc')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>Logo <span class="text-muted">(230px x 146px)</span></label>
                                <input type="file" name="img_logo" class="file-upload-default" accept=".png, .jpg, .jpeg">
                                <div class="input-group col-xs-12">
                                    <input type="text" class="form-control file-upload-info" disabled
                                        placeholder="Seleccionar Imagen">
                                    <span class="input-group-append">
                                        <button class="file-upload-browse btn btn-gradient-success h-100"
                                            type="button">Seleccionar</button>
                                    </span>
                                </div>
                                @error('img_logo')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group row">
                                <label class=" col-form-label">Sector Principal</label>
                                <div class="">
                                    <select class="form-select" name="sector_id">
                                        @foreach ($sectores as $sector)
                                            <option value="{{ $sector->id }}">{{ $sector->nombre }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="descripcion_empresa">Descripción Empresa</label>
                                <textarea class="form-control" name="descripcion_empresa" maxlength="500" id="descripcion_empresa" rows="5">{{ old('descripcion_empresa') }}</textarea>
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
                                    placeholder="Url de la pagina web">
                                @error('direccion')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="numero_contactos">Numero Contacto</label>
                                <input type="text" class="form-control" name="numero_contactos" id="numero_contactos"
                                    placeholder="numero_contactos">
                                @error('numero_contactos')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="correo_contacto">Corrreo Contacto</label>
                                <input type="text" class="form-control" name="correo_contacto" id="correo_contacto"
                                    placeholder="example@gmail.com">
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
                                    placeholder="https://www.linkedin.com">
                                @error('rs_linkedin')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_twitter">Twitter</label>
                                <input type="text" class="form-control" name="rs_twitter" id="rs_twitter"
                                    placeholder="https://twitter.com">
                                @error('rs_twitter')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_facebook">Facebook</label>
                                <input type="text" class="form-control" name="rs_facebook" id="rs_facebook"
                                    placeholder="https://www.facebook.com">
                                @error('rs_facebook')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_youtube">Youtube</label>
                                <input type="text" class="form-control" name="rs_youtube" id="rs_youtube"
                                    placeholder="https://www.youtube.com">
                                @error('rs_youtube')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_instagram">Instagram</label>
                                <input type="text" class="form-control" name="rs_instagram" id="rs_instagram"
                                    placeholder="https://www.instagram.com">
                                @error('rs_instagram')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_tiktok">Tiktok</label>
                                <input type="text" class="form-control" name="rs_tiktok" id="rs_tiktok"
                                    placeholder="https://www.tiktok.com">
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
                                <input type="file" name="img_flyer" class="file-upload-default" accept=".png, .jpg, .jpeg">
                                <div class="input-group col-xs-12">
                                    <input type="text" class="form-control file-upload-info" disabled
                                        placeholder="Seleccionar Imagen">
                                    <span class="input-group-append">
                                        <button class="file-upload-browse btn btn-gradient-success h-100"
                                            type="button">Seleccionar</button>
                                    </span>
                                </div>
                                @error('img_flyer')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>Video</label>
                                <input type="text" name="video_empresa" class="form-control" placeholder="https://www.youtube.com">
                                @error('video_empresa')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="descripcion">Descripción Campaña</label>
                                <textarea class="form-control" name="descripcion_campania" maxlength="500" id="descripcion_campania" rows="4"></textarea>
                                <p class="text-count-campania mt-2 text-right"><span class="digit">0</span>/500</p>
                                @error('descripcion_campania')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                        </div>
                    </div>




                    <button type="submit" class="btn btn-success me-2">Crear</button>
                    <a href="{{ route('admin.empresa.index') }}" class="btn btn-danger">Cancelar</a>
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
</script>
