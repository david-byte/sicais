<?php
defined('BASEPATH') or exit('Ação não permitida');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        /*if (!$this->ion_auth->logged_in())
        {
          $this->session->set_flashdata('info', 'Sua sessão expirou!');
          redirect('login');
        }*/
    }

    public function index()
    {
        $data = array(
            'title' => 'Home'
        );

        $this->load->view('layout/header', $data);
        $this->load->view('layout/sidebar');
        $this->load->view('layout/navbar');
        $this->load->view('home/index');
        $this->load->view('layout/footer');
    }
}
