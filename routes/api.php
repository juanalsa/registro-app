<?php

use Illuminate\Http\Request;
use App\Estudiante;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('estudiantes', 'EstudianteController@index');
Route::get('estudiantes/{estudiante}', 'EstudianteController@show');
Route::post('estudiantes', 'EstudianteController@store');
Route::put('estudiantes/{estudiante}', 'EstudianteController@update');
Route::delete('estudiantes/{estudiante}', 'EstudianteController@delete');

Route::get('ciudades', 'CiudadController@index');

Route::get('tiposidentificacion', 'TipoIdentificacionController@index');