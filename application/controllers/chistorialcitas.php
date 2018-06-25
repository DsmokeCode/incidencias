<?php 
/**
 * 
 */
 class Chistorialcitas extends CI_Controller
 {
 	
	function __construct()
	{
		parent::__construct();
		$this->load->model('mhistorialcitas');
		$this->load->library('encrypt');

	}

public function index(){
		$this->load->view('layout/header');
		$this->load->view('layout/menupac');
		$this->load->view('vhistorialcitas');
		$this->load->view('layout/footer');
}
public function getHistorialcitas(){
	$codpac= $this->session->userdata('s_cod_pac');
	$resultado = $this->mhistorialcitas->getHistorialcitas($codpac);

	echo json_encode($resultado);

}

}?>