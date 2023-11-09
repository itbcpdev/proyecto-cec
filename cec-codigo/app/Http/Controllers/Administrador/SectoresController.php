<?php

namespace App\Http\Controllers\Administrador;

use App\Http\Controllers\Controller;
use App\Models\Sectores;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class SectoresController extends Controller
{
    public function index()
    {
        try{
            $sectores = Sectores::where('flestado', true)->get();
            return view('Administrador.Sector.index', compact('sectores'));
        } catch(Exception $ex) {
            Log::info('Error:: SectoresController->index '. $ex);
        }
    }

    public function create()
    {
        try{
            return view('Administrador.Sector.Create.index');
        } catch(Exception $ex) {
            Log::info('Error:: SectoresController->create '. $ex);
        }
    }

    public function store(Request $request)
    {
        try{
            $data = new Sectores();
            $data['nombre'] = $request->nombre;

            if ($request->file('logo')) {
                $file = $request->file('logo');
                $filename = time() . "." . $file->getClientOriginalExtension();
                $file->move(public_path('assets/sector/image/'), $filename);
                $data['logo'] = $filename;
            }
            $data->save();

            return redirect()
                ->route('admin.sectores.index')
                ->with([
                    'status' => 'El Sector fue creado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: SectoresController->store '. $ex);
        }
    }

    public function edit($id)
    {
        try{
            $sector = Sectores::find($id);
            return view('Administrador.Sector.Edit.index', compact('sector'));
        } catch(Exception $ex) {
            Log::info('Error:: SectoresController->edit '. $ex);
        }
    }

    public function update(Request $request, $id)
    {
        try{
            $sector = Sectores::find($id);
            $sector->nombre = $request->nombre;

            if ($request->file('logo')) {
                $file = $request->file('logo');
                $filename = time() . "." . $file->getClientOriginalExtension();
                $file->move(public_path('assets/sector/image/'), $filename);
                $sector->logo = $filename;
            }
            $sector->save();

            return redirect()
                ->route('admin.sectores.index')
                ->with([
                    'status' => 'El Sector fue actualizado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: SectoresController->update '. $ex);
        }
    }

    public function delete($id)
    {
        try{
            $sector = Sectores::find($id);
            $sector->flestado = false;
            $sector->save();

            return redirect()
                ->route('admin.sectores.index')
                ->with([
                    'status' => 'El Sector fue eliminado con éxito.',
                    'success' => 'alert-danger'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: SectoresController->delete '. $ex);
        }
    }
}
