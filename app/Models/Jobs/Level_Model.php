<?php

namespace App\Models\Jobs;

use CodeIgniter\Model;

class Level_Model extends Model
{
  protected $table            = 'm_level';
  protected $position         = 'm_position';
  protected $jobs             = 'jobs';
  protected $contract         = 'm_contract';
  protected $company          = 'm_company';
  protected $location         = 'm_location';
  protected $department       = 'm_department';

  protected $primaryKey       = 'id_level';
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