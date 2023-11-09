@extends('Empresa.Templates.template')

@section('head')
    @extends('Empresa.Templates.head')
@section('titulo')
    Solicitud Crear| Intranet CEC
@endsection
@endsection

@section('header')
@include('Empresa.Templates.header')
@endsection

@section('sidebar')
@include('Empresa.Templates.sidebar')
@endsection

@section('content')
@include('Empresa.Solicitud.Create.content')
@endsection

@section('footer')
@include('Empresa.Templates.footer')
@endsection
