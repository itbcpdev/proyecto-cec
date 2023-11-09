<?php

use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\Auth\ResetPasswordController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Administrador\EmpresaController;
use App\Http\Controllers\Administrador\SectoresController;
use App\Http\Controllers\Administrador\UsuarioController;
use App\Http\Controllers\Administrador\CampaignController;
use App\Http\Controllers\Administrador\CecSolicitudController;
use App\Http\Controllers\Administrador\PerfilesController;
use App\Http\Controllers\Administrador\RolesController;
use App\Http\Controllers\Administrador\TipoDeCargoController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Empresa\HomeController as EmpresaHomeController;
use App\Http\Controllers\Empresa\PerfilController;
use App\Http\Controllers\Empresa\SolicitudController;
use App\Http\Controllers\Empresa\UsuarioController as EmpresaUsuarioController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', function () {
    return redirect('/administrador');
});

Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');

Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

Route::post('/login', [LoginController::class, 'login']);

Route::post('/password/email', [ForgotPasswordController::class, 'sendResetLinkEmail'])->name('password.email');
Route::get('/password/reset', [ForgotPasswordController::class, 'showLinkRequestForm'])->name('password.request');
Route::post('/password/reset', [ResetPasswordController::class, 'reset'])->name('password.update');
Route::get('/password/reset/{token}', [ResetPasswordController::class, 'showResetForm'])->name('password.reset');
Route::get('/bienvenido', [LoginController::class, 'bienvenido'])
    ->name('bienvenido');
// Auth::routes();


