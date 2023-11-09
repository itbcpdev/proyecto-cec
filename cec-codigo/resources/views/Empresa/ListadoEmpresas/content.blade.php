<div class="content-wrapper">
  <div class="page-header">
      <h3 class="page-title"> Lista de Empresas </h3>
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
                  <h4 class="card-title">Empresas</h4>
                  <a href="javascript:void(0);" class="dt-button buttons-excel buttons-html5" id="excel-empresas-export">Excel</a>
                  <table id="empresas-table" class="table table-sm table-striped table-bordered" style="width:100%">
                      <thead class="text-white" style="background-color: #ffb645">
                          <tr>
                              <th> # </th>
                              <th> Nombre</th>
                              <th> Descripci¨®n</th>
                              <th> Direcci¨®n</th>
                              <th> Numero </th>
                              <th> Accioness </th>
                          </tr>
                      </thead>
                      <tbody>
                          @php
                              $count = 1;
                          @endphp
                          @forelse ($empresas as $empresa)
                              <tr>
                                  <td>{{ $count }}</td>
                                  <td> {{ $empresa->nombre }}</td>
                                  <td> {{ $empresa->descripcion_empresa }}</td>
                                  <td> {{ $empresa->direccion }}</td>
                                  <td> {{ $empresa->numero_contactos }}</td>
                                  <td>
                                    <a class="btn btn-sm btn-outline-info"
                                            href="landing/{{$empresa->slug}}" target="_blank">
                                            <span class="mr-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                                    <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                                    <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                                </svg>
                                            </span>
                                            Ver Landing
                                        </a>
                                  </td>
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
    $('#excel-empresas-export').on('click', function() {
        let url = "{{ route('empresa.export') }}";
        let queryString = '';

        if($('#empresas-table_filter input').val() != '') {
            queryString = encodeURIComponent($('#empresas-table_filter input').val());
        }
        let url_export = `${url}?queryString=${queryString}`;
        window.open(url_export);
        // console.log(url_export);
    });
      $(document).ready(function() {
          $.noConflict();
          $('#empresas-table').DataTable({
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
          });

      });
  });
</script>
<style>
  select[name='empresas-table_length']{
      padding: 0px 18px;
      margin: 0px 15px;
  }
</style>
