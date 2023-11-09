<div class="content-wrapper">
    <div class="page-header">
        <h3 class="page-title"> Lista de Solicitudes </h3>
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
                    <table id="solicitud-table" class="table table-sm table-bordered w-100">
                        <thead class="text-white" style="background-color: #ffb645">
                            <tr>
                                <th class="export-col"> # </th>
                                <th class="export-col"> Asunto</th>
                                <th class="export-col"> Mensaje</th>
                                <th class="export-col"> Estado Solicitud</th>
                                <th class="export-col"> Fecha de Solicitud</th>
                                <th class="export-col"> Fecha de Atenci¨®n</th>
                                <th> Accion </th>
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
                                    <td class="important"> {{ $solicitud->created_at  }}</td>
                                    <td class="important"> {{ $solicitud->fecha_de_atencion }}</td>
                                    <td class="important"> <a class="btn btn-sm btn-outline-info"
                                        href="solicitud/editar/{{$solicitud->id}}" target="_blank">
                                        <span class="mr-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                                <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                                <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                            </svg>
                                        </span>
                                        Ver Solicitud
                                    </a> </td>
                                </tr>
                                @php
                                $count++;
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
</style>
