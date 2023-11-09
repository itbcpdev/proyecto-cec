<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TableUsuarioSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $usuarios = [
            [
                'name' => 'Admin',
                'email' => 'admin@cec.com',
                'apellido_paterno' => 'Rojas',
                'apellido_materno' => 'Espinoza',
                'genero' => 1,
                'empresa_id' => '1',
                'password' => bcrypt('password'),
                'perfil_id' => 1,
            ],
            [
                'name' => 'David',
                'email' => 'davidsrojasll@gmail.com',
                'apellido_paterno' => 'Rojas',
                'apellido_materno' => 'Espinoza',
                'genero' => 1,
                'empresa_id' => '1',
                'password' => bcrypt('secret'),
                'perfil_id' => 1,
            ],
        ];

        foreach ($usuarios as $usuario) {
            DB::table('users')->insert([
                'name' => $usuario['name'],
                'email' => $usuario['email'],
                'apellido_paterno' => $usuario['apellido_paterno'],
                'apellido_materno' => $usuario['apellido_materno'],
                'genero' => $usuario['genero'],
                'empresa_id' => $usuario['empresa_id'],
                'password' => $usuario['password'],
                'perfil_id' => $usuario['perfil_id'],
            ]);
        }
    }
}
