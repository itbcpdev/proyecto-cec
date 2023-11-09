<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sectores extends Model
{
    use HasFactory;

    protected $table = 'sectores';

    public function tipo_sector()
    {
        return $this->belongsTo(TipoSector::class, 'tipo_sector_id');
    }
}
