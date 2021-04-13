<?php

class University extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('University_model', 'university');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['judul'] = 'Daftar Universitas';
        $data['universitas'] = $this->university->getAllUniversity();

        if ($this->input->post('keyword')) {
            $data['universitas'] = $this->university->getUniversityBySearching();
        }

        $this->load->view('layout/header', $data);
        $this->load->view('university/index', $data);
        $this->load->view('layout/footer');
    }

    public function add()
    {
        $data['judul'] = 'Form Tambah Data Universitas';

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('website', 'Website', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('layout/header', $data);
            $this->load->view('university/add');
            $this->load->view('layout/footer');
        } else {
            $this->university->tambahDataUniversitas();
            $this->session->set_flashdata('flash', 'ditambahkan');
            redirect('university');
        }
    }

    public function detail($id)
    {
        $data['judul'] = 'Detail Universitas';
        $data['universitas'] = $this->university->getUniversityById($id);
        $this->load->view('layout/header', $data);
        $this->load->view('university/detail', $data);
        $this->load->view('layout/footer');
    }

    public function edit($id)
    {
        $data['judul'] = 'Form Ubah Data Universitas';
        $data['universitas'] = $this->university->getUniversityById($id);

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('website', 'Website', 'required');
        if ($this->form_validation->run() == false) {
            $this->load->view('layout/header', $data);
            $this->load->view('university/edit');
            $this->load->view('layout/footer');
        } else {
            $this->university->ubahDataUniversitas();
            $this->session->set_flashdata('flash', 'diubah');
            redirect('university');
        }
    }

    public function delete($id)
    {
        $this->university->hapusUniversitas($id);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect('university');
    }
}
