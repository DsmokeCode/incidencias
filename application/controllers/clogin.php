<?php
/**
 * 
 */
class Clogin extends CI_Controller
{
 	
	function __construct()
	{
		parent::__construct();
		$this->load->model('mlogin');
	}

public function index(){
	$data['mensaje'] ="";
	$this->load->view('vlogin',$data);
}
public function ingresar(){
	$correo = $this->input->post('correo');
	$contra = $this->input->post('contra');

	$res = $this->mlogin->ingresar($correo,$contra);

	if ($res == 1) {
		$this->load->view('layout/header');
		$this->load->view('layout/menupac');
		$this->load->view('vhistorialcitas');
		$this->load->view('layout/footer');
	} else {
		$data['mensaje'] ="Correo o Contraseña Erronea";
		$this->load->view('vlogin',$data);
	}
	
}
}?>