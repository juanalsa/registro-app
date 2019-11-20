<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Estudiante extends Model
{
    // Nombre de la tabla
    protected $table='tbl_estudiantes';

    // Clave primaria en la tabla
    protected $primaryKey = 'id';
    
    // Atributos que se pueden asignar de manera masiva.
	protected $fillable = array('nombre','apellido','email','telefono','tipo_identificacion_id','nro_identificacion','ciudad_ncto_id');

    // Campos que no se quieren devolver en las consultas
    protected $hidden = ['created_at','updated_at']; 

    // Relación de Estudiante con TipoIdentificacion:
	public function tipoIdentificacion()
	{
		// 1 estudiante tiene un TipoIdentificacion.
		return $this->belongsTo('App\TipoIdentificacion');
	}

	// Relación de Estudiante con Ciudad:
	public function ciudad()
	{
		// 1 estudiante tiene una Ciudad.
		return $this->belongsTo('App\Ciudad');
	}
}
