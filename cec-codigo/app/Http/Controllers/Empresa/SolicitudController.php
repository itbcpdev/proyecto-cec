<?php

namespace App\Http\Controllers\Empresa;

use App\Http\Controllers\Controller;
use App\Mail\SendSolicitudToCecMailable;
use App\Models\Solicitud;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class SolicitudController extends Controller
{
    public function index()
    {
        try{
            $userId = Auth::user()->id;
            $solicitudes = Solicitud::where('flestado', true)->where('usuario_id', $userId)->orderBy('id', 'desc')->get();

            return view('Empresa.Solicitud.index', compact('solicitudes'));
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->index '. $ex);
        }
    }

    public function create()
    {
        try{
            return view('Empresa.Solicitud.Create.index');
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->create '. $ex);
        }
    }

    public function store(Request $request)
    {
        try{
            $data = $request->all();
            $idUsuario = Auth::user()->id;
            $currentUser = Auth::user();
            $solicitud = new Solicitud();
            $solicitud->asunto = $data['asunto'];
            $solicitud->mensaje = $data['mensaje'];
            $solicitud->usuario_id = $idUsuario;
            $solicitud->estado_solicitud_id = 1;
            $solicitud->empresa_id = Auth::user()->empresa_id;
            $solicitud->save();

            $infoSolicitud = [];
            $infoSolicitud['asunto'] = $data['asunto'];
            $infoSolicitud['mensaje'] = $data['mensaje'];
            $infoSolicitud['empresa'] = $currentUser->empresa->nombre;
            $infoSolicitud['correo'] = $currentUser->email;
            $infoSolicitud['nombre'] = $currentUser->name . " " . $currentUser->apellido_paterno . " "  . $currentUser->apellido_materno;

            $mailable = new SendSolicitudToCecMailable($infoSolicitud);
            // Mail::to(['davidsrojasll@gmail.com', 'robert.huamani108@gmail.com'])->send($mailable);
            
            Mail::to(['camila.chacon@cec.com.pe', 'contacto@cec.com.pe'])->send($mailable);

            return redirect()
                ->route('empresa.solicitud.index')
                ->with([
                    'status' => 'La Solicitud fue creada con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->store '. $ex);
        }
    }

    public function edit($id)
    {
        try{
            $solicitudd = Solicitud::find($id);

            if(is_null($solicitudd)) {
                return redirect()->route('empresa.solicitud.index');
            }
            return view('Empresa.Solicitud.index', compact('solicitud'));
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->edit '. $ex);
        }
    }

    public function update(Request $request, $id)
    {
        try{
            $data = $request->all();
            $solicitud = Solicitud::find($id);
            $solicitud->asunto = $data['asunto'];
            $solicitud->mensaje = $data['mensaje'];
            $solicitud->save();

            return redirect()
                ->route('admin.solicitud.index')
                ->with([
                    'status' => 'La Solicitud fue actualizada con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->update '. $ex);
        }
    }

    public function delete($id)
    {
        try{
            $solicitud = Solicitud::find($id);
            $solicitud->flestado = false;
            $solicitud->save();

            return redirect()
                ->route('admin.solicitud.index')
                ->with([
                    'status' => 'La Solicitud fue eliminada con éxito.',
                    'success' => 'alert-danger'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->delete '. $ex);
        }
    }
}
