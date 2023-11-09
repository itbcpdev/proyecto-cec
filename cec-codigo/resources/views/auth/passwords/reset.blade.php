@extends('Administrador.Auth.Templates.template')

@section('head')
    @extends('Administrador.Auth.Templates.head')
@section('titulo')
    Resetar Contraseña | Intranet CEC
@endsection
@endsection

@section('content')
<div class="content-wrapper d-flex align-items-center auth">
    <div class="row flex-grow">
        <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left p-5">
                <div class="brand-logo">
                    <img src="{{ asset('admin/assets/images/logo_cec.png') }}" class="image-cec-login">
                </div>
                <div class="mb-3">
                    <h3>Resetear Contraseña</h3>
                </div>
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{ route('password.update') }}" method="POST" class="pt-3">
                    @csrf
                    <input type="hidden" name="token" value="{{ $token }}">
                    <div class="row mb-3">
                        <div class="mb-3">
                            <label for="email" class="col-md-12 col-form-label">Correo Electronico</label>

                            <div class="col-md-12">
                                <input id="email" type="email"
                                    class="form-control @error('email') is-invalid @enderror" name="email"
                                    value="{{ $email ?? old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="password" class="col-md-12 col-form-label">Contraseña</label>

                            <div class="col-md-12">
                                <input id="password" type="password"
                                    class="form-control @error('password') is-invalid @enderror" name="password"
                                    required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="password-confirm" class="col-md-12 col-form-label">Confirmar Contraseña</label>

                            <div class="col-md-12">
                                <input id="password-confirm" type="password" class="form-control"
                                    name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>
                    </div>
                    <div class="mt-3">
                        <button class="btn btn-block btn-gradient-success btn-lg font-weight-medium auth-form-btn"
                            type="submit">Actualizar Contraseña</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
