<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Solicitud extends Model
{
    use HasFactory;

    protected $table = 'solicitudes';

    public function estado()
    {
        return $this->belongsTo(EstadoSolicitud::class, 'estado_solicitud_id');
    }

}
