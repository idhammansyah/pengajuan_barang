<?php

/** @var \CodeIgniter\Router\RouteCollection $routes */
use App\Controllers\Officer\Manager_Controller;

$routes->get('dashboard', 'Manager_Controller::index', ['as' => 'manager_dashboard']);

# purchasing data
$routes->get('view-purchase', 'Manager_Controller::v_purchasing', ['as' => 'view_purchasingss']);

$routes->post('save-purchasing', 'Manager_Controller::save_barang', ['as' => 'save_barangss']);

$routes->get('approved-data-purchasing/(:any)', 'Manager_Controller::approve_barang/$1', ['as' => 'approved_purchase_manager']);

$routes->post('submit-edit-purchasing/(:any)', 'Manager_Controller::submit_changes/$1', ['as' => 'save_edit_barang']);

$routes->get('delete-purchasing/(:any)', 'Manager_Controller::delete_barang/$1', ['as' => 'delete_barang']);

$routes->post('submit-reason-rejecteds/(:any)', 'Manager_Controller::submit_reason_manager/$1', ['as' => 'submit_reason_manager']);