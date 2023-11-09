@extends('Administrador.Templates.template')

@section('head')
    @extends('Administrador.Templates.head')
@section('titulo')
    Empresa Crear| Intranet CEC
@endsection
@endsection

@section('header')
@include('Administrador.Templates.header')
@endsection

@section('sidebar')
@include('Administrador.Templates.sidebar')
@endsection

@section('content')
@include('Administrador.Empresa.Create.content')
@endsection

@section('footer')
@include('Administrador.Templates.footer')
@include('Administrador.Shared.helperjs')
@endsection
