<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout', 'bienvenido');
    }

    public function showLoginForm()
    {
        return view('Administrador.Auth.Login.index');
    }

    public function login(Request $request)
    {
        $this->validateLogin($request);

        // If the class is using the ThrottlesLogins trait, we can automatically throttle
        // the login attempts for this application. We'll key this by the username and
        // the IP address of the client making these requests into this application.
        if (
            method_exists($this, 'hasTooManyLoginAttempts') &&
            $this->hasTooManyLoginAttempts($request)
        ) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }

        if ($this->attemptLogin($request)) {
            if ($request->hasSession()) {
                $request->session()->put('auth.password_confirmed_at', time());
            }

            return $this->sendLoginResponse($request);
        }

        // If the login attempt was unsuccessful we will increment the number of attempts
        // to login and redirect the user back to the login form. Of course, when this
        // user surpasses their maximum number of attempts they will get locked out.
        $this->incrementLoginAttempts($request);

        return $this->sendFailedLoginResponse($request);
    }

    public function username()
    {
        return 'email';
    }

    protected function validateLogin(Request $request)
    {
        $request->validate([
            $this->username() => 'required|string',
            'password' => 'required|string',
        ]);
    }

    protected function authenticated(Request $request, $user)
    {
        if ($user->flestado == 1) {
            if ($user->empresa->isActive != 1) { 
                $this->guard()->logout();
                $request->session()->invalidate();
                return redirect('/login')->withErrors(['status' => '¡Lo sentimos su Empresa ha sido desactivada, para volver a Activarla comuniquese con el CEC.']);
            }
            $user->setSession($user);
        } else {
            $this->guard()->logout();
            $request->session()->invalidate();
            return redirect('/login')->withErrors(['status' => '¡Lo sentimos! Credenciales no válidas.']);
        }
    }

    public function bienvenido()
    {
        
        if (session()->get('perfil_id') == 1) {

            #Mandamos al dashboard al administrador
            return redirect()
                ->route('admin.empresa.index');
        } else if (session()->get('perfil_id') == 2) {
           return  redirect()
           ->route('empresa.listado-campaign');
        } else if ( session()->get('perfil_id') == 3 || session()->get('perfil_id') == 4) {
            return redirect()
            ->route('empresa.usuarios.index');
        }
        return redirect()
                ->route('admin.empresa.index');
    }
}
