<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('apellido_paterno')->nullable();
            $table->string('apellido_materno')->nullable();
            $table->string('cargo')->nullable();
            $table->integer('genero')->nullable();
            $table->string('celular_contacto')->nullable();
            $table->string('numero_fijo')->nullable();
            $table->string('fecha_nac')->nullable();
            $table->string('foto')->nullable(TRUE);
            $table->string('lugar_residencia')->nullable();
            $table->integer('tipo_de_cargo_id')->nullable(TRUE);
            $table->foreignId('empresa_id')
                ->references('id')
                ->on('empresas')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->foreignId('perfil_id')
                ->references('id')
                ->on('perfiles');
            $table->boolean('flestado')->default(TRUE);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
