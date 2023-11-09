<?php

namespace App\Models;

use App\Models\Perfiles;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Facades\Session;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function setSession($user)
    {
        if ($user->flestado == 1) {
            Session::put(
                [
                    'usuario_id' => $this->id,
                    'email'     => $this->email,
                    'name'    => $this->name,
                    'perfil_id'  => $this->perfiles->id,
                ]
            );
        }
    }

    public function perfiles()
    {
        return $this->belongsTo(Perfiles::class, 'perfil_id');
    }

    public function empresa()
    {
        return $this->belongsTo(Empresa::class, 'empresa_id');
    }

    public function tipocargo()
    {
        return $this->belongsTo(TipoCargo::class, 'tipo_de_cargo_id');
    }

    public function getNombreCargoFormattedAttribute()
    {
        $nombreCargo = '';

        if (empty($this->name)) {
            return $nombreCargo;
        }
        if (!empty($this->name)) {
            $nombreCargo .= $this->name . " " . $this->apellido_paterno . " " . $this->apellido_materno;
        }

        if (!empty($this->cargo)) {
            if (!empty($nombreCargo)) {
                $nombreCargo .= ' - ';
            }
            $nombreCargo .= $this->cargo;
        }

        return $nombreCargo;
    }
}
