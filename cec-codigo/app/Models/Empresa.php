<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Empresa extends Model
{
    use HasFactory;
    use Sluggable;

    protected $fillable =[
        'slug',
        'nombre',
        'descripcion_empresa',
        'descripcion_campania',
        'fec_inscrip_cec',
        'fec_aniversario_empresa'
    ];

    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'nombre'
            ]
        ];
    }

    public function usuarios()
    {
        return $this->hasMany(User::class, 'empresa_id');
    }
}
