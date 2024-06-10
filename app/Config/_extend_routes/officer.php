<?php

/** @var \CodeIgniter\Router\RouteCollection $routes */
use App\Controllers\Officer\Officer_Controller;

$routes->get('dashboard', 'Officer_Controller::index', ['as' => 'officer_dashboard']);

# purchasing data
$routes->get('view-purchasings', 'Officer_Controller::v_purchasing', ['as' => 'view_purchasings']);

$routes->post('save-purchasing', 'Officer_Controller::save_barang', ['as' => 'save_barangs']);

$routes->get('edit-data-purchasing/(:any)', 'Officer_Controller::v_edit_barang/$1', ['as' => 'edit_data_purchasings']);

$routes->post('submit-edit-purchasing/(:any)', 'Officer_Controller::submit_changes/$1', ['as' => 'save_edit_barangs']);

$routes->get('delete-purchasing/(:any)', 'Officer_Controller::delete_barang/$1', ['as' => 'delete_barangs']);