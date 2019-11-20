<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEstudiantesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_estudiantes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre');
            $table->string('apellido');
            $table->string('email');
            $table->string('telefono');
            
            $table->integer('tipo_identificacion_id')->unsigned();
            $table->foreign('tipo_identificacion_id')->references('id')->on('tbl_tipos_identificacion');

            $table->string('nro_identificacion', 10);

            $table->integer('ciudad_ncto_id')->unsigned();
            $table->foreign('ciudad_ncto_id')->references('id')->on('tbl_ciudades');            

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
        Schema::dropIfExists('tbl_estudiantes');
    }
}
