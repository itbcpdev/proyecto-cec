<div class="content-wrapper">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <h4 class="h2 mb-3">Crear Campaña</h4>
                <form action="{{ route('admin.campaign.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Name">
                                @error('nombre')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>Imagen</label>
                                <small class="d-block mt-2 text-muted">Las imagenes deben ser .jpg y .png, deben de tener un
                                    tamaño
                                    de 1200px por 400px y un peso no mayor a 2MB</small>
                                <br>
                                <input type="file" name="img_banner" class="file-upload-default" accept=".png, .jpg, .jpeg">
                                <div class="input-group col-xs-12">
                                    <input type="text" class="form-control file-upload-info" disabled
                                        placeholder="Seleccionar Imagen">
                                    <span class="input-group-append">
                                        <button class="file-upload-browse btn btn-gradient-success h-100"
                                            type="button">Seleccionar</button>
                                    </span>
                                </div>
                                @error('img_banner')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group col-12 col-md-4 text-start px-0" id="contenedor-multiselect-empresas">
                                <label class=" col-form-label">Empresas</label>
                                <div class="">
                                    <select class="form-select" multiple aria-label="multiple select example" id="grupoempresas"
                                        name="empresas_id[]">
                                        @foreach ($empresas as $empresa)
                                            <option value="{{ $empresa->id }}">{{ $empresa->nombre }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="descripcion">Descripción Campaña</label>
                                <textarea class="form-control" name="descripcion" id="descripcion" rows="4"></textarea>
                                @error('descripcion')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-success me-2">Crear</button>
                    <a href="{{ route('admin.campaign.index') }}" class="btn btn-danger">Cancelar</a>
                </form>
            </div>
        </div>
    </div>
</div>
