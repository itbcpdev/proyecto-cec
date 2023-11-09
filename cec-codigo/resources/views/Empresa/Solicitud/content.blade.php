<div class="content-wrapper">
    <div class="page-header">
        <h3 class="page-title"> Lista de Solicitudes </h3>
        <nav aria-label="breadcrumb">
            <a href="{{ route('empresa.solicitud.create') }}" class="btn btn-block btn-lg btn-success mt-4">Crear
                Solicitud</a>
        </nav>
    </div>
    <div class="row">
        <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert {{ session('success') }}" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <h4 class="card-title">Solicitudes</h4>
                    <table id="solicitud-table" class="table table-bordered w-100">
                        <thead class="text-white" style="background-color: #ffb645">
                            <tr>
                                <th class="export-col"> # </th>
                                <th class="export-col"> Asunto</th>
                                <th class="export-col"> Mensaje</th>
                                <th class="export-col"> Estado</th>
                                <th class="export-col"> Fecha de Solicitud </th>
                                <th class="export-col"> Fecha de Atenci¨®n</th>
                                <th class="export-col"> Observaci¨®n</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 1;
                            @endphp
                            @forelse ($solicitudes as $solicitud)
                                <tr>
                                    <td class="important">{{ $count }}</td>
                                    <td class="important"> {{ $solicitud->asunto }}</td>
                                    <td class="important"> {{ $solicitud->mensaje }}</td>
                                    <td class="important"> {{ $solicitud->estado->nombre }}</td>
                                    <td class="important"> {{ $solicitud->created_at }}</td>
                                    <td class="important"> {{ $solicitud->fecha_de_atencion }}</td>
                                    <td class="important"> {{ $solicitud->observacion }}</td>
                                </tr>
                                @php
                                    $count ++;
                                @endphp
                            @empty
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@extends('Administrador.Shared.datatable')
<script>
    window.addEventListener('load', function() {
        $(document).ready(function() {
            $.noConflict();
            $('#solicitud-table').DataTable({
                responsive: true,
                "language": {
                    "decimal": "",
                    "emptyTable": "No hay informaci¨®n",
                    "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
                    "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
                    "infoFiltered": "(Filtrado de _MAX_ total entradas)",
                    "infoPostFix": "",
                    "thousands": ",",
                    "lengthMenu": "Mostrar  _MENU_  Entradas",
                    "loadingRecords": "Cargando...",
                    "processing": "Procesando...",
                    "search": "Buscar:",
                    "zeroRecords": "Sin resultados encontrados",
                    "paginate": {
                        "first": "Primero",
                        "last": "Ultimo",
                        "next": "Siguiente",
                        "previous": "Anterior"
                    }
                },
                "columnDefs": [{
                    "width": "20%",
                    "targets": 0,
                }],
                dom: 'Bfrtip',
                buttons: [ {
                    extend: 'excelHtml5',
                    customize: function( xlsx ) {
                        var sheet = xlsx.xl.worksheets['sheet1.xml'];
                        $('row c[r^="C"]', sheet).attr( 's', '2' );
                    },
                    exportOptions: {
                        columns: '.export-col'
                    },
                }]
            });

        });
    });
</script>
<style>
    select[name='solicitud-table_length']{
        padding: 0px 18px;
        margin: 0px 15px;
    }
    a.dt-button.buttons-excel.buttons-html5 {
        background: #0c6f3d;
        color: #fff;
    }
</style>