Route::group(['prefix' => 'administrador', 'middleware' => ['administrador']], function () {

    Route::get('/empresas/exportar', [EmpresaController::class, 'export'])->name('empresas.exportar');
    Route::get('/', [EmpresaController::class, 'index'])->name('admin.empresa.index');

    Route::get('/empresa/crear', [EmpresaController::class, 'create'])->name('admin.empresa.create');
    Route::get('/empresa/editar/{id}', [EmpresaController::class, 'edit'])->name('admin.empresa.edit');
    Route::post('/empresa/store', [EmpresaController::class, 'store'])->name('admin.empresa.store');
    Route::put('/empresa/update/{id}', [EmpresaController::class, 'update'])->name('admin.empresa.update');
    Route::get('/empresa/delete/{id}', [EmpresaController::class, 'delete'])->name('admin.empresa.delete');
    

    Route::get('/perfiles', [PerfilesController::class, 'index'])->name('admin.perfiles.index');
    Route::get('/perfiles/crear', [PerfilesController::class, 'create'])->name('admin.perfiles.create');
    Route::get('/perfiles/editar/{id}', [PerfilesController::class, 'edit'])->name('admin.perfiles.edit');
    Route::post('/perfiles/store', [PerfilesController::class, 'store'])->name('admin.perfiles.store');
    Route::put('/perfiles/update/{id}', [PerfilesController::class, 'update'])->name('admin.perfiles.update');
    Route::get('/perfiles/delete/{id}', [PerfilesController::class, 'delete'])->name('admin.perfiles.delete');

    Route::get('/sectores', [SectoresController::class, 'index'])->name('admin.sectores.index');
    Route::get('/sectores/crear', [SectoresController::class, 'create'])->name('admin.sectores.create');
    Route::get('/sectores/editar/{id}', [SectoresController::class, 'edit'])->name('admin.sectores.edit');
    Route::post('/sectores/store', [SectoresController::class, 'store'])->name('admin.sectores.store');
    Route::put('/sectores/update/{id}', [SectoresController::class, 'update'])->name('admin.sectores.update');
    Route::get('/sectores/delete/{id}', [SectoresController::class, 'delete'])->name('admin.sectores.delete');

    Route::get('/roles', [RolesController::class, 'index'])->name('admin.roles.index');
    Route::get('/roles/crear', [RolesController::class, 'create'])->name('admin.roles.create');
    Route::get('/roles/editar/{id}', [RolesController::class, 'edit'])->name('admin.roles.edit');
    Route::post('/roles/store', [RolesController::class, 'store'])->name('admin.roles.store');
    Route::put('/roles/update/{id}', [RolesController::class, 'update'])->name('admin.roles.update');
    Route::get('/roles/delete/{id}', [RolesController::class, 'delete'])->name('admin.roles.delete');

    Route::get('/tipocargo', [TipoDeCargoController::class, 'index'])->name('admin.tipocargos.index');
    Route::get('/tipocargo/crear', [TipoDeCargoController::class, 'create'])->name('admin.tipocargos.create');
    Route::get('/tipocargo/editar/{id}', [TipoDeCargoController::class, 'edit'])->name('admin.tipocargos.edit');
    Route::post('/tipocargo/store', [TipoDeCargoController::class, 'store'])->name('admin.tipocargos.store');
    Route::put('/tipocargo/update/{id}', [TipoDeCargoController::class, 'update'])->name('admin.tipocargos.update');
    Route::get('/tipocargo/delete/{id}', [TipoDeCargoController::class, 'delete'])->name('admin.tipocargos.delete');

    Route::get('/campaign', [CampaignController::class, 'index'])->name('admin.campaign.index');
    Route::get('/campaign/crear', [CampaignController::class, 'create'])->name('admin.campaign.create');
    Route::get('/campaign/editar/{id}', [CampaignController::class, 'edit'])->name('admin.campaign.edit');
    Route::post('/campaign/store', [CampaignController::class, 'store'])->name('admin.campaign.store');
    Route::put('/campaign/update/{id}', [CampaignController::class, 'update'])->name('admin.campaign.update');
    Route::get('/campaign/delete/{id}', [CampaignController::class, 'delete'])->name('admin.campaign.delete');

    Route::get('/solicitudes', [CecSolicitudController::class, 'index'])->name('admin.cec-solicitud.index');
    // Route::get('/solicitud/crear', [CecSolicitudController::class, 'create'])->name('admin.cec-solicitud.create');
    Route::get('/solicitud/editar/{id}', [CecSolicitudController::class, 'edit'])->name('admin.cec-solicitud.edit');
    // Route::post('/solicitud/store', [CecSolicitudController::class, 'store'])->name('admin.cec-solicitud.store');
    Route::put('/solicitud/update/{id}', [CecSolicitudController::class, 'update'])->name('admin.cec-solicitud.update');
    // Route::get('/solicitud/delete/{id}', [CecSolicitudController::class, 'delete'])->name('admin.cec-solicitud.delete');

    Route::get('/usuarios/cec', [UsuarioController::class, 'index_usuarios_cec'])->name('admin.usuarios-cec.index');
    Route::get('/usuarios/cec/crear', [UsuarioController::class, 'create_usuarios_cec'])->name('admin.usuarios-cec.create');
    Route::get('/usuarios/cec/editar/{id}', [UsuarioController::class, 'edit_usuarios_cec'])->name('admin.usuarios-cec.edit');
    Route::post('/usuarios/cec/store', [UsuarioController::class, 'store_usuarios_cec'])->name('admin.usuarios-cec.store');
    Route::put('/usuarios/cec/update/{id}', [UsuarioController::class, 'update_usuarios_cec'])->name('admin.usuarios-cec.update');
    Route::get('/usuarios/cec/delete/{id}', [UsuarioController::class, 'delete_usuarios_cec'])->name('admin.usuarios-cec.delete');

    Route::get('/usuarios/empresa', [UsuarioController::class, 'index_usuarios_empresa'])->name('admin.usuarios-empresa.index');
    Route::get('/usuarios/empresa/crear', [UsuarioController::class, 'create_usuarios_empresa'])->name('admin.usuarios-empresa.create');
    Route::get('/usuarios/empresa/editar/{id}', [UsuarioController::class, 'edit_usuarios_empresa'])->name('admin.usuarios-empresa.edit');
    Route::post('/usuarios/empresa/store', [UsuarioController::class, 'store_usuarios_empresa'])->name('admin.usuarios-empresa.store');
    Route::put('/usuarios/empresa/update/{id}', [UsuarioController::class, 'update_usuarios_empresa'])->name('admin.usuarios-empresa.update');
    Route::get('/usuarios/empresa/delete/{id}', [UsuarioController::class, 'delete_usuarios_empresa'])->name('admin.usuarios-empresa.delete');
    Route::get('/administrador/landing', [HomeController::class, 'index_landing']);

    Route::post('/changeStateCampaign', [CampaignController::class, 'changeStateCampaign'])->name('changeStateCampaign');
    Route::post('/changeStateEmpresa', [EmpresaController::class, 'changeStateEmpresa'])->name('changeStateEmpresa');
});

