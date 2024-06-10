<?php

/** @var \CodeIgniter\Router\RouteCollection $routes */
use App\Controllers\Officer\Finance_Controller;

$routes->get('dashboard', 'Finance_Controller::index', ['as' => 'finance_dashboard']);

# purchasing data
$routes->get('view-purchasing-data', 'Finance_Controller::v_purchasing', ['as' => 'view_purchasing_data']);

$routes->post('save-purchasing', 'Finance_Controller::save_barang', ['as' => 'save_purchasing_data']);

$routes->get('approved-finance-purchasing/(:any)', 'Finance_Controller::approve_barang/$1', ['as' => 'approved_purchase_finance']);

$routes->post('submit-edit-purchasing/(:any)', 'Finance_Controller::submit_changes/$1', ['as' => 'save_edit_barang']);

$routes->get('delete-purchasing/(:any)', 'Finance_Controller::delete_barang/$1', ['as' => 'delete_barang']);

$routes->post('submit-reason-finance-rejecteds/(:any)', 'Finance_Controller::submit_reason_finance/$1', ['as' => 'submit_reason_finance']);