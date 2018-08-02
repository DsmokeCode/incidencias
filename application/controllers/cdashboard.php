<?php 
/**
 * 
 */
 class Cdashboard extends CI_Controller
 {
 	
	function __construct()
	{
		parent::__construct();
		$this->load->model('mdashboard');

	}

public function index(){
		$this->load->view('layout/header');
		$this->load->view('layout/menupac');
		$this->load->view('vdashboard');
		$this->load->view('layout/footer');
}
public function getDashboard(){
	$id_usuario= $this->session->userdata('s_id_usuario');
	$resultado = $this->mdashboard->getDashboard($id_usuario);

	echo json_encode($resultado);

}

	public function upHistoria(){
		$param['iddashboard'] = $this->input->post('modaliddashboard');
		$param['fechareg'] = $this->input->post('datepicker');
		$param['observacion'] = $this->input->post('modalobservacion');
		$param['estado'] = $this->input->post('modalestado');

		echo $this->mdashboard->upHistoria($param);

	}

}?>