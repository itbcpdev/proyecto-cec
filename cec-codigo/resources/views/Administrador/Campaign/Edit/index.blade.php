@extends('Administrador.Templates.template')

@section('head')
    @extends('Administrador.Templates.head')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
@section('titulo')
    Campaña Editar| Intranet CEC
@endsection
@endsection

@section('header')
@include('Administrador.Templates.header')
@endsection

@section('sidebar')
@include('Administrador.Templates.sidebar')
@endsection

@section('content')
@include('Administrador.Campaign.Edit.content')
@endsection

@section('footer')
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
</script>
<link rel="stylesheet" href="{{asset('css/test.css')}}">

<script>

    let data = null;


    @if( $campaign ) {
        let arrayEmpresas =  @json($campaign->empresas_id);
        if(arrayEmpresas != null){
            let textoArrayEmpresas = arrayEmpresas.replace(/\[|\]/g,'');
            let textoEmpresa = textoArrayEmpresas.replace(/['"]+/g, '');
            data = textoEmpresa.split(',');
        }
    }
    @endif


    jQuery('#grupoempresas').val(data);
    jQuery('#grupoempresas').multiselect({
        nonSelectedText: 'Seleccionar Empresas',
        enableFiltering: true,
        enableCaseInsensitiveFiltering: true,
        buttonWidth: '100%',
        filterPlaceholder: 'Buscar',
        nSelectedText: 'Seleccionados',
        maxHeight: 300,
        buttonWidth: '400px',
    });
</script>
@include('Administrador.Templates.footer')
@endsection