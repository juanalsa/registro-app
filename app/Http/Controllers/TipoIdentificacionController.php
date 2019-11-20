<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TipoIdentificacion;

class TipoIdentificacionController extends Controller
{
    /**
     * Retorna todos los tipos de identificacion registrados
     * @return JSON Objeto con todos los datos de los tipos de identificacion registrados
     */
    public function index()
    {
        
        $response = [
            'success' => true,
            'data'    => TipoIdentificacion::all(),
            'message' => 'Tipos de identificacion recuperados con exito.',
        ];

        return $response;
    }
}