Route::group(['prefix' => 'empresa', 'namespace' => 'Empresa', 'middleware' => ['empresa']], function () {
    Route::get('/', [EmpresaUsuarioController::class, 'index'])->name('empresa.usuarios.index');
    Route::get('/exportar', [EmpresaHomeController::class, 'export'])->name('empresa.export');
    Route::get('usuarios/crear', [EmpresaUsuarioController::class, 'create'])->name('empresa.usuarios.create')->middleware('haspremissions');
    Route::get('usuarios/editar/{id}', [EmpresaUsuarioController::class, 'edit'])->name('empresa.usuarios.edit')->middleware('haspremissions');
    Route::post('usuarios/store', [EmpresaUsuarioController::class, 'store'])->name('empresa.usuarios.store')->middleware('haspremissions');
    Route::put('usuarios/update/{id}', [EmpresaUsuarioController::class, 'update'])->name('empresa.usuarios.update')->middleware('haspremissions');
    Route::get('usuarios/delete/{id}', [EmpresaUsuarioController::class, 'delete'])->name('empresa.usuarios.delete')->middleware('haspremissions');

    Route::get('/perfil', [PerfilController::class, 'index'])->name('empresa.perfil.index')->middleware('haspremissions');;
    Route::post('/perfil/update/{id}', [PerfilController::class, 'update'])->name('empresa.perfil.update')->middleware('haspremissions');

    Route::get('/solicitud', [SolicitudController::class, 'index'])->name('empresa.solicitud.index');
    Route::get('/solicitud/crear', [SolicitudController::class, 'create'])->name('empresa.solicitud.create');
    Route::get('/solicitud/editar/{id}', [SolicitudController::class, 'edit'])->name('empresa.solicitud.edit');
    Route::post('/solicitud/store', [SolicitudController::class, 'store'])->name('empresa.solicitud.store');
    Route::put('/solicitud/update/{id}', [SolicitudController::class, 'update'])->name('empresa.solicitud.update');
    Route::get('/solicitud/delete/{id}', [SolicitudController::class, 'delete'])->name('empresa.solicitud.delete');


    Route::get('/listado-empresas', [EmpresaHomeController::class, 'listCompanies'])->name('empresa.listado-empresas');
    Route::get('/listado-campaign', [EmpresaHomeController::class, 'listCampaign'])->name('empresa.listado-campaign');
});


// Route::get('/landing/empresa', [EmpresaController::class, 'landingEmpresa'])->name('landing.empresa');
// Route::get('/landing/campania', [EmpresaController::class, 'landingCampania'])->name('landing.empresa');



Route::group(['middleware' => ['isauthenticate']], function () {
    Route::get('/campana/landing/{slug}', [EmpresaController::class, 'landingCampania'])->name('landing.campania');
    Route::get('/empresa/landing/{slug}', [EmpresaController::class, 'landingEmpresa'])->name('landing.empresa');
});

Route::get('/api/empresas',[EmpresaController::class, 'apiempresa'])->name('apiempresa');
// Route::fallback(function () {
//     return redirect('/administrador');
// });

