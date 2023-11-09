@extends('Administrador.Auth.Templates.template')

@section('head')
    @extends('Administrador.Auth.Templates.head')
@section('titulo')
    Recuperar Contraseña | Intranet CEC
@endsection
@endsection

@section('content')
@include('Administrador.Auth.Password.Reset.content')
@endsection
