<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHistorialSolicitudTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('historial_solicitud', function (Blueprint $table) {
            $table->id();
            $table->foreignId('reviewed_by')
                ->references('id')
                ->on('users');
            $table->foreignId('solicitud_id')
                ->references('id')
                ->on('solicitudes');
            $table->foreignId('estado_solicitud_id')
                ->references('id')
                ->on('estado_solicitud');
            $table->text('observacion');
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
        Schema::dropIfExists('historial_solicitud');
    }
}
