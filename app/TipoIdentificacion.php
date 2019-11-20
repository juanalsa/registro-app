<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoIdentificacion extends Model
{
    // Nombre de la tabla
    protected $table='tbl_tipos_identificacion';

    // Clave primaria en la tabla
    protected $primaryKey = 'id';
    
    // Atributos que se pueden asignar de manera masiva.
	protected $fillable = array('nombre');

    // Campos que no se quieren devolver en las consultas
    protected $hidden = ['created_at','updated_at']; 

    // Relación de TipoIdentificacion con Estudiante:
	public function estudiantes()
	{
		// 1 tipo de identificación esta asociado a muchos Estudiante.
		return $this->hasMany('App\Estudiante');
	}
}
