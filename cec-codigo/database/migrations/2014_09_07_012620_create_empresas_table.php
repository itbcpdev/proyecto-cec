<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmpresasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('empresas', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->nullable(true);;
            $table->string('nombre');
            $table->string('ruc')->nullable(true);
            $table->string('logo')->nullable(true);
            $table->text('descripcion_empresa')->nullable(true);
            $table->text('descripcion_campania')->nullable(true);
            $table->string('fec_inscrip_cec')->nullable(true);
            $table->string('fec_aniversario_empresa')->nullable(true);
            $table->string('direccion')->nullable(true);
            $table->string('correo')->nullable(true);
            $table->string('rs_twitter')->nullable(true);
            $table->string('rs_youtube')->nullable(true);
            $table->string('rs_facebook')->nullable(true);
            $table->string('rs_instagram')->nullable(true);
            $table->string('rs_linkedin')->nullable(true);
            $table->string('rs_tiktok')->nullable(true);
            $table->string('flyer')->nullable(true);
            $table->string('video')->nullable(true);
            $table->string('embed_video')->nullable(true);
            $table->string('numero_contactos')->nullable(true);
            $table->string('sector_id')->nullable(true);
            $table->boolean('isActive')->default(TRUE);
            $table->boolean('flestado')->default(true);
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
        Schema::dropIfExists('empresas');
    }
}
