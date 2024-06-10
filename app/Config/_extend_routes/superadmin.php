<?php

/** @var \CodeIgniter\Router\RouteCollection $routes */
use App\Controllers\SuperAdmin\Superadmin_Controller;
use App\Controllers\SuperAdmin\Superadmin_action_Controller;

$routes->get('dashboard', 'Superadmin_Controller::index', ['as' => 'superadmin_dashboard']);

$routes->post('data-tables', 'Superadmin_action_Controller::datatables_users_dashboard', ['as' => 'datatables_dashboard']);
  
// sidebar menu account
$routes->get('add-account', 'Superadmin_Controller::add_account', ['as' => 'add_account']);
  
// sidebar menu management
$routes->get('menu-management', 'Superadmin_Controller::v_menu_management', ['as' => 'menu-management']);

// utk modify menu
$routes->post('load-sub-menu', 'Superadmin_action_Controller::load_sub_menu', ['as' => 'load_sub_menu']);

// add menu
$routes->post('add-menu', 'Superadmin_action_Controller::add_new_menu', ['as' => 'add_new_menu']);

// add sub menu
$routes->post('add-sub-menu', 'Superadmin_action_Controller::add_new_submenu', ['as' => 'add_new_submenu']);

$routes->post('move-menu', 'Superadmin_action_Controller::move_menu', ['as' => 'move_menu']);

// menu sidebar view users
$routes->get('view-users', 'Superadmin_Controller::view_users', ['as' => 'view-users']);

$routes->post('check-email', 'Superadmin_action_Controller::checkEmail');
$routes->post('check-username', 'Superadmin_action_Controller::checkUsername');

$routes->post('create-account', 'Superadmin_action_Controller::create_account', ['as' => 'create-account']);

// menu view calendar
$routes->get('view-calendar', 'Superadmin_Controller::v_calendar', ['as => view-calendar']);

// get from database for calendar events
$routes->get('load-events-calendar', 'Superadmin_action_Controller::load_events_calendar', ['as' => 'load_events_calendar']);

// save calendar events
$routes->post('save-events-calendar', 'Superadmin_action_Controller::save_event_calendar', ['as' => 'save_event_calendar']);

// delete calendar events
$routes->get('delete-event/(:any)', 'Superadmin_action_Controller::delete_event_calendar/$1', ['as' => 'delete_event']);

// view for calendar events
$routes->get('edit-event/(:any)', 'Superadmin_Controller::update_view_calendar/$1', ['as' => 'view_edit']);

// update calendar events
$routes->post('update-events/(:any)', 'Superadmin_action_Controller::update_event_calendar/$1', ['as' => 'update-event']);

// learning materials
$routes->get('view-learning-materials', 'Superadmin_Controller::v_material', ['as' => 'view-learning-materials']);

$routes->post('save-materi', 'Superadmin_action_Controller::save_learning_material', ['as' => 'save-materi']);

$routes->post('publish-materi', 'Superadmin_action_Controller::publishMateri', ['as' => 'publish-materi']);

$routes->post('close-materi', 'Superadmin_action_Controller::closeMateri', ['as' => 'close-materi']);

$routes->post('delete-materi', 'Superadmin_action_Controller::deleteMateri', ['as' => 'delete-materi']);

$routes->get('my-profile', 'Superadmin_Controller::v_myprofile', ['as' => 'my-profile']);

$routes->get('view-job', 'Superadmin_Controller::v_jobs', ['as' => 'view-job']);

$routes->post('post-a-job', 'Superadmin_action_Controller::posting_jobs', ['as' => 'post-a-job']);

$routes->post('data-tables-jobs', 'Superadmin_action_Controller::datatables_jobs_dashboard', ['as' => 'datatables_jobs']);

$routes->get('view-applied/(:any)', 'Superadmin_Controller::view_who_applied/$1', ['as' => 'view_applied']);

$routes->get('edit-job/(:any)', 'Superadmin_Controller::edit_job/$1', ['as' => 'edit_jobs']);

$routes->post('update-job/(:any)', 'Superadmin_action_Controller::update_jobs/$1', ['as' => 'update_job']);

# purchasing data
$routes->get('view-purchasing', 'Superadmin_controller::v_purchasing', ['as' => 'view_purchasing']);

$routes->post('save-purchasing', 'Superadmin_action_Controller::save_barang', ['as' => 'save_barang']);

$routes->get('edit-data-purchasing/(:any)', 'Superadmin_Controller::v_edit_barang/$1', ['as' => 'edit_data_purchasing']);

$routes->post('submit-edit-purchasing/(:any)', 'Superadmin_action_Controller::submit_changes/$1', ['as' => 'save_edit_barang']);

$routes->get('delete-purchasing/(:any)', 'Superadmin_action_Controller::delete_barang/$1', ['as' => 'delete_barang']);