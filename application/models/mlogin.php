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
public function ingresar($email,$pass){
	$this->db->select('id_usuario, email, nombres, ape_p, ape_m, id_tipo_persona, dni');
	$this->db->from('usuario');
	$this->db->where('email', $email);
	$this->db->where('pass', $pass);
	$resultado = $this->db->get();

	if ($resultado->num_rows()==1) {
		$r = $resultado->row();

		$s_usuario = array(
			's_id_usuario' => $r->id_usuario,
			's_email' => $r->email,
			's_nombre' => $r->nombres.", ".$r->ape_p." ".$r->ape_m,
			's_dni' => $r->dni,
			's_id_tipo_persona' => $r->id_tipo_persona );
		$this->session->set_userdata($s_usuario);
		return 1;
	}else{
		return 0;
	}
}


}?>