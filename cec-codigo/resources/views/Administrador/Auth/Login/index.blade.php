@extends('Administrador.Auth.Templates.template')

@section('head')
    @extends('Administrador.Auth.Templates.head')
@section('titulo')
    Login | Intranet CEC
@endsection
@endsection

@section('content')
@include('Administrador.Auth.Login.content')
@endsection
