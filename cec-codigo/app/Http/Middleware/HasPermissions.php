<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class HasPermissions
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if ( session()->get('perfil_id') == 2 ) {
            return $next($request);
        } elseif(session()->get('perfil_id') == 3) {
            if($request->route()->getName() == 'empresa.perfil.index'
            || $request->route()->getName() == 'empresa.perfil.update'
            || $request->route()->getName() == 'empresa.usuarios.index'
            || $request->route()->getName() == 'empresa.solicitud.index'
            || $request->route()->getName() == 'empresa.solicitud.create'
            || $request->route()->getName() == 'empresa.solicitud.store') {
                return $next($request);
            } else {
                return redirect('/empresa');
            }
        } else {
            if($request->route()->getName() == 'empresa.perfil.index'
            || $request->route()->getName() == 'empresa.usuarios.index'
            || $request->route()->getName() == 'empresa.solicitud.index'
            || $request->route()->getName() == 'empresa.solicitud.create') {
                return $next($request);
            } else {
                return redirect('/empresa');
            }
        }

    }
}
