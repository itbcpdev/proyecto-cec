<?php

namespace App\Http\Controllers\Administrador;

use App\Http\Controllers\Controller;
use App\Http\Requests\Administrador\UsuarioEmpresaStoreRequest;
use App\Http\Requests\Administrador\UsuarioEmpresaUpdateRequest;
use App\Http\Requests\Administrador\UsuarioCecStoreRequest;
use App\Http\Requests\Administrador\UsuarioCecUpdateRequest;
use App\Models\Empresa;
use App\Models\Perfiles;
use App\Models\Roles;
use App\Models\Sectores;
use App\Models\TipoCargo;
use App\Models\User;
use App\Models\UsuarioSector;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class UsuarioController extends Controller
{
    public function index_usuarios_cec()
    {
        try{
            $usuarios = User::where('flestado', true)->where('empresa_id', '1')->get();
            return view('Administrador.Usuarios.Cec.index', compact('usuarios'));
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->index_usuarios_cec '. $ex);
        }
    }

    public function create_usuarios_cec()
    {
        try{
            return view('Administrador.Usuarios.Cec.Create.index');
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->create_usuarios_cec '. $ex);
        }
    }

    public function store_usuarios_cec(UsuarioCecStoreRequest $request)
    {
        try{
            $data = $request->all();
            $usuario = new User();
            $usuario->name = $data['nombre'] ?? '';
            $usuario->apellido_paterno = $data['apellido_paterno'] ?? '';
            $usuario->apellido_materno = $data['apellido_materno'] ?? '';
            $usuario->genero = $data['genero'] ?? '';
            $usuario->celular_contacto = $data['celular_contacto'] ?? '';
            $usuario->numero_fijo = $data['numero_fijo'] ?? '';
            $usuario->empresa_id = 1;
            $usuario->perfil_id = 1;
            $usuario->email = $data['email'] ?? '';
            $usuario->password = bcrypt($data['password']);
            $usuario->save();


            return redirect()
                ->route('admin.usuarios-cec.index')
                ->with([
                    'status' => 'El Usuario fue creado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->store_usuarios_cec '. $ex);
        }
    }

    public function edit_usuarios_cec($id)
    {
        try{
            $usuario = User::find($id);
            return view('Administrador.Usuarios.Cec.Edit.index', compact('usuario'));
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->edit_usuarios_cec '. $ex);
        }
    }

    public function update_usuarios_cec(UsuarioCecUpdateRequest $request, $id)
    {
        try{
            $data = $request->all();
            $usuario = User::find($id);
            $usuario->name = $data['nombre'];
            $usuario->apellido_paterno = $data['apellido_paterno'];
            $usuario->apellido_materno = $data['apellido_materno'];
            $usuario->celular_contacto = $data['celular_contacto'] ?? '';
            $usuario->numero_fijo = $data['numero_fijo'] ?? '';
            $usuario->genero = (int)$data['genero'];
            if ($data['password'] != '') {
                $usuario->password = bcrypt($data['password']);
            }
            $usuario->save();

            return redirect()
                ->route('admin.usuarios-cec.index')
                ->with([
                    'status' => 'El Usuario fue actualizado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->update_usuarios_cec '. $ex);
        }
    }

    public function delete_usuarios_cec($id)
    {
        try{
            $usuario = User::find($id);
            $usuario->flestado = false;
            $usuario->save();

            return redirect()
                ->route('admin.usuarios-cec.index')
                ->with([
                    'status' => 'El Usuario fue eliminado con éxito.',
                    'success' => 'alert-danger'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->delete_usuarios_cec '. $ex);
        }
    }

    public function index_usuarios_empresa()
    {
        try{
            $usuarios = User::where('flestado', true)->whereNotIn('empresa_id', ['1'])->get();
            return view('Administrador.Usuarios.Empresa.index', compact('usuarios'));
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->index_usuarios_empresa '. $ex);
        }
    }

    public function create_usuarios_empresa()
    {
        try{
            $empresas = Empresa::where('flestado', true)->whereNotIn('id', ['1'])->get();
            $sectores = Sectores::where('flestado', true)->get();

            // $roles = Roles::where('flestado', true)->where('id', '<>', 1)->get();
            $perfiles = [
                ['id' => '2', 'nombre' => 'Administrador'],
                ['id' => '3', 'nombre' => 'Contacto Comercial'],
                ['id' => '4', 'nombre' => 'Contacto de Empresa'],
            ];

            $tipocargos = TipoCargo::where('flestado', true)->get();
            $roles = Roles::where('flestado', true)->get();
            return view('Administrador.Usuarios.Empresa.Create.index', compact('sectores', 'empresas', 'perfiles', 'tipocargos', 'roles'));
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->create_usuarios_empresa '. $ex);
        }
    }

    public function store_usuarios_empresa(UsuarioEmpresaStoreRequest $request)
    {
        try{
            $data = $request->all();
            $usuario = new User();
            $usuario->name = $data['nombre'] ?? '';
            $usuario->apellido_paterno = $data['apellido_paterno'] ?? '';
            $usuario->apellido_materno = $data['apellido_materno'] ?? '';
            $usuario->cargo = $data['cargo'] ?? '';
            $usuario->genero = $data['genero'] ?? '';
            $usuario->empresa_id = $data['empresa_id'];
            $usuario->celular_contacto = $data['celular_contacto'] ?? '';
            $usuario->numero_fijo = $data['numero_fijo'] ?? '';
            $usuario->tipo_de_cargo_id = $data['tipo_de_cargo_id'];
            $usuario->perfil_id = $data['perfil_id'] ?? 3;
            $usuario->email = strtolower(trim($data['email'])) ?? '';
            $usuario->fecha_nac = $data['fecha_nac'] ?? '';
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
                ->route('admin.usuarios-empresa.index')
                ->with([
                    'status' => 'El Usuario fue creado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->store_usuarios_empresa '. $ex);
        }

    }

    public function edit_usuarios_empresa($id)
    {
        try{
            $usuario = User::find($id);
            $usuario_sector = UsuarioSector::where('usuario_id', $usuario->id)->where('flestado', true)->first();
            $tipocargos = TipoCargo::where('flestado', true)->get();
            $roles = Roles::where('flestado', true)->get();

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


            $usuario_perfil = User::where('id', $usuario->id)->where('flestado', true)->first();
            $empresas = Empresa::where('flestado', true)->whereNotIn('id', ['1'])->get();
            $sectores = Sectores::where('flestado', true)->get();

            return view('Administrador.Usuarios.Empresa.Edit.index', compact('usuario', 'empresas', 'tipocargos', 'roles', 'sectores', 'usuario_perfil', 'perfiles', 'sector_principal', 'sectores_secundarios', 'roles_secundario'));
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->edit_usuarios_empresa '. $ex);
        }
    }

    public function update_usuarios_empresa(UsuarioEmpresaUpdateRequest $request, $id)
    {
        try{
            $data = $request->all();
            $usuario = User::find($id);
            $usuario->name = $data['nombre'];
            $usuario->apellido_paterno = $data['apellido_paterno'];
            $usuario->apellido_materno = $data['apellido_materno'];
            $usuario->fecha_nac = $data['fecha_nac'];
            $usuario->cargo = $data['cargo'];
            $usuario->email = strtolower(trim($data['email']));
            $usuario->genero = (int)$data['genero'];
            $usuario->empresa_id = $data['empresa_id'];
            $usuario->celular_contacto = $data['celular_contacto'] ?? '';
            $usuario->numero_fijo = $data['numero_fijo'] ?? '';
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


            // $usuario_sector = UsuarioSector::where('usuario_id', $usuario->id)->where('flestado', true)->first();
            // $usuario_sector->sectores_id = $data['sector_id'];
            // $usuario_sector->cuadro_directivo = "1";
            // $usuario_sector->save();

            return redirect()
                ->route('admin.usuarios-empresa.index')
                ->with([
                    'status' => 'El Usuario fue actualizado con éxito.',
                    'success' => 'alert-success'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->update_usuarios_empresa '. $ex);
        }
    }

    public function delete_usuarios_empresa($id)
    {
        try{
            $usuario = User::find($id);
            $usuario->flestado = false;
            $usuario->save();

            return redirect()
                ->route('admin.usuarios-empresa.index')
                ->with([
                    'status' => 'El Usuario fue eliminado con éxito.',
                    'success' => 'alert-danger'
                ]);
        } catch(Exception $ex) {
            Log::info('Error:: Administrador/UsuarioController->delete_usuarios_empresa '. $ex);
        }
    }
}
