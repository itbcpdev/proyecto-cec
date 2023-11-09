<?php

namespace App\Http\Controllers\Administrador;

use App\Http\Controllers\Controller;
use App\Models\Campaign;
use App\Models\Empresa;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Requests\Administrador\Campaign\CampaignStoreRequest;

class CampaignController extends Controller
{
    public function index()
    {
        try{
            $campaigns = Campaign::where('flestado', true)->get();
            return view('Administrador.Campaign.index', compact('campaigns'));
        } catch(Exception $ex) {
            Log::info('Error:: CampaignController->index '. $ex);
        }

    }

    public function create()
    {
        try{
            $empresas = Empresa::where('flestado', true)->whereNotIn('id', ['1'])->get();
            return view('Administrador.Campaign.Create.index', compact('empresas'));
        } catch(Exception $ex) {
            Log::info('Error:: CampaignController->create '. $ex);
        }
    }

    public function store(CampaignStoreRequest $request)
    {
        try{
            $data = new Campaign();
            $data['nombre'] = $request->nombre;
            $data['descripcion'] = $request->descripcion ?? "";
            $slug = SlugService::createSlug(
                $data, 'slug', $request->nombre,
                ['unique' => true, 'includeTrashed' => true]
            );
            $data['slug'] = $slug;
            if ($request->file('img_banner')) {
                $file = $request->file('img_banner');
                $filename = time() . "." . $file->getClientOriginalExtension();
                $file->move(public_path('assets/campaign/image/'), $filename);
                $data['banner'] = $filename;
            }

            if(!empty($request->empresas_id)) {
                $array_empresas = implode(",",$request->empresas_id);
                $data['empresas_id'] = $array_empresas;
            }
            $data->save();

            return redirect()
                ->route('admin.campaign.index')
                ->with([
                    'status' => 'La Campaña fue creada con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: CampaignController->store '. $ex);
        }

    }

    public function edit($id)
    {
        try{
            $campaign = Campaign::find($id);
            $empresas = Empresa::where('flestado', true)->whereNotIn('id', ['1'])->get();
            return view('Administrador.Campaign.Edit.index', compact('campaign', 'empresas'));
        } catch(Exception $ex) {
            Log::info('Error:: CampaignController->edit '. $ex);
        }
    }

    public function update(Request $request, $id)
    {
        try{
            $campaign = Campaign::find($id);
            $campaign->nombre = $request->nombre;
            $campaign->descripcion = $request->descripcion;
            if(!empty($request->empresas_id)) {
                $array_empresas = implode(",",$request->empresas_id);
                $campaign->empresas_id = $array_empresas;
            }
            if ($request->file('img_banner')) {
                $file = $request->file('img_banner');
                $filename = time() . "." . $file->getClientOriginalExtension();
                $file->move(public_path('assets/campaign/image/'), $filename);
                $campaign->banner = $filename;
            }
            $campaign->save();

            return redirect()
                ->route('admin.campaign.index')
                ->with([
                    'status' => 'La Campaña fue actualizada con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: CampaignController->update '. $ex);
        }
    }

    public function delete($id)
    {
        try{
            $campaign = Campaign::find($id);
            $campaign->flestado = false;
            $campaign->save();

            return redirect()
                ->route('admin.campaign.index')
                ->with([
                    'status' => 'La Campaña fue eliminada con éxito.',
                    'success' => 'alert-danger'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: CampaignController->delete '. $ex);
        }

    }

    public function changeStateCampaign(Request $request)
    {
        try {
            $data = $request->all();
            $idCampaign = $data['idCampaign'];
            $statusCampaign = $data['statusCampaign'] == 1 ? false : true;

            $campaign = Campaign::find($idCampaign);
            $campaign->isActive = $statusCampaign;
            $campaign->save();

            return response()
                ->json([
                    'success' => true,
                    'status' => 'El estado de la campaña fue actualizado con éxito.',
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: CampaignController->changeStateCampaign '. $ex);
            return response()->json([
                    'success' => false,
                    'status' => 'Lo sentimos no se pudo actualizar el estado de la campaña',
                ]);
        }
    }
}
