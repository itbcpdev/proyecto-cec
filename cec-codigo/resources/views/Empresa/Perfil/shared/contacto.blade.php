<div class="content-wrapper">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <h4 class="h2 mb-3">Empresa</h4>
                <form action="{{ route('empresa.perfil.update', ['id' => $empresa->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" disabled class="form-control" name="nombre" id="nombre" placeholder="Nombre" value="{{ $empresa->nombre }}">
                                @error('nombre')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="fec_inscrip_cec">Fecha Inscripción al CEC</label>
                                <input id="fec_inscrip_cec" disabled width="276" value="{{ $empresa->fec_inscrip_cec }}" name="fec_inscrip_cec" />
                                @error('fec_inscrip_cec')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="fec_aniversario_empresa">Fecha Aniversario de Empresa</label>
                                <input id="fec_aniversario_empresa" disabled width="276" value="{{ $empresa->fec_aniversario_empresa }}"  name="fec_aniversario_empresa" />
                                @error('fec_aniversario_empresa')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="ruc">Ruc</label>
                                <input type="text" class="form-control" disabled name="ruc" id="ruc" placeholder="ruc"
                                    value="{{ $empresa->ruc }}">
                                @error('ruc')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>Logo <span class="text-muted">(230px x 146px)</span></label>
                                <input type="file" name="img_logo" disabled class="file-upload-default" accept=".png, .jpg, .jpeg">
                                <div class="input-group col-xs-12">
                                    <input type="text" class="form-control file-upload-info" disabled
                                        placeholder="Seleccionar Imagen">
                                    <span class="input-group-append">
                                        <button class="file-upload-browse btn btn-gradient-success h-100"
                                            type="button">Seleccionar</button>
                                    </span>
                                </div>
                                <img src="{{ asset('assets/empresa/image/' . $empresa->logo) }}" class="d-block"
                                    style="max-width: 120px;margin-top: 1rem;" alt="">
                                @error('img_logo')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group row">
                                <label class=" col-form-label">Sector Principal</label>
                                <div class="">
                                    <select class="form-select" disabled name="sector_id">
                                        @foreach ($sectores as $sector)
                                            <option value="{{ $sector->id }}">{{ $sector->nombre }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="descripcion_empresa">Descripción Empresa</label>
                                <textarea class="form-control" disabled name="descripcion_empresa" maxlength="500" id="descripcion_empresa" rows="4">{{ $empresa->descripcion_empresa }}</textarea>
                                <p class="text-count-empresa mt-2 text-right"><span class="digit">0</span>/500</p>
                                @error('descripcion_empresa')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>


                            <div class="form-group">
                                <label for="direccion">Pagina Web</label>
                                <input type="text" disabled class="form-control" name="direccion" id="direccion"
                                    placeholder="direccion" value="{{ $empresa->direccion }}">
                                @error('direccion')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="numero_contactos">Numero Contacto</label>
                                <input type="text"  disabled class="form-control" name="numero_contactos" id="numero_contactos"
                                    placeholder="numero_contactos" value="{{ $empresa->numero_contactos }}">
                                @error('numero_contactos')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="correo_contacto">Corrreo Contacto</label>
                                <input type="text" disabled class="form-control" name="correo_contacto" id="correo_contacto"
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
                                <input type="text" disabled class="form-control" name="rs_linkedin" id="rs_linkedin"
                                    placeholder="https://www.linkedin.com" value="{{ $empresa->rs_linkedin }}">
                                @error('rs_linkedin')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_twitter">Twitter</label>
                                <input type="text" disabled class="form-control" name="rs_twitter" id="rs_twitter"
                                    placeholder="https://twitter.com" value="{{ $empresa->rs_twitter }}">
                                @error('rs_twitter')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_facebook">Facebook</label>
                                <input type="text" disabled class="form-control" name="rs_facebook" id="rs_facebook"
                                    placeholder="https://www.facebook.com" value="{{ $empresa->rs_facebook }}">
                                @error('rs_facebook')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_youtube">Youtube</label>
                                <input type="text" disabled class="form-control" name="rs_youtube" id="rs_youtube"
                                    placeholder="https://www.youtube.com" value="{{ $empresa->rs_youtube }}">
                                @error('rs_youtube')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_instagram">Instagram</label>
                                <input type="text" disabled class="form-control" name="rs_instagram" id="rs_instagram"
                                    placeholder="https://www.instagram.com" value="{{ $empresa->rs_instagram }}">
                                @error('rs_instagram')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="rs_tiktok">Tiktok</label>
                                <input type="text" disabled class="form-control" name="rs_tiktok" id="rs_tiktok"
                                    placeholder="https://www.tiktok.com" value="{{ $empresa->rs_tiktok }}">
                                @error('rs_tiktok')
                                    <span class="invalid-feedback d-block mt-2" role="alert">
                                        <strong>{!! $message !!}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            @if(session()->get('perfil_id') == 3)
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
                                    <img src="{{ asset('assets/empresa/image/' . $empresa->flyer) }}" class="d-block"
                                        style="max-width: 120px;margin-top: 1rem;" alt="">
                                    @error('img_flyer')
                                        <span class="invalid-feedback d-block mt-2" role="alert">
                                            <strong>{!! $message !!}</strong>
                                        </span>
                                    @enderror
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

                                <button type="submit" class="btn btn-success me-2">Actualizar</button>
                                <a href="{{ route('empresa.perfil.index') }}" class="btn btn-danger">Cancelar</a>
                            @else
                                <h3>Campaña</h3>
                                <div class="form-group">
                                    <label>Flyer</label>
                                    <small class="d-block mt-2 text-muted">Las imagenes deben ser .jpg y .png, deben de tener un
                                        tamaño
                                        de 1200px por 400px y un peso no mayor a 2MB</small>
                                    <br>
                                    <input type="file" disabled name="img_flyer" class="file-upload-default" accept=".png, .jpg, .jpeg">
                                    <div class="input-group col-xs-12">
                                        <input type="text" class="form-control file-upload-info" disabled
                                            placeholder="Seleccionar Imagen">
                                        <span class="input-group-append">
                                            <button class="file-upload-browse btn btn-gradient-success h-100"
                                                type="button">Seleccionar</button>
                                        </span>
                                    </div>
                                    <img src="{{ asset('assets/empresa/image/' . $empresa->flyer) }}" class="d-block"
                                        style="max-width: 120px;margin-top: 1rem;" alt="">
                                    @error('img_flyer')
                                        <span class="invalid-feedback d-block mt-2" role="alert">
                                            <strong>{!! $message !!}</strong>
                                        </span>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <label>Video</label>
                                    <input type="text" disabled name="video_empresa" class="form-control" value="{{ $empresa->video }}"  placeholder="https://www.youtube.com">
                                </div>

                                <div class="form-group">
                                    <label for="descripcion_campania">Descripción Campaña</label>
                                    <textarea class="form-control" disabled name="descripcion_campania" maxlength="500" id="descripcion_campania" rows="4">{{ $empresa->descripcion_campania }}</textarea>
                                    <p class="text-count-campania mt-2 text-right"><span class="digit">0</span>/500</p>
                                    @error('descripcion_campania')
                                        <span class="invalid-feedback d-block mt-2" role="alert">
                                            <strong>{!! $message !!}</strong>
                                        </span>
                                    @enderror
                                </div>
                            @endif
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
