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
                <h4 class="h2 mb-3">Crear Usuario</h4>
                <form action="{{ route('admin.usuarios-empresa.store') }}" enctype="multipart/form-data" method="POST">
                    @csrf

                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" value="{{ old('nombre') }}" name="nombre" id="nombre" placeholder="Nombre">
                                @error('nombre')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="nombre">Apellido Paterno</label>
                                <input type="text" class="form-control" name="apellido_paterno" value="{{ old('apellido_paterno') }}" id="apellido_paterno"
                                    placeholder="Apellido Paterno">
                                @error('nombre')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="nombre">Apellido Materno</label>
                                <input type="text" class="form-control" value="{{ old('apellido_materno') }}" name="apellido_materno" id="apellido_materno"
                                    placeholder="Apellido Materno">
                                @error('nombre')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="nombre">Genero</label>
                                <div class="form-check" style="padding-left: 1.5rem">
                                    <input class="form-check-input" type="radio" name="genero" id="masculino" value="1"
                                        checked>
                                    <label class="form-check-label" for="exampleRadios1">
                                        Masculino
                                    </label>
                                </div>
                                <div class="form-check" style="padding-left: 1.5rem">
                                    <input class="form-check-input" type="radio" name="genero" id="femenino" value="2">
                                    <label class="form-check-label" for="femenino">
                                        Femenino
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="fecha_nac">Fecha de Nacimiento</label>
                                <input id="fecha_nac" width="276" value="" name="fecha_nac" placeholder="01/01/2000"/>
                                @error('fecha_nac')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="celular_contacto">Celular de Contacto</label>
                                <input type="text" class="form-control" value="{{ old('celular_contacto') }}" name="celular_contacto" id="celular_contacto"
                                    placeholder="+51 987654321">
                                @error('celular_contacto')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="numero_fijo">Telefono de Contacto</label>
                                <input type="text" class="form-control" value="{{ old('numero_fijo') }}" name="numero_fijo" id="numero_fijo"
                                    placeholder="(01) 6874 654">
                                @error('numero_fijo')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="lugar_residencia">Lugar de residencia</label>
                                <input type="text" class="form-control" value="{{ old('lugar_residencia') }}" name="lugar_residencia" id="lugar_residencia">
                                @error('lugar_residencia')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Foto <span class="text-muted">(La imagen debe tener las medidas de 313px de ancho y alto)</span></label>
                                <input type="file" name="foto" class="file-upload-default" accept=".png, .jpg, .jpeg">
                                <div class="input-group col-xs-12">
                                    <input type="text" class="form-control file-upload-info" disabled
                                        placeholder="Seleccionar Imagen">
                                    <span class="input-group-append">
                                        <button class="file-upload-browse btn btn-gradient-success h-100"
                                            type="button">Seleccionar</button>
                                    </span>
                                </div>
                            </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="form-group row">
                            <label class=" col-form-label">Empresa</label>
                            <div class="">
                                <select class="form-select" name="empresa_id">
                                    @foreach ($empresas as $empresa)
                                        <option value="{{ $empresa->id }}">{{ $empresa->nombre }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                            <div class="form-group row">
                                <label class="col-form-label">Tipo de Cargo</label>
                                <div class="">
                                    <select class="form-select" name="tipo_de_cargo_id">
                                        @foreach ($tipocargos as $tipocargo)
                                            <option value="{{ $tipocargo->id }}">{{ $tipocargo->nombre }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('tipo_de_cargo_id')
                                        <span class="invalid-feedback d-block mt-2" role="alert">
                                            <strong>{!! $message !!}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="cargo">Cargo</label>
                                <input type="text" class="form-control" value="{{ old('cargo') }}" name="cargo" id="cargo"
                                    placeholder="Cargo que desempeña en la empresa">
                                @error('cargo')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group row">
                                <label class=" col-form-label">Perfiles</label>
                                <div>
                                    <select class="form-select" name="perfil_id">
                                        @foreach ($perfiles as $perfil)
                                            <option value="{{ $perfil['id'] }}">{{ $perfil['nombre'] }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div id="sector_container">
                                <div class="form-group row">
                                    <label class="col-form-label">Sector Principal</label>
                                    <div class="">
                                        <select class="form-select" name="sector_principal_id">
                                            @foreach ($sectores as $sector)
                                                <option value="{{ $sector->id }}">{{ $sector->nombre }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-form-label">Rol</label>
                                    <div class="">
                                        <select class="form-select" name="rol_principal_id">
                                            @foreach ($roles as $rol)
                                                <option value="{{ $rol->id }}">{{ $rol->nombre }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <button type="button" id="add-new-sector" style="color: #06d; outline: none; border: none; background: transparent">Agregar Nuevo Sector <i class="mdi mdi-plus menu-icon"></i></button>
                            </div>

                            <div class="form-group">
                                <label for="nombre">Correo</label>
                                <input type="text" class="form-control" value="{{ old('email') }}" name="email" id="email"
                                    placeholder="Correo@gmail.com">
                                @error('email')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="nombre">Contraseña</label>
                                <input type="text" class="form-control" name="password" id="password"
                                    placeholder="**********">
                                @error('password')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                    </div>
                    </div>


                    <button type="submit" class="btn btn-success me-2">Crear</button>
                    <a href="{{ route('admin.usuarios-empresa.index') }}" class="btn btn-danger">Cancelar</a>
                </form>
            </div>
        </div>
    </div>
</div>

<script src='https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/gijgo.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/messages/messages.es-es.js'></script><script  src="./script.js"></script>

<script>
    $('#fecha_nac').datepicker({
        uiLibrary: 'bootstrap4',
        locale: 'es-es',
    });
</script>
<script>
    window.addEventListener('DOMContentLoaded', (event) => {
        $(document).on('click', '#add-new-sector',  function(){
            let tokenId = randomString(5);
            $('#sector_container').append(templateGuardarropa(tokenId));
        });
        $(document).on('click', '.button-delete-sector',  function(){
            let dataId = $(this).data('id');
            $('#wrap_sector_' + dataId).remove();
        });
    });
    function randomString(length = 25) {
        var result           = '';
        var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        var charactersLength = characters.length;
        for ( var i = 0; i < length; i++ ) {
            result += characters.charAt(Math.floor(Math.random() * charactersLength));
        }
        return result;
    }
    const templateGuardarropa = (tokenId) => {
        return `
                <div id="wrap_sector_${ tokenId }">
                    <div class="d-flex justify-content-end"><button data-id="${ tokenId }" type="button" class="button-delete-sector" style="color: #fff !important; background-color: red; border: none;" class="text-danger">X</button></div>
                    <div class="form-group">
                        <label class="col-form-label">Elegir Sector Secundario</label>
                        <div>
                            <select class="form-select" name="sectores_secundarios_id[]">
                                @foreach ($sectores as $sector)
                                    <option value="{{ $sector->id }}">{{ $sector->nombre }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Rol</label>
                        <div>
                            <select class="form-select" name="rol_secundario_id[]">
                                @foreach ($roles as $rol)
                                    <option value="{{ $rol->id }}">{{ $rol->nombre }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
        `;
    }
</script>
