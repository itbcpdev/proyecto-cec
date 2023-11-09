<div class="content-wrapper d-flex align-items-center auth">
    <div class="row flex-grow">
        <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left p-5">
                <div class="brand-logo">
                    <img src="{{ asset('admin/assets/images/logo_cec.png') }}" class="image-cec-login">
                </div>
                <div class="mb-3">
                    <h3>Recuperar Contraseña</h3>
                </div>
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{ route('password.email') }}" method="POST" class="pt-3">
                    @csrf
                    <div class="row mb-3">
                        <label for="email" class="col-md-12 col-form-label ">Correo Electronico</label>

                        <div class="col-md-12">
                            <input id="email" type="email"
                                class="form-control @error('email') is-invalid @enderror" name="email"
                                value="{{ old('email') }}" required autocomplete="email" autofocus>

                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="mt-3">
                        <button class="btn btn-block btn-gradient-success btn-lg font-weight-medium auth-form-btn"
                            type="submit">Enviar Link</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
