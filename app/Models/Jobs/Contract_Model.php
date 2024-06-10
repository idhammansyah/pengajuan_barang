<?php

namespace App\Models\Jobs;

use CodeIgniter\Model;

class Contract_Model extends Model
{
  protected $table            = 'm_contract';
  protected $location         = 'm_location';
  protected $level            = 'm_level';
  protected $position         = 'm_position';
  protected $jobs             = 'jobs';
  protected $company          = 'm_company';
  protected $department       = 'm_department';

  protected $primaryKey       = 'id_contract';
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