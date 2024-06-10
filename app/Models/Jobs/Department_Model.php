<?php

namespace App\Models\Jobs;

use CodeIgniter\Model;

class Department_Model extends Model
{
  protected $table            = 'm_department';
  protected $jobs             = 'jobs';
  protected $contract         = 'm_contract';
  protected $company          = 'm_company';
  protected $level            = 'm_level';
  protected $location         = 'm_location';
  protected $position         = 'm_position';

  protected $primaryKey       = 'id_dept';
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