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
                <form action="{{ route('admin.usuarios-cec.update', ['id' => $usuario->id]) }}" enctype="multipart/form-data" method="POST">
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
                                <label for="celular_contacto">Celular de Contacto</label>
                                <input type="text" class="form-control" name="celular_contacto" id="celular_contacto"
                                    placeholder="+51 987654321" value="{{ $usuario->celular_contacto }}">
                                @error('celular_contacto')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
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
                    <a href="{{ route('admin.usuarios-cec.index') }}" class="btn btn-danger">Cancelar</a>
                </form>
            </div>
        </div>
    </div>
</div>
