@extends('Empresa.Templates.template')

@section('head')
    @extends('Empresa.Templates.head')
@section('titulo')
    Empresa | Listado de Empresas
@endsection
@endsection

@section('header')
@include('Empresa.Templates.header')
@endsection

@section('sidebar')
@include('Empresa.Templates.sidebar')
@endsection

@section('content')
@include('Empresa.ListadoEmpresas.content')
@endsection

@section('footer')
@include('Empresa.Templates.footer')
@endsection
