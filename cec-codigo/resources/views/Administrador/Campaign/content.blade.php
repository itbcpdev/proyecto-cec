<div class="content-wrapper">
    <div class="page-header">
        <h3 class="page-title"> Lista de Campañas </h3>
        <nav aria-label="breadcrumb">
            <a href="{{ route('admin.campaign.create') }}" class="btn btn-block btn-sm btn-success"><span class="mdi mdi-plus"></span> Crear
                Campañas</a>
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
                    <h4 class="card-title">Campañas</h4>
                    <table id="campaign-table" class="table table-bordered">
                        <thead class="text-white" style="background-color: #ffb645">
                            <tr>
                                <th> # </th>
                                <th> Nombre </th>
                                <th> Estado </th>
                                <th> Acciones </th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($campaigns as $campaign)
                                <tr>
                                    <td> {{ $campaign->id }} </td>
                                    <td> {{ $campaign->nombre }} </td>
                                    <td> {{ $campaign->isActive == 1 ? 'Activado' : 'Desactivado' }} </td>
                                    <td>
                                        <a class="btn btn-sm btn-success"
                                            href="{{ route('admin.campaign.edit', ['id' => $campaign->id]) }}">
                                            <span class="">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                                                    <path
                                                        d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z" />
                                                </svg>
                                            </span>
                                        </a>
                                        <a class="btn btn-sm btn-danger"
                                            href="{{ route('admin.campaign.delete', ['id' => $campaign->id]) }}">
                                            <span class="">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                    <path
                                                        d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                                    <path fill-rule="evenodd"
                                                        d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                                </svg>
                                            </span>
                                        </a>
                                        <a class="btn btn-sm btn-danger" data-id="{{ $campaign->id }}"
                                            data-status="{{ $campaign->isActive == 1 ? 1 : 2 }}"
                                            href="javascript:;" onclick="changeState(this)">
                                            {{ $campaign->isActive == 1 ? 'Desactivar' : 'Activar'}}
                                        </a>
                                        <a class="btn btn-sm btn-success"
                                            href="{{URL::to('/') }}/campana/landing/{{$campaign->slug}}" target="_blank" style="background-color: #1765b5 !important">
                                            <span class="mr-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                                    <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                                    <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                                </svg>
                                            </span>
                                            Ver Campaña
                                        </a>
                                    </td>
                                </tr>
                            @empty
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function changeState(e) {

        let idCampaign = $(e).data('id');
        let statusCampaign = $(e).data('status');
        let textoConfirm = (statusCampaign == 1 ? 'Desactivar' : 'Activar');

        Swal.fire({
            title: `Esta seguro de ${textoConfirm} la campaña ?`,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#007bff',
            cancelButtonColor: '#dc3545',
            confirmButtonText: 'Si',
            cancelButtonText: 'Cancelar'
            }).then((result) => {
            if (result.isConfirmed) {
                let url = '{{ route("changeStateCampaign")  }}';
                axios.post(`${url}`, {
                    idCampaign,
                    statusCampaign
                })
                .then( response => {
                    if(response.data.success == true ){
                        Swal.fire(
                            'Correcto!',
                            response.data.status,
                            'success'
                        ).then(()=>{
                            window.location.href = '{{ route("admin.campaign.index") }}';
                        });
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: response.data.status,
                        });
                    }
                });

            }
        })
    }
</script>
@extends('Administrador.Shared.datatable')
<script>
    window.addEventListener('load', function() {
        $(document).ready(function() {
            $.noConflict();
            $('#campaign-table').DataTable({
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
    select[name='campaign-table_length']{
        padding: 0px 18px;
        margin: 0px 15px;
    }
</style>
