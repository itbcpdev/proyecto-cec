<?php

namespace App\Http\Controllers\Administrador;

use App\Http\Controllers\Controller;
use App\Mail\SendSolicitudToUserCompanyMailable;
use App\Models\Solicitud;
use App\Models\Empresa;
use App\Models\EstadoSolicitud;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class CecSolicitudController extends Controller
{
    public function index()
    {
        try{
            $solicitudes = Solicitud::where('flestado', true)->orderBy('created_at', 'desc')->get();
            return view('Administrador.Solicitud.index', compact('solicitudes'));
        } catch(Exception $ex) {
            Log::info('Error:: CecSolicitudController->index '. $ex);
        }
    }

    // public function create()
    // {

    //     $empresas = Empresa::where('flestado', true)->whereNotIn('id', ['1'])->get();

    //     return view('Administrador.Campaign.Create.index', compact('empresas'));
    // }

    // public function store(Request $request)
    // {
    //     $solicitud= new Solicitud();


    //     return redirect()
    //         ->route('admin.cec-solicitud.index')
    //         ->with([
    //             'status' => 'La Solicitud fue creada con éxito.',
    //             'success' => 'alert-success'
    //         ]);
    // }

    public function edit($id)
    {
        try{
            $solicitud = Solicitud::find($id);
            $empresa = Empresa::where('flestado', true)->where('id', $solicitud->empresa_id)->first();
            $usuario = User::where('id', $solicitud->usuario_id)->where('flestado', true)->first();
            $nombre_completo = $usuario->name . " " . $usuario->apellido_paterno . " " . $usuario->apellido_materno;
            $estado_solicitudes = EstadoSolicitud::get();
            return view('Administrador.Solicitud.Edit.index', compact('solicitud', 'empresa', 'nombre_completo', 'estado_solicitudes'));
        } catch(Exception $ex) {
            Log::info('Error:: CecSolicitudController->edit '. $ex);
        }
    }

    public function update(Request $request, $id)
    {
        try{
            $solicitud = Solicitud::find($id);
            $usuario = User::where('id', $solicitud->usuario_id)->where('flestado', true)->first();

            $solicitud->estado_solicitud_id = $request->estado_solicitud;
            if($request->observacion != '') {
                $solicitud->observacion = $request->observacion;
            }
            $solicitud->fecha_de_atencion = date('Y-m-d H:i:s');
            $estado = EstadoSolicitud::where('id', $request->estado_solicitud)->where('flestado', true)->first();

            $solicitud->save();

            $infoSolicitud = [];
            $infoSolicitud['correo'] = @$usuario->email;
            $infoSolicitud['estado'] = @$estado->nombre;
            $infoSolicitud['nombre'] = @$usuario->name . " " . @$usuario->apellido_paterno . " " . @$usuario->apellido_materno;
            $mailable = new SendSolicitudToUserCompanyMailable($infoSolicitud);
            Mail::to($infoSolicitud['correo'])->send($mailable);

            return redirect()
                ->route('admin.cec-solicitud.index')
                ->with([
                    'status' => 'La Solicitud fue actualizada con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: CecSolicitudController->edit '. $ex);
        }
    }

    // public function delete($id)
    // {
    //     $campaign = Campaign::find($id);
    //     $campaign->flestado = false;
    //     $campaign->save();

    //     return redirect()
    //         ->route('admin.campaign.index')
    //         ->with([
    //             'status' => 'La Campaña fue eliminada con éxito.',
    //             'success' => 'alert-danger'
    //         ]);
    // }
}
