<?php

namespace App\Controllers\Finance;

use App\Controllers\BaseController;
use CodeIgniter\Controller;

class Finance_Controller extends BaseController
{
  protected $views;
  public function __construct()
  {
    $this->users = model('App\Models\Authentication\User_Model');
    $this->log_activity = model('App\Models\Authentication\Log_Model');
    $this->menu = model('App\Models\Authentication\Menu_Model');
    $this->sub_menu = model('App\Models\Authentication\SubMenu_Model');
    $this->role = model('App\Models\Authentication\Role_Model');
    $this->calendar_events = model('App\Models\Events\Calendar_Model');
    $this->materials = model('App\Models\Materi\Materi_Model');

    $this->company = model('App\Models\Jobs\Company_Model');
    $this->department = model('App\Models\Jobs\Department_Model');
    $this->position = model('App\Models\Jobs\Position_Model');
    $this->level = model('App\Models\Jobs\Level_Model');
    $this->location = model('App\Models\Jobs\Location_Model');
    $this->contract = model('App\Models\Jobs\Contract_Model');
    $this->jobs = model('App\Models\Jobs\Job_Model');

    $this->purchasing = model('App\Models\Purchasing\PurchasingModel');

    $this->session = \Config\Services::session();
    $this->validation = \Config\Services::validation();
    
    $this->views = 'finance';
  }

  public function index()
  {

    $data = [
      'title'           => "Dashboard",
      'breadcrumb'      => $this->breadcrumb,
      'activities_log'  => $this->log_activity->view_all()
    ];

    return view($this->views.'/v_dashboard', $data);
  }

  public function v_purchasing()
  {
    $data = [
      'title'       => 'View Purchasing',
      'purchase'    => $this->purchasing->where('deleted', 0)->findAll()
    ];

    return view($this->views.'/v_purchasing', $data);
  }

  public function v_edit_barang($id)
  {
    $data = [
      'title'     => "Edit",
      'purchase'  => $this->purchasing->find($id)
    ];
    
    return view($this->views.'/v_edit_barang', $data);
  }

  public function save_barang()
  {
    $request = $this->request->getPost();
    $input = [
      'nama_barang'       => $request['nama_barang'],
      'jenis_barang'      => $request['jenis_barang'],
      'merk_barang'       => $request['merk_barang'],
      'harga'             => $request['harga'],
      'keperluan_barang'  => $request['keperluan_barang'],
      'created_by'        => $this->session->get('user_data')['username'],
      'created_at'        => date('Y-m-d H:i:s'),
      'status_approval'   => "Submitted",
      'status_approval_finance'   => "Submitted",
      'deleted'           => 0
    ];

    $save = $this->purchasing->save($input);
		if($save) 
    {
      $response = "<i class='bi bi-check2-circle'></i>&nbsp; Save success!";
      $data = ['status' => $response];
      return $this->response->setJSON($data);
    }
    else
    {
      $response = "<i class='bi bi-x'></i>&nbsp; Save failed!";
      $data = ['status' => $response];
      return $this->response->setJSON($data);
    }
  }

  public function submit_changes($id)
  {
    $input =[
      'nama_barang' => $this->request->getVar('nama_barang'),
      'jenis_barang' => $this->request->getVar('jenis_barang'),
      'merk_barang' => $this->request->getVar('merk_barang'),
      'harga' => $this->request->getVar('harga'),
      'keperluan_barang' => $this->request->getVar('keperluan_barang'),
      'updated_by'  => $this->session->get('user_data')['username'],
      'updated_at'  => date('Y-m-d H:i:s')
    ];
    if($this->purchasing->update($id, $input)) {
      $response = "Edit Data Success!";
      return redirect()->route('view_purchasings')->with('message', $response);
    } else {
      $response = "Failed Update Data!";
      return redirect()->route('view_purchasings')->with('error', $response);
    }
  }

  public function delete_barang($id)
  {
    $input = [
      'deleted' => 1,
      'updated_by'  => $this->session->get('user_data')['username'],
      'updated_at'  => date('Y-m-d H:i:s')
    ];
    if($this->purchasing->update($id, $input)) {
      $response = "Delete Success!";
      return redirect()->route('view_purchasings')->with('message', $response);
    } else {
      $response = "Failed Delete Data!";
      return redirect()->route('view_purchasings')->with('error', $response);
    }
  }

  public function approve_barang($id)
  {
    $gambar = $this->request->getFile('uploads');
    $name_of_files = $gambar->getName();
    $gambar->move('upload/bukti_tf', $name_of_files);
    $input = [
      'file_upload_name'  => $name_of_files,
      'status_approval_finance' => "Accepted",
      'approval_finance_at'  => date('Y-m-d H:i:s'),
      'approval_finance_by'  => $this->session->get('user_data')['username'],
    ];
    if($this->purchasing->update($id, $input)) {
      $response = "Approved Success!";
      return redirect()->route('view_purchasing_data')->with('message', $response);
    } else {
      $response = "Failed Approved Data!";
      return redirect()->route('view_purchasing_data')->with('error', $response);
    }
  }

  public function submit_reason_finance($id)
  {
    $input =[
      'status_approval_finance' => "Rejected",
      'reason_rejected_finance' => $this->request->getVar('alasan'),
      'approval_finance_by'  => $this->session->get('user_data')['username'],
      'approval_finance_at'  => date('Y-m-d H:i:s')
    ];

    if($this->purchasing->update($id, $input)) {
      $response = "Updated Success!";
      return redirect()->route('view_purchasing_data')->with('message', $response);
    } else {
      $response = "Failed Update Data!";
      return redirect()->route('view_purchasing_data')->with('error', $response);
    }
  }
}