<?php

namespace App\Http\Controllers\Empresa;

use App\Http\Controllers\Controller;
use App\Models\Empresa;
use App\Models\Sectores;
use App\Models\User;
use App\Models\UsuarioSector;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class PerfilController extends Controller
{
    public function index()
    {
        try{
            $empresaId = Auth::user()->empresa_id;
            $empresa = Empresa::find($empresaId);
            $sectores = Sectores::where('flestado', true)->get();
            return view('Empresa.Perfil.index', compact('empresa', 'sectores'));
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/PerfilController->index '. $ex);
        }
    }

    public function update(Request $request, $id)
    {
        try{
            $idEmpresa = Auth::user()->empresa_id;
            if($idEmpresa != $id) {
                return redirect()
                ->route('empresa.perfil.index')
                ->with([
                    'status' => 'No se puede editar otra Empresa',
                    'success' => 'alert-success'
                ]);
            }
            $empresa = Empresa::find($id);

            if(session()->get('perfil_id') == 2){
                $empresa->nombre = $request->nombre;
                $empresa->ruc = $request->ruc ?? '';
                
                if($empresa->logo != $request->logo_default){
                    if($request->logo_default == ''){
                        $empresa->logo = '';
                    }else {
                        if ($request->file('img_logo')) {
                            $file = $request->file('img_logo');
                            $filename = time() . "." . $file->getClientOriginalExtension();
                            $file->move(public_path('assets/empresa/image/'), $filename);
                            $empresa->logo = $filename;
                        }        
                    }
                }
                $empresa->descripcion_empresa = $request->descripcion_empresa ?? '';
                $empresa->descripcion_campania = $request->descripcion_campania ?? '';
                
                if($empresa->flyer != $request->flyer_default){
                    if($request->flyer_default == ''){
                        $empresa->flyer = '';
                    }else {
                        if ($request->file('img_flyer')) {
                            $file = $request->file('img_flyer');
                            $filename = time() . "." . $file->getClientOriginalExtension();
                            $file->move(public_path('assets/empresa/image/'), $filename);
                            $empresa->flyer = $filename;
                        }      
                    }
                }
            
                if($request->video_empresa != "") {
                    $empresa->video = trim($request->video_empresa);
                    $str_watch = strstr(trim($request->video_empresa), 'watch?v=');
                    $str_final  = strstr($str_watch, "&", true);

                    if($str_final == false) {
                        $arrayCode = explode("v=", $str_watch);
                    } else {
                        $arrayCode = explode("v=", $str_final);
                    }

                    $empresa->embed_video = $arrayCode[1];
                }
                
                if($request->video_empresa == "") {
                    $empresa->video = "";
                    $empresa->embed_video = "";
                }

                $empresa->rs_twitter = $request->rs_twitter;
                $empresa->direccion = $request->direccion;
                $empresa->rs_youtube = $request->rs_youtube;
                $empresa->rs_facebook = $request->rs_facebook;
                $empresa->rs_instagram = $request->rs_instagram;
                $empresa->rs_linkedin = $request->rs_linkedin;
                $empresa->rs_tiktok = $request->rs_tiktok;
                $empresa->numero_contactos = $request->numero_contactos ?? '';
                $empresa->sector_id = $request->sector_id;
                $empresa->fec_inscrip_cec = $request->fec_inscrip_cec ?? '';
                $empresa->fec_aniversario_empresa = $request->fec_aniversario_empresa ?? '';
                $empresa->correo = $request->correo_contacto  ?? '';
            }
            if(session()->get('perfil_id') == 3){
                if ($request->file('img_flyer')) {
                    $file = $request->file('img_flyer');
                    $filename = time() . "." . $file->getClientOriginalExtension();
                    $file->move(public_path('assets/empresa/image/'), $filename);
                    $empresa->flyer = $filename;
                }
                if($request->video_empresa != "") {
                    $empresa->video = trim($request->video_empresa);
                    $str_watch = strstr(trim($request->video_empresa), 'watch?v=');
                    $str_final  = strstr($str_watch, "&", true);

                    if($str_final == false) {
                        $arrayCode = explode("v=", $str_watch);
                    } else {
                        $arrayCode = explode("v=", $str_final);
                    }

                    $empresa->embed_video = $arrayCode[1];
                }
                $empresa->descripcion_campania = $request->descripcion_campania ?? '';
            }
            $empresa->save();

            return redirect()
                ->route('empresa.perfil.index')
                ->with([
                    'status' => 'La Empresa fue actualizada con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/PerfilController->update '. $ex);
        }

    }
}
