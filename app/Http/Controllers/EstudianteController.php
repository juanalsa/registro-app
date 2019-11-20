<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Estudiante;

class EstudianteController extends Controller
{
    /**
     * Retorna todos los estudiantes registrados
     * @return JSON Objeto con todos los datos de los estudiantes registrados
     */
    public function index()
    {

        $estudiantes = DB::table('tbl_estudiantes')
            ->join('tbl_tipos_identificacion', 'tbl_tipos_identificacion.id', '=', 'tbl_estudiantes.tipo_identificacion_id')
            ->join('tbl_ciudades', 'tbl_ciudades.id', '=', 'tbl_estudiantes.ciudad_ncto_id')
            ->select('tbl_estudiantes.id', 
                'tbl_estudiantes.nombre',
                'tbl_estudiantes.apellido',
                'tbl_estudiantes.email',
                'tbl_estudiantes.telefono',
                'tbl_tipos_identificacion.abreviatura AS abr_identificacion', 
                'tbl_estudiantes.nro_identificacion',
                'tbl_ciudades.nombre AS ciudad_ncto')
            ->get();

        $response = [
            'success' => true,
            'data'    => $estudiantes,
            'message' => 'Estudiantes recuperados con exito.',
        ];

        return $response;
    }
 
    /**
     * Retorna el estudiante con un ID específico
     * @param  Estudiante $estudiante Estudiante a consultar
     * @return JSON                 Objeto con los datos del estudiante consultado
     */
    public function show(Estudiante $estudiante)
    {
        if (is_null($estudiante)) {
            $response = [
                'success' => false,
                'data'    => [],
                'message' => 'Estudiante no encontrado.'
            ];

            return response()->json($response, 404);
        }

        $estudianteRst = DB::table('tbl_estudiantes')
            ->join('tbl_tipos_identificacion', 'tbl_tipos_identificacion.id', '=', 'tbl_estudiantes.tipo_identificacion_id')
            ->join('tbl_ciudades', 'tbl_ciudades.id', '=', 'tbl_estudiantes.ciudad_ncto_id')
            ->select('tbl_estudiantes.id', 
                'tbl_estudiantes.nombre',
                'tbl_estudiantes.apellido',
                'tbl_estudiantes.email',
                'tbl_estudiantes.telefono',
                'tbl_tipos_identificacion.abreviatura AS abr_identificacion', 
                'tbl_estudiantes.nro_identificacion',
                'tbl_ciudades.nombre AS ciudad_ncto')
            ->where('tbl_estudiantes.id', '=', $estudiante->id)
            ->get();

        $response = [
            'success' => true,
            'data'    => $estudianteRst,
            'message' => 'Estudiante recuperado con exito.',
        ];

        return response()->json($response, 201);
    }

    /**
     * Realiza el registro de un estudiante
     * @param  Request $request Request con los datos de la petición
     * @return JSON           Objeto con los datos del estudiante registrado
     */
    public function store(Request $request)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'nombre' => 'required',
            'apellido' => 'required',
            'email' => 'required|email',
            'telefono' => 'required',
            'tipo_identificacion_id' => 'required',
            'nro_identificacion' => 'required',
            'ciudad_ncto_id' => 'required'
        ]);

        if ($validator->fails()) {
            $response = [
                'success' => false,
                'data'    => $validator->errors(),
                'message' => 'Error de validacion.'
            ];

            return response()->json($response, 404);
        }


        $estudiante = Estudiante::create($input);

        $response = [
            'success' => true,
            'data'    => $estudiante,   // $estudiante->toArray()
            'message' => 'Estudiante registrado con exito.'
        ];

        return response()->json($response, 201);
    }

    /**
     * Realiza la actualización de la información de un estudiante
     * @param  Request    $request    Request con los datos del estudiante a actualizar
     * @param  Estudiante $estudiante Estudiante a actualizar
     * @return JSON                 Objeto con los datos del estudiante actualizado
     */
    public function update(Request $request, Estudiante $estudiante)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'nombre' => 'required',
            'apellido' => 'required',
            'email' => 'required|email',
            'telefono' => 'required',
            'tipo_identificacion_id' => 'required',
            'nro_identificacion' => 'required',
            'ciudad_ncto_id' => 'required'
        ]);

        if ($validator->fails()) {
            $response = [
                'success' => false,
                'data'    => $validator->errors(),
                'message' => 'Error de validacion.'
            ];

            return response()->json($response, 404);
        }

        $estudiante->update($input);
        
        $response = [
            'success' => true,
            'data'    => $estudiante, 
            'message' => 'Estudiante actualizado con exito.'
        ];

        return response()->json($response, 200);
    }

    /**
     * Elimina el registro de un estudiante
     * @param  Estudiante $estudiante Estudiante a eliminar
     * @return JSON                 Objeto nulo con el código de respuesta de la operación
     */
    public function delete(Estudiante $estudiante)
    {
        $estudiante->delete();
        
        $response = [
            'success' => true,
            'data'    => $estudiante, 
            'message' => 'Estudiante eliminado con exito.'
        ];

        return response()->json($response, 204);
    }
}
