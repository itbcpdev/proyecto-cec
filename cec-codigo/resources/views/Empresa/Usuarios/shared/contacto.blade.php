<div class="content-wrapper">
    <div class="page-header">
        <h3 class="page-title"> Lista de Usuarios</h3>
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
                    <h4 class="card-title">Usuarios</h4>
                    <table id="usuarios-table" class="table table-bordered w-100">
                        <thead class="text-white" style="background-color: #ffb645">
                            <tr>
                                <th> # </th>
                                <th> Nombre</th>
                                <th> Correo </th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 1;
                            @endphp
                            @forelse ($usuarios as $usuario)
                                <tr>
                                    <td> {{ $count }} </td>
                                    <td> {{ $usuario->name }} </td>
                                    <td> {{ $usuario->email }} </td>
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
            $('#usuarios-table').DataTable({
                responsive: true,
                "language": {
                    "decimal": "",
                    "emptyTable": "No hay información",
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
            });

        });
    });
</script>
<style>
    select[name='usuarios-table_length']{
        padding: 0px 18px;
        margin: 0px 15px;
    }
</style>
