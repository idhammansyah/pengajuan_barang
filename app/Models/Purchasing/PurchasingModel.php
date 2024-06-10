<?php

namespace App\Models\Purchasing;

use CodeIgniter\Model;

class PurchasingModel extends Model
{
  protected $table          = 'data_barang';
  protected $primaryKey     = 'id_barang';
  protected $allowedFields  = [];

  public function __construct()
  {
    parent::__construct();
    $this->allowedFields = $this->getAllowedFields();
  }

  function getAllowedFields()
  {
    $fields = $this->db->getFieldNames($this->table);
    return $fields;
  }

  
}