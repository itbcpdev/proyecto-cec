<?php

namespace App\Http\Controllers\Administrador;

use App\Http\Controllers\Controller;
use App\Models\Roles;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class RolesController extends Controller
{
    public function index()
    {
        try{
            $roles = Roles::where('flestado', true)->get();
            return view('Administrador.Roles.index', compact('roles'));
        } catch(Exception $ex) {
            Log::info('Error:: RolesController->index '. $ex);
        }
    }

    public function create()
    {
        try{
            return view('Administrador.Roles.Create.index');
        } catch(Exception $ex) {
            Log::info('Error:: RolesController->create '. $ex);
        }
    }

    public function store(Request $request)
    {
        try{
            $data = new Roles();
            $data['nombre'] = $request->nombre;

            $data->save();

            return redirect()
                ->route('admin.roles.index')
                ->with([
                    'status' => 'El Rol fue creado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: RolesController->store '. $ex);
        }

    }

    public function edit($id)
    {
        try{
            $rol = Roles::find($id);
            return view('Administrador.Roles.Edit.index', compact('rol'));
        } catch(Exception $ex) {
            Log::info('Error:: RolesController->edit '. $ex);
        }
    }

    public function update(Request $request, $id)
    {
        try{
            $sector = Roles::find($id);
            $sector->nombre = $request->nombre;

            $sector->save();

            return redirect()
                ->route('admin.roles.index')
                ->with([
                    'status' => 'El Rol fue actualizado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: RolesController->update '. $ex);
        }
    }

    public function delete($id)
    {
        try{
            $rol = Roles::find($id);
            $rol->flestado = false;
            $rol->save();

            return redirect()
                ->route('admin.roles.index')
                ->with([
                    'status' => 'El Rol fue eliminado con éxito.',
                    'success' => 'alert-danger'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: RolesController->delete '. $ex);
        }
    }
}
