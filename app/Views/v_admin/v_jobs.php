<?= $this->extend('V_admin/header/header');?>
<?= $this->section('page-content');?>

<section class="section dashboard">
  <?php echo session_notif(); ?>
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header"><i class="bi bi-briefcase-fill"></i>&nbsp; Jobs</div>
        <div class="filter">
          <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
            <li class="dropdown-header text-start">
              <h6><i class="bi bi-journals"></i>&nbsp; Jobs</h6>
            </li>

            <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#add_new_jobs"><i
                  class="bi bi-plus-square"></i>&nbsp; Add New Jobs</a>
            </li>
          </ul>
        </div>

        <div class="card-body">
          <button id="cardViews" class="btn btn-primary mt-3 mb-3">Card View</button>
          <div id="cardView" class="row"></div>

          <table class="table" id="table_job" style="width: 100%;">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Active</th>
                <th scope="col">Company</th>
                <th scope="col">Department</th>
                <th scope="col">Level</th>
                <th scope="col">Position</th>
                <th scope="col">Contracts</th>
                <th scope="col">Location</th>
                <th scope="col">Handle</th>
              </tr>
            </thead>
            <tbody>
            </tbody>
          </table>
          <!-- end Jobs -->

        </div>
      </div>
    </div>
  </div>
</section>

<div class="modal fade" id="add_new_jobs" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
  aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h1 class="modal-title fs-5 fw-bold" id="staticBackdropLabel">Add New Jobs</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form method="post" action="<?= route_to('post-a-job')?>" enctype="multipart/form-data">
        <div class="modal-body">
          <div class="row mb-3">
            <div class="col">  
              <label for="Company">Company</label>
              <select class="form-select select2-hidden-accessible" name="company" tabindex="-1" aria-hidden="true" id="company" style="width: 100%;">
                <option value="">-- Pilih Salah Satu --</option>
                <?php foreach($company as $c) : ?>
                  <option value="<?= $c['id_company']?>"><?= $c['company_name']?></option>
                <?php endforeach;?>
              </select>
            </div>
            
            <div class="col">
              <label for="department">Department</label>
              <select class="form-select select2-hidden-accessible" name="department" tabindex="-1" aria-hidden="true" id="department" style="width: 100%;">
                <option value="">-- Pilih Salah Satu --</option>
                <?php foreach($dept as $dep) :?>
                  <option value="<?= $dep['id_dept']?>"><?= $dep['department_name']?></option>
                <?php endforeach;?>
              </select>
            </div>
          </div>

          <div class="row mb-3">
            <div class="col">  
              <label for="level">Level</label>
              <select class="form-select select2-hidden-accessible" name="level" tabindex="-1" aria-hidden="true" id="level" style="width: 100%;">
                <option value="">-- Pilih Salah Satu --</option>
                <?php foreach($level as $lvl) :?>
                  <option value="<?= $lvl['id_level']?>"><?= $lvl['level_name']?></option>
                <?php endforeach;?>
              </select>
            </div>
            
            <div class="col">
              <label for="position">Position</label>
              <select class="form-select select2-hidden-accessible" name="position" tabindex="-1" aria-hidden="true" id="position" style="width: 100%;">
                <option value="">-- Pilih Salah Satu --</option>
                <?php foreach($position as $pos) :?>
                  <option value="<?= $pos['id_position']?>"><?= $pos['position_name']?></option>
                <?php endforeach; ?>
              </select>
            </div>
          </div>

          <div class="row mb-3">
            <div class="col">  
              <label for="contract">Contract Type</label>
              <select class="form-select select2-hidden-accessible" name="contract" tabindex="-1" aria-hidden="true" id="contract" style="width: 100%;">
                <option value="">-- Pilih Salah Satu --</option>
                <?php foreach($contract as $cr) :?>
                  <option value="<?= $cr['id_contract']?>"><?= $cr['contract_name']?></option>
                <?php endforeach;?>
              </select>
            </div>
            
            <div class="col">
              <label for="location">Location</label>
              <select class="form-select select2-hidden-accessible" name="location" tabindex="-1" aria-hidden="true" id="location" style="width: 100%;">
                <option value="">-- Pilih Salah Satu --</option>
                <?php foreach($location as $loc) :?>
                  <option value="<?= $loc['id_location']?>"><?= $loc['location_name']?></option>
                <?php endforeach;?>
              </select>
            </div>
          </div>

          <div class="mb-3">
            <label for="judul">Job Description Information</label>
            <textarea id="content" name="content" class="form-control" placeholder="Explain the content here"></textarea>
          </div>

          <div class="row mb-3">
            <div class="col">
              <label for="">Open Job</label>
              <input type="text" id="openjob" class="form-control" placeholder="Start date open this job" name="opening">
            </div>

            <div class="col">
              <label for="">Closed Job</label>
              <input type="text" id="closedjob" class="form-control" placeholder="End date close this job" name="closed">
            </div>
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" id="save">Save</button>
        </div>
      </form>
    </div>
  </div>
