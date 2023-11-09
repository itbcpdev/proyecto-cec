<?php

namespace App\Http\Controllers\Administrador;

use App\Http\Controllers\Controller;
use App\Http\Requests\Empresa\EmpresaStoreRequest;
use App\Http\Requests\Empresa\UpdateStoreRequest;
use App\Models\Campaign;
use App\Models\Empresa;
use App\Models\Sectores;
use App\Models\User;
use Illuminate\Http\Request;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Exception;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;


use Maatwebsite\Excel\Facades\Excel;
use App\Exports\EmpresasExport;

class EmpresaController extends Controller
{
    public function index()
    {
        try {
            $empresas = Empresa::where('flestado', true)->whereNotIn('id', ['1'])->get();

            return view('Administrador.Empresa.index', compact('empresas'));
        } catch (Exception $ex) {
            Log::info('Error: EmpresaController->index ' . $ex);
        }
    }

    public function export(Request $request)
    {   
        if(Auth::check() && Auth::user()->empresa_id == 1) {
            $data = $request->all();
            $queryString = urldecode($data["queryString"]);
            
            $empresas = Empresa::where('flestado', true)
                ->whereNotIn('id', ['1'])
                ->where(function ($query) use ($queryString) {
                    $query->where('nombre', 'like', '%' . $queryString . '%')
                        ->orWhere('direccion', 'like', '%' . $queryString . '%')
                        ->orWhere('numero_contactos', 'like', '%' . $queryString . '%')
                        ->orWhere('correo', 'like', '%' . $queryString . '%');
                })
                ->get();

            return Excel::download(new EmpresasExport($empresas), 'Mi espacio CEC.xlsx');
        } else {
            return response()->json(['error' => 'No tienes permisos para acceder a esta ruta']);
        }
    }


    public function create()
    {
        try{
            $sectores = Sectores::where('flestado', true)->get();
            return view('Administrador.Empresa.Create.index', compact('sectores'));
        } catch(Exception $ex) {
            Log::info('Error:: EmpresaController->create '. $ex);
        }

    }

