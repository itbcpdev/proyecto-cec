<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call(TablePerfilSeed::class);
        $this->call(TableEmpresasSeed::class);
        $this->call(TableUsuarioSeed::class);
        $this->call(TableEstadoSolicitud::class);
    }
}
