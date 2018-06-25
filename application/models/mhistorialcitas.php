<?php 
/**
* 
*/
class Mhistorialcitas extends CI_Model
{
	
 	function __construct()
 	{
 		parent::__construct();
 	}

public function getHistorialcitas($codpac){
	$resultado=$this->db->query("SELECT 
(SELECT doc.nom FROM tb_doctor doc WHERE cita.cod_doc = doc.cod_doc) AS nomdoc,
(SELECT espe.descri FROM tb_especialidad espe WHERE cita.cod_espe = espe.cod_espe) AS espe,
(SELECT area.descri FROM tb_area area WHERE cita.cod_area = area.cod_area) AS area,
(SELECT(SELECT hor.hora FROM tb_hora hor WHERE horar.cod_hora = hor.cod_hora) FROM tb_horario horar WHERE cita.cod_hor = horar.cod_hor) AS hora,
cita.fecha
FROM tb_cita cita
WHERE cita.cod_pac = '".$codpac."'");
	return $resultado->result();


}

}?>