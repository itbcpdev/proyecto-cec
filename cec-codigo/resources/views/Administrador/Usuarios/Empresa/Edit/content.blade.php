<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/gijgo@1.9.6/css/gijgo.min.css'>
@php
    function generateRandomString($length = 10) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }
@endphp
<div class="content-wrapper">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <h4 class="h2 mb-3">Editar Usuario</h4>
                <form action="{{ route('admin.usuarios-empresa.update', ['id' => $usuario->id]) }}" enctype="multipart/form-data" method="POST">
                    @method('PUT')
                    @csrf
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre"
                                    value="{{ $usuario->name }}">
                                @error('nombre')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="nombre">Apellido Paterno</label>
                                <input type="text" class="form-control" name="apellido_paterno" id="apellido_paterno"
                                    placeholder="Apellido Paterno" value="{{ $usuario->apellido_paterno }}">
                                @error('nombre')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="nombre">Apellido Materno</label>
                                <input type="text" class="form-control" name="apellido_materno" id="apellido_materno"
                                    placeholder="Apellido Materno" value="{{ $usuario->apellido_materno }}">
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
                                        {{ $usuario->genero == 1 ? 'checked' : '' }}>
                                    <label class="form-check-label" for="exampleRadios1">
                                        Masculino
                                    </label>
                                </div>
                                <div class="form-check" style="padding-left: 1.5rem">
                                    <input class="form-check-input" type="radio" name="genero" id="femenino" value="2"
                                        {{ $usuario->genero == 2 ? 'checked' : '' }}>
                                    <label class="form-check-label" for="femenino">
                                        Femenino
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="fecha_nac">Fecha de Nacimiento</label>
                                <input id="fecha_nac" width="276" value="{{ $usuario->fecha_nac }}" name="fecha_nac" placeholder="01/01/2000"/>
                                @error('fecha_nac')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="celular_contacto">Celular de Contacto</label>
                                <input type="text" class="form-control" name="celular_contacto" id="celular_contacto"
                                    placeholder="+51 987654321" value="{{ $usuario->celular_contacto }}">
                                @error('celular_contacto')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="numero_fijo">Telefono de Contacto</label>
                                <input type="text" class="form-control" name="numero_fijo" id="numero_fijo"
                                    placeholder="(01) 6874 654" value="{{ $usuario->numero_fijo }}">
                                @error('numero_fijo')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="lugar_residencia">Lugar de residencia</label>
                                <input type="text" class="form-control"  value="{{ $usuario->lugar_residencia }}" name="lugar_residencia" id="lugar_residencia">
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
                                <img src="{{ asset('assets/usuario/image/' . $usuario->foto) }}" class="d-block"
                                    style="max-width: 120px;margin-top: 1rem;" alt="">
                            </div>


                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group row">
                                <label class=" col-form-label">Empresa</label>
                                <div class="">
                                    <select class="form-select" name="empresa_id">
                                        @foreach ($empresas as $empresa)
                                            <option value="{{ $empresa->id }}"
                                                {{ $empresa->id == $usuario->empresa_id ? 'selected' : '' }}>
                                                {{ $empresa->nombre }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('empresa_id')
                                        <span class="invalid-feedback d-block mt-2" role="alert">
                                            <strong>{!! $message !!}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label">Tipo de Cargo</label>
                                <div class="">
                                    <select class="form-select" name="tipo_de_cargo_id">
                                        @foreach ($tipocargos as $tipocargo)
                                            <option value="{{ $tipocargo->id }}"
                                                {{ $usuario->tipo_de_cargo_id == $tipocargo->id ? 'selected' : '' }}>{{ $tipocargo->nombre }}
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
                                <input type="text" class="form-control" name="cargo" id="cargo"
                                    placeholder="Cargo que desempeña en la empresa" value="{{ $usuario->cargo }}">
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
                                            <option value="{{ $perfil['id'] }}"
                                                {{ $perfil['id'] == $usuario_perfil->perfil_id ? 'selected' : '' }}>
                                                {{ $perfil['nombre'] }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div id="sector_container">
                                <div class="form-group row">
                                    <label class=" col-form-label">Sector Principal</label>
                                    <div class="">
                                        <select class="form-select" name="sector_principal_id">
                                            @foreach ($sectores as $sector)
                                                <option value="{{ $sector->id }}"
                                                    {{ $sector_principal->sector_id == $sector->id ? 'selected' : '' }}>{{ $sector->nombre }}
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
                                                <option value="{{ $rol->id }}"
                                                    {{ $sector_principal->rol_id == $rol->id ? 'selected' : '' }}>{{ $rol->nombre }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                @if (count($sectores_secundarios)> 0)

                                    @for($i=0; $i< count($sectores_secundarios); $i ++)
                                    @php
                                        $tokenId = generateRandomString(5);
                                    @endphp
                                    <div id="wrap_sector_{{$tokenId}}">
                                        <div class="d-flex justify-content-end"><button data-id="{{$tokenId}}" type="button" class="button-delete-sector" style="color: #fff !important; background-color: red; border: none;" class="text-danger">X</button></div>
                                        <div class="form-group">
                                            <label class="col-form-label">Elegir Sector Secundario</label>
                                            <div>
                                                <select class="form-select" name="sectores_secundarios_id[]">
                                                    @foreach ($sectores as $sector)
                                                        <option value="{{ $sector->id }}"
                                                            {{ $sectores_secundarios[$i] == $sector->id ? 'selected' : '' }} >{{ $sector->nombre }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-form-label">Rol</label>
                                            <div>
                                                <select class="form-select" name="rol_secundario_id[]">
                                                    @foreach ($roles as $rol)
                                                        <option value="{{ $rol->id }}"
                                                            {{ $roles_secundario[$i] == $rol->id ? 'selected' : '' }}>{{ $rol->nombre }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    @endfor

                                @endif
                            </div>

                            <div class="form-group">
                                <button type="button" id="add-new-sector" style="color: #06d; outline: none; border: none; background: transparent">Agregar Nuevo Sector <i class="mdi mdi-plus menu-icon"></i></button>
                            </div>

                            <div class="form-group">
                                <label for="nombre">Correo</label>
                                <input type="text" class="form-control" name="email" id="email"
                                    placeholder="Correo@gmail.com" value="{{ $usuario->email }}">
                                @error('email')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="nombre">Contraseña</label>
                                <input type="password" class="form-control" name="password" id="password"
                                    placeholder="**********">
                                @error('password')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>


                    <button type="submit" class="btn btn-success me-2">Actualizar</button>
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
    console.log('qwe00');
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
