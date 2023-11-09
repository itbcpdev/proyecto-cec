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
                                <td><p>Hola {{ $infoSolicitud['nombre'] }}, su solicitud ha sido actualizada, ahora tiene el estado de <b>{{ $infoSolicitud['estado'] }}</b></p></td>
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
