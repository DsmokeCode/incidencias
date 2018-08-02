<?php 
/**
* 
*/
class Mdashboard extends CI_Model
{
	
 	function __construct()
 	{
 		parent::__construct();
 	}

public function getDashboard($id_usuario){
	$resultado=$this->db->query("SELECT das.id_dashboard,
(SELECT (select tinci.descripcion from tipo_incidencia tinci where tinci.id_tipo_incidencia = inci.id_tipo_incidencia) FROM incidencia inci WHERE inci.id_incidencia = das.id_incidencia) AS tipo_inci,
(SELECT inci.descripcion FROM incidencia inci WHERE inci.id_incidencia = das.id_incidencia) AS descripcion,
(SELECT inci.fecha_reg FROM incidencia inci WHERE inci.id_incidencia = das.id_incidencia) AS fechareg,
(SELECT inci.severidad FROM incidencia inci WHERE inci.id_incidencia = das.id_incidencia) AS severidad
FROM dashboard das, incidencia inci2 where inci2.estado = 1 and das.id_usuario = '".$id_usuario."'");
	return $resultado->result();


}

public function upHistoria($param){
	$campos = array(
		'id_dashboard' => $param['iddashboard'],
		'descripcion' => $param['observacion'],
		'fecha_reg' => $param['fechareg'],
		'estado' => $param['estado']
	);
	$this->db->insert('historial_dashboard',$campos);
	
	return 1;
}

}?>
