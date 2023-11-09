<?php

namespace App\Http\Controllers\Administrador;

use App\Http\Controllers\Controller;
use App\Models\Perfiles;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class PerfilesController extends Controller
{
    public function index()
    {
        try{
            $perfiles = Perfiles::where('flestado', true)->get();
            return view('Administrador.Perfiles.index', compact('perfiles'));
        } catch(Exception $ex) {
            Log::info('Error:: PerfilesController->index '. $ex);
        }

    }

    public function create()
    {
        try{
            return view('Administrador.Perfiles.Create.index');
        } catch(Exception $ex) {
            Log::info('Error:: PerfilesController->create '. $ex);
        }
    }

    public function store(Request $request)
    {
        try{
            $data = new Perfiles();
            $data['nombre'] = $request->nombre;
            $data->save();

            return redirect()
                ->route('admin.perfiles.index')
                ->with([
                    'status' => 'El Perfil fue creado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: PerfilesController->store '. $ex);
        }

    }

    public function edit($id)
    {
        try{
            $perfil = Perfiles::find($id);
            return view('Administrador.Perfiles.Edit.index', compact('perfil'));
        } catch(Exception $ex) {
            Log::info('Error:: PerfilesController->edit '. $ex);
        }

    }

    public function update(Request $request, $id)
    {
        try{
            $perfil = Perfiles::find($id);
            $perfil->nombre = $request->nombre;
            $perfil->save();

            return redirect()
                ->route('admin.perfiles.index')
                ->with([
                    'status' => 'El Perfil fue actualizado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: PerfilesController->update '. $ex);
        }
    }

    public function delete($id)
    {
        try{
            $perfil = Perfiles::find($id);
            $perfil->flestado = false;
            $perfil->save();

            return redirect()
                ->route('admin.perfiles.index')
                ->with([
                    'status' => 'El Perfil fue eliminado con éxito.',
                    'success' => 'alert-danger'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: PerfilesController->delete '. $ex);
        }
    }
}
