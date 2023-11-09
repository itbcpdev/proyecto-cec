<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TableEstadoSolicitud extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $estado_solicitudes = [
            [
                'nombre' => 'Pendiente',
            ],
            [
                'nombre' => 'Revisado',
            ],
            [
                'nombre' => 'Procesando',
            ],
            [
                'nombre' => 'Finalizado',
            ],
        ];

        foreach ($estado_solicitudes as $estado_solicitud) {
            DB::table('estado_solicitud')->insert([
                'nombre' => $estado_solicitud['nombre'],
            ]);
        }
    }
}
