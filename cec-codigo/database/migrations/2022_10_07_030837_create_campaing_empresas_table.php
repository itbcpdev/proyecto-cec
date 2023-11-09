<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCampaingEmpresasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('campaing_empresas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('campaign_id')
                ->references('id')
                ->on('campaigns');
            $table->foreignId('empresa_id')
                ->references('id')
                ->on('empresas');
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
        Schema::dropIfExists('campaing_empresas');
    }
}
