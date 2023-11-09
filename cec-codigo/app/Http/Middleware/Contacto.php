<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class Contacto
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
        if ($this->permiso()) {
            return $next($request);
        }

        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/login')->with('status', '¿Te perdiste? Volvimos al inicio, puedes seguir navegando.');
    }

    public function permiso()
    {
        return session()->get('perfil_id') == 3;
    }
}