</div>

<?= $this->endSection();?>
<?= $this->section('scripts'); ?>
<script type="text/javascript">
$(document).ready(function () {

  $(document).on('click', '#delete', function(e) {
    e.preventDefault();
    let data_materi = $(this).attr('data-materi');
    let dataToSend = { 'data-materi': data_materi };

    $.ajax({
      method: "post",
      url: "<?= route_to('delete-materi')?>",
      data: dataToSend,
      success: function (response) {
        alertify.set('notifier', 'position', 'bottom-right');
        let responseString = JSON.stringify(response);
        if(responseString.indexOf("Failed") !== -1) {
          alertify.error(response.status);
        } else{
          alertify.success(response.status);
        }

        setTimeout(function(){
          window.location.reload();
        }, 1000);
      }
    });

  });

});
</script>

<script type="text/javascript">
  $(document).ready(function () {
    $('#company').select2({
      placeholder: "Choose Company",
      theme: "bootstrap-5",
      allowClear: true,
    });

    $('#department').select2({
      placeholder: "Choose Department",
      theme: "bootstrap-5",
      allowClear: true,
    });

    $('#level').select2({
      placeholder: "Choose Level",
      theme: "bootstrap-5",
      allowClear: true,
    });

    $('#position').select2({
      placeholder: "Choose Position",
      theme: "bootstrap-5",
      allowClear: true,
    });

    $('#contract').select2({
      placeholder: "Choose Contract Type",
      theme: "bootstrap-5",
      allowClear: true,
    });

    $('#location').select2({
      placeholder: "Choose Location",
      theme: "bootstrap-5",
      allowClear: true,
    });

    $("#openjob").datepicker({
      dateFormat: "dd-mm-yy", // Format tanggal
      minDate: 0, // Tanggal minimum (hari ini)
      changeMonth: true, // Izinkan perubahan bulan
      changeYear: true // Izinkan perubahan tahun
      // tambahkan opsi lain sesuai kebutuhan
    });
    
    $("#closedjob").datepicker({
      dateFormat: "dd-mm-yy", // Format tanggal
      minDate: 0, // Tanggal minimum (hari ini)
      maxDate: "+10M", // Tanggal maksimum (1 bulan dari sekarang)
      changeMonth: true, // Izinkan perubahan bulan
      changeYear: true // Izinkan perubahan tahun
      // tambahkan opsi lain sesuai kebutuhan
    });

  });
  
  CKEDITOR.replace('content', {
    extraPlugins: 'editorplaceholder',
    editorplaceholder: 'Explain the job description here',
    toolbar: [{
        name: 'basicstyles',
        groups: ['basicstyles', 'cleanup'],
        items: ['Bold', 'Italic', 'Underline', 'Strike']
      },
      {
        name: 'paragraph',
        items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-',
          'Blockquote', ,
          '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-',
          'BidiLtr', 'BidiRtl', 'Language'
        ]
      },
      {
        name: 'styles',
        items: ['Styles', 'Format', 'Font', 'FontSize']
      },
      {
        name: 'colors',
        items: ['TextColor', 'BGColor']
      }
    ]
  });

  let dataTable;

  dataTable = $('#table_job').DataTable({
      "processing": true,
      "serverSide": true,
      "orderable": true,
      'searching': true,
      "ajax": {
        "url": "<?= route_to('datatables_jobs');?>",
        "type": "POST"
      },
      columnDefs: [{
        targets: 1,
        render: function (data, type, row) {
          let color = '';
          if (data === '1') {
            status = 'active';
            color = 'success';
          }
          if (data === '0') {
            status = 'inactive';
            color = 'danger';
          }
          return '<span class="badge bg-' + color + '">' + status + '</span>';
        }
      }],
      "columns": [
        {data: null,render: function (data, type, row, meta) {
            return meta.row + meta.settings._iDisplayStart + 1;
          },
          orderable: true,
        },
        { "data": "active", orderable: true, },
        { "data": "company_name", orderable: true, },
        { "data": "department_name", orderable: true, },
        { "data": "level_name", orderable: true, },
        { "data": "position_name", orderable: true, },
        { "data": "contract_name", orderable: true, },
        { "data": "contract_name", orderable: true, },
        {
          data: 'aksi',
          render: function (data, type, row) 
          {
            return `
              <button class="btn btn-primary btn-sm aksi-btn" data-bs-toggle="modal" data-id-user="${row.id_user}">
                <i class="bi bi-pencil-square"></i>&nbsp; Action
              </button>
            `;
          },
        }
      ],
      "initComplete": function () 
      {
        $('#users').on('click', '.aksi-btn', function () {
          let id_users = $(this).data('id-user');
          if (id_users) 
          {
            $('#aksi').attr('data-id-user', id_users);
            $('#aksi').modal('show');
            // $('#data_user').append('<h6></h6>');
          } else {
            alert("Users not found!");
          }
        });
      },
      "preXhr": function () {
        setTimeout(function() {
          // Tampilkan pesan proses di sini
          $('#status').show();
        }, 1000);
      },
      "xhr": function () {
        var xhr = $.ajaxSettings.xhr();
        xhr.onload = function () {
        // Sembunyikan pesan proses di sini
          $('#status').hide();
        };
        return xhr;
      }
  });

  // Mengubah tampilan menjadi card view
  $('#cardViews').click(function() {
    let currentText = $(this).text();
    // Periksa apakah teks saat ini adalah "Card View" atau "Table View"
    if (currentText === "Card View") {
        // Jika teks adalah "Card View", ubah menjadi "Table View"
        $(this).text("Table View");
        // Lakukan tindakan lain yang Anda inginkan saat mode "Table View" diaktifkan
    } else {
        // Jika teks bukan "Card View", ubah kembali menjadi "Card View"
        $(this).text("Card View");
        // Lakukan tindakan lain yang Anda inginkan saat mode "Card View" diaktifkan
    }

    $('#table_job').toggleClass('card-view');
    if ($('#table_job').hasClass('card-view')) {
      // Hapus tabel dan tampilkan card view
      $('#cardView').html(''); // Bersihkan card view jika ada yang sebelumnya
      
      $('#table_job').hide();
      // $('#table_job_wrapper').hide();
      $('#table_job_filter').hide();
      $('#table_job_length').hide();

      dataTable.rows().every(function() {
        let rowData = this.data();
        let 
        card = '<div class="col-xl-6">';
          card += '<div class="card shadow">';
            // header
            card += '<div class="card-header">';
              card += '<img class="img-thumbnail" src="<?= base_url('')?>/img/pt/'+rowData['company_picture']+'" style="height:50px;"> <b class="text-uppercase text-black">' + rowData['company_name'] + '</b>';
            card += '</div>';

            // body
            card += '<div class="card-body">';
              card += '<div class="card-text">Department: ' + rowData['department_name'] + '</div>';
              card += '<div class="card-text">Position: ' + rowData['position_name'] + '</div>';
            card += '</div>';
            
            // footer
            card += '<div class="card-footer">';
              card += '<a href="<?= base_url('4/view-applied')?>/'+rowData['uid_hash']+'" class="btn btn-sm btn-primary me-2"><i class="bi bi-search"></i>&nbsp; View Applied</a>';
              card += '<a href="<?= base_url('4/edit-job')?>/'+rowData['uid_hash']+'" class="btn btn-sm btn-warning me-2"><i class="bi bi-pencil-square"></i>&nbsp; Edit Job</a>';
              card += '<button class="btn btn-sm btn-success me-2"><i class="bi bi-x"></i>&nbsp; Closed Job</button>';
              card += '<button class="btn btn-sm btn-danger"><i class="bi bi-trash"></i>&nbsp; Delete Job</button>';
            card += '</div>';

          card += '</div>';
        
        card += '</div>';
        $('#cardView').append(card);
      });
    } else {
        // Kembalikan tampilan tabel
        $('#table_job').show();
        $('#table_job_filter').show();
        $('#table_job_length').show();
        $('#cardView').html('');
    }
  });

</script>
<?= $this->endSection();?>