<div class="content-wrapper">
    <div class="page-header">
        <h3 class="page-title"> Lista de Usuarios </h3>
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
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th> # </th>
                                <th> Nombre</th>
                                <th> Correo </th>
                                <th> Empresa </th>
                                <th> Sector </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> 1 </td>
                                <td> Oscar</td>
                                <td> oscar@empresa.com </td>
                                <td> Empresa 1 </td>
                                <td> TI </td>
                            </tr>
                            <tr>
                                <td> 2 </td>
                                <td> Juan</td>
                                <td> juan@empresa.com </td>
                                <td> Empresa 2 </td>
                                <td> TI </td>
                            </tr>
                            <tr>
                                <td> 3 </td>
                                <td> Pedro</td>
                                <td> pedro@gmail.com </td>
                                <td> Empresa 3 </td>
                                <td> Industrial </td>
                            </tr>
                            <tr>
                                <td> 4 </td>
                                <td> Renato </td>
                                <td> renato@gmail.com </td>
                                <td> Empresa 4 </td>
                                <td> Publicidad </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
