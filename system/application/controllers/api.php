<?php 
class Api extends CI_Controller {	
	
	public function __construct() {
        parent::__construct();
        $this->load->model('authentication_model');
    }
	public function hash($password){
       $hash = password_hash($password,PASSWORD_DEFAULT);
       return $hash;
    }
	
	public function authentication() {
		$this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean');
		
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$data = array(
				'username' => $username,
				'password' => $password,
			);
		$login = $this->security->xss_clean($data);
		$this->authentication_model->authentication($login);
	}
	public function authentication_register() {
		$this->form_validation->set_rules('referralcode', 'Referral Code', 'trim|required|xss_clean');
		$this->form_validation->set_rules('firstname', 'First Name', 'trim|required|xss_clean');
		$this->form_validation->set_rules('lastname', 'Last Name', 'trim|required|xss_clean');
		$this->form_validation->set_rules('emailaddress', 'Email Address', 'trim|required|xss_clean');
		$this->form_validation->set_rules('contactnumber', 'Contact Number', 'trim|required|xss_clean');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean');
		
		$referralcode  = $this->input->post('referralcode');
		$firstname     = $this->input->post('firstname');
		$lastname      = $this->input->post('lastname');
		$emailaddress  = $this->input->post('emailaddress');
		$contactnumber = $this->input->post('contactnumber');
		$password      = $this->input->post('password');
		$data = array(
				'referralcode'  => $referralcode,
				'firstname'     => $firstname,
				'lastname'      => $lastname,
				'emailaddress'  => $emailaddress,
				'contactnumber' => $contactnumber,
				'password'      => $this->hash($password),
				'password1'     => $password,
			);
		$register = $this->security->xss_clean($data);
		$this->authentication_model->authentication_register($register);
	}
	public function authentication_facebook() {
		$username = $this->input->post('emailaddress');
		$data = array(
				'emailaddress' => $username,
			);
		$login = $this->security->xss_clean($data);
		echo $this->authentication_model->authentication_facebook($login);
	}
	public function authentication_register_facebook() {
		echo $this->authentication_model->authentication_register_facebook($_POST);
	}
}