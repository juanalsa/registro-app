<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ciudad extends Model
{
    // Nombre de la tabla
    protected $table='tbl_ciudades';

    // Clave primaria en la tabla
    protected $primaryKey = 'id';
    
    // Atributos que se pueden asignar de manera masiva.
	protected $fillable = array('nombre');

    // Campos que no se quieren devolver en las consultas
    protected $hidden = ['created_at','updated_at']; 

    // Relación de Ciudad con Estudiante:
	public function estudiantes()
	{
		// 1 ciudad esta asociado a muchos Estudiante.
		return $this->hasMany('App\Estudiante');
	}
}
