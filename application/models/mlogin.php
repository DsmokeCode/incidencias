<?php
/**
* 
*/
class Mlogin extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
public function ingresar($correo,$contra){
	$this->db->select('cod_pac, nom, ape_p, ape_m, correo');
	$this->db->from('tb_paciente');
	$this->db->where('correo', $correo);
	$this->db->where('contra', $contra);
	$resultado = $this->db->get();

	if ($resultado->num_rows()==1) {
		$r = $resultado->row();

		$s_usuario = array(
			's_cod_pac' => $r->cod_pac,
			's_nombre' => $r->nom.", ".$r->ape_p." ".$r->ape_m,
			's_correo' => $r->correo );
		$this->session->set_userdata($s_usuario);
		return 1;
	}else{
		return 0;
	}
}


}?>