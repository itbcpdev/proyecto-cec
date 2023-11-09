<?php

namespace App\Http\Controllers\Empresa;

use App\Exports\ExportByEmpresa;
use App\Http\Controllers\Controller;
use App\Models\Campaign;
use App\Models\Empresa;
use Illuminate\Http\Request;


use Maatwebsite\Excel\Facades\Excel;

class HomeController extends Controller
{
    public function listCompanies()
    {
        $empresas = Empresa::where('flestado', true)->where('id', '<>', '1')->get();
        return view('Empresa.ListadoEmpresas.index', compact('empresas'));
    }

    public function listCampaign()
    {
        $campaigns = Campaign::where('flestado', true)->orderBy('id', 'desc')->get();
        return view('Empresa.ListadoCampanias.index', compact('campaigns'));
    }

    public function export(Request $request)
    {   
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

        return Excel::download(new ExportByEmpresa($empresas), 'Mi espacio CEC.xlsx');
        
    }
}
