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
	$email = $this->input->post('email');
	$pass = $this->input->post('pass');

	$res = $this->mlogin->ingresar($email,$pass);

	if ($res == 1) {
		$this->load->view('layout/header');
		$this->load->view('layout/menupac');
		$this->load->view('vdashboard');
		$this->load->view('layout/footer');
	} else {
		$data['mensaje'] ="Email o Contraseña Erronea";
		$this->load->view('vlogin',$data);
	}
	
}
}?>