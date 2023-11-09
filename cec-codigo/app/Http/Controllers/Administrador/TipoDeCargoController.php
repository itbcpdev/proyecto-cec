<?php

namespace App\Http\Controllers\Administrador;

use App\Http\Controllers\Controller;
use App\Models\TipoCargo;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class TipoDeCargoController extends Controller
{
    public function index()
    {
        try{
            $tipocargos = TipoCargo::where('flestado', true)->get();
            return view('Administrador.TipoCargo.index', compact('tipocargos'));
        } catch(Exception $ex) {
            Log::info('Error:: TipoDeCargoController->index '. $ex);
        }
    }

    public function create()
    {
        try{
            return view('Administrador.TipoCargo.Create.index');
        } catch(Exception $ex) {
            Log::info('Error:: TipoDeCargoController->create '. $ex);
        }
    }

    public function store(Request $request)
    {
        try{
            $data = new TipoCargo();
            $data['nombre'] = $request->nombre;

            $data->save();

            return redirect()
                ->route('admin.tipocargos.index')
                ->with([
                    'status' => 'El Tipo de Cargo fue creado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: TipoDeCargoController->store '. $ex);
        }
    }

    public function edit($id)
    {
        try{
            $tipocargo = TipoCargo::find($id);
            return view('Administrador.TipoCargo.Edit.index', compact('tipocargo'));
        } catch(Exception $ex) {
            Log::info('Error:: TipoDeCargoController->edit '. $ex);
        }
    }

    public function update(Request $request, $id)
    {
        try{
            $tipocargo = TipoCargo::find($id);
            $tipocargo->nombre = $request->nombre;

            $tipocargo->save();

            return redirect()
                ->route('admin.tipocargos.index')
                ->with([
                    'status' => 'El Tipo de Cargo fue actualizado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: TipoDeCargoController->update '. $ex);
        }
    }

    public function delete($id)
    {
        try{
            $tipocargo = TipoCargo::find($id);
            $tipocargo->flestado = false;
            $tipocargo->save();

            return redirect()
                ->route('admin.tipocargos.index')
                ->with([
                    'status' => 'El Tipo de Cargo fue eliminado con éxito.',
                    'success' => 'alert-danger'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: TipoDeCargoController->delete '. $ex);
        }
    }
}
