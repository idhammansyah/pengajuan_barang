<?php

namespace App\Models\Jobs;

use CodeIgniter\Model;

class Location_Model extends Model
{
  protected $table            = 'm_location';
  protected $level            = 'm_level';
  protected $position         = 'm_position';
  protected $jobs             = 'jobs';
  protected $contract         = 'm_contract';
  protected $company          = 'm_company';
  protected $department       = 'm_department';

  protected $primaryKey       = 'id_location';
  protected $allowedFields      = [];

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