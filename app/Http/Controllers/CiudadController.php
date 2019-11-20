<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ciudad;

class CiudadController extends Controller
{
    /**
     * Retorna todas los ciudades registradas
     * @return JSON Objeto con todos los datos de las ciudades registradas
     */
    public function index()
    {
        
        $response = [
            'success' => true,
            'data'    => Ciudad::all(),
            'message' => 'Ciudades recuperadas con exito.',
        ];

        return $response;
    }
}
