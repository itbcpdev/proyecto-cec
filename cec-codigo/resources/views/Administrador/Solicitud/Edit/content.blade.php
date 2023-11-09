<div class="content-wrapper">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <h4 class="h2 mb-3">Editar Solicitud</h4>
                <form action="{{ route('admin.cec-solicitud.update', ['id' => $solicitud->id]) }}" method="POST">
                    @method('PUT')
                    @csrf
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label for="asunto">Asunto</label>
                                <input type="text" class="form-control" disabled name="asunto" id="asunto" placeholder="asunto" value="{{ $solicitud->asunto }}">
                                @error('asunto')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="mensaje">Mensaje</label>
                                <textarea class="form-control" name="mensaje" disabled id="mensaje" rows="6">{{ $solicitud->mensaje }}</textarea>
                            </div>

                            <div class="form-group">
                                <label for="asunto">Empresa</label>
                                <input type="text" class="form-control" disabled  value="{{ @$empresa->nombre }}">
                            </div>

                            <div class="form-group">
                                <label for="asunto">Usuario</label>
                                <input type="text" class="form-control" disabled  value="{{ @$nombre_completo }}">
                            </div>

                            <div class="form-group col-12 col-md-4 text-start px-0">
                                <label class=" col-form-label">Estado Solicitud</label>
                                <div class="">
                                    <select class="form-select"
                                        name="estado_solicitud">
                                        @foreach ($estado_solicitudes as $estado_solicitud)
                                            <option value="{{ $estado_solicitud->id }}"
                                                {{ $solicitud->estado_solicitud_id ==  $estado_solicitud->id ? 'selected' : ''}}>{{ $estado_solicitud->nombre }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="mensaje">Observaciòn</label>
                                <textarea class="form-control" name="observacion"  id="observacion" rows="6">{{ $solicitud->observacion }}</textarea>
                                @error('observacion')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success me-2">Actualizar</button>
                    <a href="{{ route('admin.cec-solicitud.index') }}" class="btn btn-danger">Volver</a>
                </form>
            </div>
        </div>
    </div>
</div>
