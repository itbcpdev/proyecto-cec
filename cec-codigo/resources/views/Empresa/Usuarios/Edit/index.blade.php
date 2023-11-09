@extends('Empresa.Templates.template')

@section('head')
    @extends('Empresa.Templates.head')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
@section('titulo')
    Usuario Editar | Intranet CEC
@endsection
@endsection

@section('header')
@include('Empresa.Templates.header')
@endsection

@section('sidebar')
@include('Empresa.Templates.sidebar')
@endsection

@section('content')
@include('Empresa.Usuarios.Edit.content')
@endsection

@section('footer')
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
</script>
<link rel="stylesheet" href="{{asset('css/test.css')}}">

@include('Empresa.Templates.footer')
@endsection