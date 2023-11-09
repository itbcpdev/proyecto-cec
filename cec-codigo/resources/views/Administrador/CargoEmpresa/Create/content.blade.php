<div class="content-wrapper">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <h4 class="h2 mb-3">Crear Cargo de Empresa</h4>
                <form action="{{ route('admin.cargo-empresa.store') }}" method="POST">
                    @csrf
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
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Name">
                        @error('nombre')
                            <span class="invalid-feedback d-block mt-2" role="alert">
                                <strong>{!! $message !!}</strong>
                            </span>
                        @enderror
                    </div>

                    <button type="submit" class="btn btn-success me-2">Crear</button>
                    <a href="{{ route('admin.cargo-empresa.index') }}" class="btn btn-danger">Cancelar</a>
                </form>
            </div>
        </div>
    </div>
</div>
