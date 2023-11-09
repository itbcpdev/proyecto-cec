<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TableEmpresasSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $empresas = [
            [
                'nombre' => 'CEC',
            ],
        ];

        foreach ($empresas as $empresa) {
            DB::table('empresas')->insert([
                'nombre' => $empresa['nombre'],
            ]);
        }
    }
}
