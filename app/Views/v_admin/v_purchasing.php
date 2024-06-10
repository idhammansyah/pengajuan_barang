<?= $this->extend('v_admin/header/header');?>
<?= $this->section('page-content');?>

<section class="section dashboard">
  <div class="row">
    <div class="col-xl-12">
      <div class="card">
        <h4 class="card-header fw-bold text-dark">View Purchasing Data</h4>
        <div class="filter">
          <a class="icon" href="#" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-three-dots"></i></a>
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
            <li class="dropdown-header text-start">
              <h6>Add Purchase</h6>
            </li>

            <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#newDataPurchase"
                data-bs-target="#add_accounts">Add New Data</a>
            </li>
          </ul>
        </div>
        <div class="card-body">
          <?= session_notif(); ?>
          <table class="table table-hover" id="purchasing_data" style="width: 100%;">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Status</th>
                <th scope="col">Nama Barang</th>
                <th scope="col">Jenis Barang</th>
                <th scope="col">Merk Barang</th>
                <th scope="col">Harga</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
              <?php $no = 1; foreach($purchase as $pr) :?>
                <tr>
                  <th scope="row"><?= $no++;?></th>
                  <td>
                    <span class="badge bg-<?= $pr['status_approval'] == "Submitted" ? "danger" : "success"?>"><?= $pr['status_approval']?></span>
                  </td>
                  <td><?= $pr['nama_barang']?></td>
                  <td><?= $pr['jenis_barang']?></td>
                  <td><?= $pr['merk_barang']?></td>
                  <td><?= $pr['harga']?></td>
                  <td>
                    <button type="button" class="btn btn-sm btn-primary"    data-bs-toggle="modal" data-bs-target="#staticBackdrop-<?= $pr['id_barang']?>">
                      <i class="bi bi-eye"></i>&nbsp; View Data
                    </button>
                  </td>
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- Modal -->
<div class="modal fade" id="newDataPurchase" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
  aria-labelledby="newDataPurchaseLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-scrollable modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Add New Data</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form id="formData">
        <div class="modal-body">
          <div class="row">
            <div class="col mb-3">
              <label class="form-label">Nama Barang</label>
              <input type="text" name="nama_barang" placeholder="Nama Barang" class="form-control" required>
            </div>
            <div class="col mb-3">
              <label class="form-label">Jenis Barang</label>
              <input type="text" name="jenis_barang" class="form-control" placeholder="Jenis Barang" required>
            </div>
          </div>

          <div class="row">
            <div class="col mb-3">
              <label class="form-label">Merk Barang</label>
              <input type="text" name="merk_barang" class="form-control" placeholder="Merk Barang" required>
            </div>
            <div class="col mb-3">
              <label class="form-label">Harga</label>
              <input type="text" name="harga" class="form-control" placeholder="Harga Barang" required>
            </div>
          </div>

          <div class="mb-3">
            <label class="form-label">Keperluan</label>
            <textarea name="keperluan_barang" id="" class="form-control" placeholder="Jelaskan keperluan" name="keperluan_barang" required></textarea>
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary"><i class="bi bi-send"></i>&nbsp; Save</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- view data -->
<?php foreach ($purchase as $pr):?>
  <div class="modal fade" id="staticBackdrop-<?= $pr['id_barang']?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Barang <b><?= $pr['nama_barang']?></b></h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label class="form-label fw-bold">Keperluan Barang</label>
            <p>
              <?= $pr['keperluan_barang']?>
            </p>
          </div>

          <div class="d-flex justify-content-center">
            <a href="<?= route_to('edit_data_purchasing', $pr['id_barang']) ?>" class="btn btn-warning">
              <i class="bi bi-pencil-square"></i>&nbsp; Edit
            </a>
            <a href="<?= route_to('delete_barang', $pr['id_barang']) ?>" class="btn btn-danger ms-3">
              <i class="bi bi-trash"></i>&nbsp; Delete
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php endforeach;?>


<?= $this->endSection();?>
<?= $this->section('scripts'); ?>
<script type="text/javascript">
  $(document).ready(function () {

    $('#purchasing_data').DataTable({});
    
    $('#formData').submit(function (event) {
      // Prevent the default form submission
      event.preventDefault();

      // Serialize the form data
      let formData = $(this).serialize();

      // Send the serialized data using $.ajax
      $.ajax({
        type: 'POST',
        url: '<?= route_to('save_barang'); ?>',
        data: formData,
        success: function (response) {
          $("#newDataPurchase").modal('hide');
          alertify.set('notifier', 'position', 'bottom-right');
          let responseString = JSON.stringify(response);
          if (responseString.indexOf("failed") !== -1) {
            alertify.error(response.status);
          } else {
            alertify.success(response.status);
          }
          setTimeout(function () {
            window.location.reload();
          }, 3000);
        },
        error: function (error) {
          // Handle errors
          console.error('Error:', error);
        }
      });
    });
  });
</script>
<?= $this->endSection();?>