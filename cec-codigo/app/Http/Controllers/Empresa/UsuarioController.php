<?php

namespace App\Http\Controllers\Empresa;

use App\Http\Controllers\Controller;
use App\Http\Requests\Administrador\UsuarioEmpresaUpdateRequest;
use App\Models\Roles;
use App\Models\Sectores;
use App\Models\TipoCargo;
use App\Models\User;
use App\Models\UsuarioSector;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class UsuarioController extends Controller
{
    public function index()
    {
        try{
            $empresa_id = Auth::user()->empresa_id;
            $usuarios = User::where('flestado', true)->where('empresa_id',  $empresa_id)->get();
            return view('Empresa.Usuarios.index', compact('usuarios'));
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->index '. $ex);
        }
    }

    public function create()
    {
        try{
            $sectores = Sectores::where('flestado', true)->get();
            $perfiles = [
                ['id' => '2', 'nombre' => 'Administrador'],
                ['id' => '3', 'nombre' => 'Contacto Comercial'],
                ['id' => '4', 'nombre' => 'Contacto de Empresa'],
            ];
            $tipocargos = TipoCargo::where('flestado', true)->get();
            $roles = Roles::where('flestado', true)->get();
            return view('Empresa.Usuarios.Create.index', compact('sectores', 'perfiles', 'tipocargos', 'roles'));
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->create '. $ex);
        }
    }

    public function store(Request $request)
    {
        try{
            $data = $request->all();
            $idEmpresa = Auth::user()->empresa_id;
            $usuario = new User();
            $usuario->name = $data['nombre'] ?? '';
            $usuario->apellido_paterno = $data['apellido_paterno'] ?? '';
            $usuario->apellido_materno = $data['apellido_materno'] ?? '';
            $usuario->cargo = $data['cargo'] ?? '';
            $usuario->genero = $data['genero'] ?? '';
            $usuario->empresa_id = $idEmpresa;
            $usuario->fecha_nac = $data['fecha_nac'] ?? '';
            $usuario->celular_contacto = $data['celular_contacto'] ?? '';
            $usuario->numero_fijo = $data['numero_fijo'] ?? '';
            $usuario->empresa_id = $idEmpresa;
            $usuario->perfil_id = $data['perfil_id'];
            $usuario->email = strtolower(trim($data['email'])) ?? '';
            if ($request->file('foto')) {
                $file = $request->file('foto');
                $filename = date('YmdHi') . $file->getClientOriginalName();
                $file->move(public_path('assets/usuario/image'), $filename);
                $usuario->foto= $filename;
            }
            $usuario->lugar_residencia = $data['lugar_residencia'] ?? '';
            $usuario->password = bcrypt($data['password']);
            $usuario->save();

            if($data['sector_principal_id'] != "") {
                $usuario_sector = new UsuarioSector();
                $usuario_sector->usuario_id = $usuario->id;
                $usuario_sector->sector_id = $data['sector_principal_id'];
                $usuario_sector->rol_id = $data['rol_principal_id'];
                $usuario_sector->principal_secundario = "1";
                $usuario_sector->save();
            }

            if(!empty($data['sectores_secundarios_id'])) {
                for($i = 0; $i< count($data['sectores_secundarios_id']); $i++) {
                    $usuario_sector = new UsuarioSector();
                    $usuario_sector->usuario_id = $usuario->id;
                    $usuario_sector->sector_id = $data['sectores_secundarios_id'][$i];
                    $usuario_sector->rol_id = $data['rol_secundario_id'][$i];
                    $usuario_sector->principal_secundario = "2";
                    $usuario_sector->save();
                }
            }

            return redirect()
                ->route('empresa.usuarios.index')
                ->with([
                    'status' => 'El Usuario fue creado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->store '. $ex);
        }
    }

    public function edit($id)
    {
        try{
            $idEmpresa = Auth::user()->empresa_id;
            $usuario = User::where('id',$id)->where('empresa_id', $idEmpresa)->first();
            if(is_null($usuario)) {
                return redirect()->route('empresa.usuarios.index');
            }

            $sector_principal = UsuarioSector::where('usuario_id', $usuario->id)
                    ->where('principal_secundario', '1')
                    ->where('flestado', true)->first();
            $sectores_secundarios = UsuarioSector::where('usuario_id', $usuario->id)
                    ->select('sector_id')
                    ->where('principal_secundario', '2')
                    ->where('flestado', true)->get()->pluck('sector_id');
            $roles_secundario = UsuarioSector::where('usuario_id', $usuario->id)
                    ->select('rol_id')
                    ->where('principal_secundario', '2')
                    ->where('flestado', true)->get()->pluck('rol_id');

            $perfiles = [
                ['id' => '2', 'nombre' => 'Administrador'],
                ['id' => '3', 'nombre' => 'Contacto Comercial'],
                ['id' => '4', 'nombre' => 'Contacto de Empresa'],
            ];

            $tipocargos = TipoCargo::where('flestado', true)->get();
            $roles = Roles::where('flestado', true)->get();

            $sectores = Sectores::where('flestado', true)->get();

            return view('Empresa.Usuarios.Edit.index', compact('usuario', 'sectores', 'perfiles', 'tipocargos', 'roles', 'sector_principal', 'sectores_secundarios', 'roles_secundario'));
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->edit '. $ex);
        }
    }

    public function update(UsuarioEmpresaUpdateRequest $request, $id)
    {
        try{
            $data = $request->all();
            $usuario = User::find($id);
            $usuario->name = $data['nombre'];
            $usuario->apellido_paterno = $data['apellido_paterno'];
            $usuario->apellido_materno = $data['apellido_materno'];
            $usuario->fecha_nac = $data['fecha_nac'];
            $usuario->celular_contacto = $data['celular_contacto'] ?? '';
            $usuario->numero_fijo = $data['numero_fijo'] ?? '';
            $usuario->cargo = $data['cargo'] ?? '';
            $usuario->email = strtolower(trim($data['email']));
            $usuario->genero = (int)$data['genero'];

            if ($request->file('foto')) {
                $file = $request->file('foto');
                $filename = date('YmdHi') . $file->getClientOriginalName();
                $file->move(public_path('assets/usuario/image'), $filename);
                $usuario->foto= $filename;
            }
            $usuario->lugar_residencia = $data['lugar_residencia'];
            $usuario->perfil_id = $data['perfil_id'];
            if ($data['password'] != '') {
                $usuario->password = bcrypt($data['password']);
            }
            $usuario->save();

            $sector_principal = UsuarioSector::where('usuario_id', $usuario->id)
                    ->where('principal_secundario', '1')
                    ->where('flestado', true)->first();

            if($data['sector_principal_id'] != "") {
                $sector_principal->sector_id = $data['sector_principal_id'];
                $sector_principal->rol_id = $data['rol_principal_id'];
                $sector_principal->save();
            }

            if(!empty($data['sectores_secundarios_id'])) {

                $sectores_secundarios = UsuarioSector::where('usuario_id', $usuario->id)
                                    ->where('principal_secundario', '2')
                                    ->where('flestado', true)->get();

                foreach($sectores_secundarios as $sectores_secundario) {
                    $sectores_secundario->delete();
                }
                for($h = 0; $h < count($data['sectores_secundarios_id']); $h++) {
                    $usuario_sector = new UsuarioSector();
                    $usuario_sector->usuario_id = $usuario->id;
                    $usuario_sector->sector_id = $data['sectores_secundarios_id'][$h];
                    $usuario_sector->rol_id = $data['rol_secundario_id'][$h];
                    $usuario_sector->principal_secundario = "2";
                    $usuario_sector->save();
                }
            } else {
                $sectores_secundarios = UsuarioSector::where('usuario_id', $usuario->id)
                                    ->where('principal_secundario', '2')
                                    ->where('flestado', true)->get();
                foreach($sectores_secundarios as $sectores_secundario) {
                    $sectores_secundario->delete();
                }
            }
            return redirect()
                ->route('empresa.usuarios.index')
                ->with([
                    'status' => 'El Usuario fue actualizado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->update '. $ex);
        }
    }

    public function delete($id)
    {
        try{
            $usuario = User::find($id);
            $usuario->flestado = false;
            $usuario->save();

            return redirect()
                ->route('empresa.usuarios.index')
                ->with([
                    'status' => 'El Usuario fue eliminado con éxito.',
                    'success' => 'alert-danger'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Empresa/SolicitudController->delete '. $ex);
        }
    }
}
