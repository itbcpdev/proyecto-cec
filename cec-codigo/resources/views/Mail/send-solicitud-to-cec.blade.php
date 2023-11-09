@extends('Mail.Template.template')

@section('head')
    @extends('Mail.Template.head')
        @section('titulo')
            Solicitud CEC
        @endsection

@endsection

@section('header')
    @include('Mail.Template.header')
@endsection

@section('content')
    <div class="mj-column-per-100 mj-outlook-group-fix"
    style="font-size:14px;text-align:left;direction:ltr;display:inline-b
                    lock;vertical-align:top;width:100%; font-family: Helvetica,Arial, sans-serif">
        <table border="0" cellpadding="0" cellspacing="0" role="presentation"
            style="vertical-align:top;background-color:#ffffff;" width="100%">
            <tr>
                <td align="left"
                    style="font-size:14px;padding:10px 25px;word-break:break-word;">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%"
                        role="presentation"
                        style="border-collapse:collapse;border-spacing:0px;">
                        <tbody>
                            <tr>
                                <td><h2 style="text-align: center;">Se registro una nueva solicitud </h2></td>
                            </tr>
                            <tr>
                                <td align="left"
                    style="font-size:14px;padding:10px 25px;word-break:break-word;">
                                    <table border="0" cellpadding="0" cellspacing="0"
                        role="presentation"
                        style="border-collapse:collapse;border-spacing:0px">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <h3 style="margin-bottom: 5px;">Nombre de Usuario</h3>
                                                    <p>{{ $infoSolicitud['nombre'] }}</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h3 style="margin-bottom: 5px;">Correo de Usuario</h3>
                                                    <p>{{ $infoSolicitud['correo'] }}</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h3 style="margin-bottom: 5px;">Empresa de Usuario</h3>
                                                    <p>{{ $infoSolicitud['empresa'] }}</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h3 style="margin-bottom: 5px;">Asunto de Solicitud</h3>
                                                    <p>{{ $infoSolicitud['asunto'] }}</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h3 style="margin-bottom: 5px;">Mensaje de Solicitud</h3>
                                                    <p>{{ $infoSolicitud['mensaje'] }}</p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </table>
    </div>
@endsection

@section('footer')
    @include('Mail.Template.footer')
@endsection

</body>
</html>