    public function store(EmpresaStoreRequest $request)
    {
        try{
            $data = new Empresa();

            $data['nombre'] = $request->nombre;
            $slug = SlugService::createSlug(
                $data, 'slug', $request->nombre,
                ['unique' => true, 'includeTrashed' => true]
            );
            $data['slug'] = $slug;
            $data['ruc'] = $request->ruc ?? '';
            if ($request->file('img_logo')) {
                $file = $request->file('img_logo');
                $filename = time() . "." . $file->getClientOriginalExtension();
                $file->move(public_path('assets/empresa/image/'), $filename);
                $data['logo'] = $filename;
            }
            $data['descripcion_empresa'] = $request->descripcion_empresa ?? '';
            $data['descripcion_campania'] = $request->descripcion_campania ?? '';
            $data['rs_twitter'] = $request->rs_twitter ?? '';
            $data['rs_youtube'] = $request->rs_youtube ?? '';
            $data['rs_facebook'] = $request->rs_facebook ?? '';
            $data['rs_instagram'] = $request->rs_instagram ?? '';
            $data['rs_linkedin'] = $request->rs_linkedin ?? '';
            $data['rs_tiktok'] = $request->rs_tiktok ?? '';
            $data['fec_inscrip_cec'] = $request->fec_inscrip_cec ?? '';
            $data['fec_aniversario_empresa'] = $request->fec_aniversario_empresa ?? '';
            $data['direccion'] = $request->direccion ?? '';
            $data['correo'] = $request->correo_contacto ?? '';
            if ($request->file('img_flyer')) {
                $file = $request->file('img_flyer');
                $filename = time() . "." . $file->getClientOriginalExtension();
                $file->move(public_path('assets/empresa/image/'), $filename);
                $data['flyer'] = $filename;
            }

            if($request->video_empresa != "") {
                $data['video'] = $request->video_empresa;

                $str_watch = strstr(trim($request->video_empresa), 'watch?v=');
                $str_final  = strstr($str_watch, "&", true);
                if($str_final == false) {
                    $arrayCode = explode("v=", $str_watch);
                } else {
                    $arrayCode = explode("v=", $str_final);
                }
                $data['embed_video'] = $arrayCode[1];
            }

            $data['numero_contactos'] = $request->numero_contactos ?? '';
            $data['sector_id'] = $request->sector_id;
            $data->save();

            return redirect()
                ->route('admin.empresa.index')
                ->with([
                    'status' => 'La Empresa fue creada con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: EmpresaController->store '. $ex);
        }

    }

    public function edit($id)
    {
        try{
            $empresa = Empresa::find($id);
            $sectores = Sectores::where('flestado', true)->get();
            return view('Administrador.Empresa.Edit.index', compact('empresa', 'sectores'));
        } catch(Exception $ex) {
            Log::info('Error:: EmpresaController->edit '. $ex);
        }

    }

    public function update(UpdateStoreRequest $request, $id)
    {
        try{
            
            $empresa = Empresa::find($id);
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
            
            $empresa->descripcion_empresa = $request->descripcion_empresa;
            $empresa->descripcion_campania = $request->descripcion_campania;
            
            $empresa->direccion = $request->direccion;

            $empresa->rs_twitter = $request->rs_twitter;
            $empresa->rs_youtube = $request->rs_youtube;
            $empresa->rs_facebook = $request->rs_facebook;
            $empresa->rs_instagram = $request->rs_instagram;
            $empresa->rs_linkedin = $request->rs_linkedin;
            $empresa->rs_tiktok = $request->rs_tiktok;

            $empresa->fec_inscrip_cec = $request->fec_inscrip_cec ?? '';
            $empresa->fec_aniversario_empresa = $request->fec_aniversario_empresa ?? '';
            
            
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

            $empresa->numero_contactos = $request->numero_contactos ?? '';
            $empresa->correo = $request->correo_contacto ?? '';

            $empresa->sector_id = $request->sector_id;

            $empresa->save();

            return redirect()
                ->route('admin.empresa.index')
                ->with([
                    'status' => 'La Empresa fue actualizada con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: EmpresaController->update '. $ex);
        }

    }

    public function delete($id)
    {
        try{
            $empresa = Empresa::find($id);
            $empresa->flestado = false;
            $empresa->save();

            return redirect()
                ->route('admin.empresa.index')
                ->with([
                    'status' => 'La Empresa fue eliminada con éxito.',
                    'success' => 'alert-danger'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: EmpresaController->delete '. $ex);
        }

    }

    public function landingEmpresa(Request $request)
    {
        try{
            $slugLanding = $request->slug;

            $empresa = Empresa::where('flestado', true)->where('slug', $slugLanding)->first();

           
            
            if(is_null($empresa)) {
                return redirect('/');
            }

            $target = '';
            if (strstr($empresa->direccion, "www") !== false || strstr($empresa->direccion, "http") !== false) {
                $target = $empresa->direccion;
                if(strstr($empresa->direccion, "http") == false) {
                    $textohttp = 'https://';
                    $target = $textohttp.$empresa->direccion;
                }
            }

            $usuarios = User::where('empresa_id', $empresa->id)
                        ->where('flestado', true)
                        ->get();

            $contacto_comercial = User::where('empresa_id', $empresa->id)->where('flestado', true)->first();
            return view('landingEmpresa', compact('empresa', 'usuarios', 'contacto_comercial', 'target'));
        } catch(Exception $ex) {
            Log::info('Error:: EmpresaController->landingEmpresa '. $ex);
        }

    }

    public function landingCampania(Request $request)
    {
        try{
            $slugCampaign = $request->slug;
            $campaign  = Campaign::where('flestado', true)->where('slug', $slugCampaign)->first();

            if($campaign->isActive == 0) {
                return redirect('/');
            }
            $array_empresas = explode(",",$campaign->empresas_id);
            $empresas = Empresa::where('flestado', true)->whereIn('id', $array_empresas)->get();
            return view('landingCampania', compact('campaign', 'empresas'));
        } catch(Exception $ex) {
            Log::info('Error:: EmpresaController->landingCampania '. $ex);
        }

    }

    public function apiempresa()
    {
        try{
            $empresa = Empresa::where('flestado', true)->get();
            return response()->json([
                'success' => true,
                'empresas' => $empresa
            ]);
        } catch(Exception $ex) {
            Log::info('Error:: EmpresaController->apiempresa '. $ex);
        }
    }
    
    public function changeStateEmpresa(Request $request)
    {
        try {
            $data = $request->all();
            $idEmpresa = $data['idEmpresa'];
            $statusEmpresa = $data['statusEmpresa'] == 1 ? false : true;

            $empresa = Empresa::find($idEmpresa);
            $empresa->isActive = $statusEmpresa;
            $empresa->save();

            return response()
                ->json([
                    'success' => true,
                    'status' => 'El estado de la Empresa fue actualizado con éxito.',
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: EmpresaController->changeStateEmpresa '. $ex);
            return response()->json([
                    'success' => false,
                    'status' => 'Lo sentimos no se pudo actualizar el estado de la Empresa',
                ]);
        }
    }
}
