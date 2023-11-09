<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TablePerfilSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $perfiles = [
            [
                'nombre' => 'Cec',
            ],
            [
                'nombre' => 'Empresa',
            ],
            [
                'nombre' => 'Contacto Comercial',
            ],
            [
                'nombre' => 'Contacto Empresa',
            ],
        ];

        foreach ($perfiles as $perfil) {
            DB::table('perfiles')->insert([
                'nombre' => $perfil['nombre'],
            ]);
        }
    }
}
