<?= $this->extend('finance/header/header');?>
<?= $this->section('page-content');?>

<section class="dashboard">
  <div class="row">
    <div class="col-xl-12">
      <div class="card">
        <h4 class="card-header fw-bold text-dark">Edit Data</h4>
        <form action="<?= route_to('save_edit_barangs', $purchase['id_barang']); ?>" method="post">
          <div class="card-body">
            <div class="row">
              <div class="col mb-3">
                <label class="form-label">Nama Barang</label>
                <input type="text" name="nama_barang" placeholder="Nama Barang" class="form-control" required value="<?= $purchase['nama_barang']?>">
              </div>
              <div class="col mb-3">
                <label class="form-label">Jenis Barang</label>
                <input type="text" name="jenis_barang" class="form-control" placeholder="Jenis Barang" required value="<?= $purchase['jenis_barang']?>">
              </div>
            </div>
  
            <div class="row">
              <div class="col mb-3">
                <label class="form-label">Merk Barang</label>
                <input type="text" name="merk_barang" class="form-control" placeholder="Merk Barang" required value="<?= $purchase['merk_barang']?>">
              </div>
              <div class="col mb-3">
                <label class="form-label">Harga</label>
                <input type="text" name="harga" class="form-control" placeholder="Harga Barang" required value="<?= $purchase['harga']?>">
              </div>
            </div>
  
            <div class="mb-3">
              <label class="form-label">Keperluan</label>
              <textarea name="keperluan_barang" id="" class="form-control" placeholder="Jelaskan keperluan"
                name="keperluan_barang" required><?= $purchase['keperluan_barang']?></textarea>
            </div>
          </div>
          <div class="card-footer">
            <button type="submit" class="btn btn-primary"><i class="bi bi-send"></i>&nbsp; Save changes</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<?= $this->endSection();?>
<?= $this->section('scripts'); ?>
<?= $this->endSection();?>