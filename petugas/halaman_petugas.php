<?php
if(isset($_GET['url']))
{
	$url=$_GET['url'];

	switch($url)
	{
		case 'verifikasi_pengaduan';
		include 'verifikasi_pengaduan.php';
		break;

		case 'detail_pengaduan';
		include 'detail_pengaduan.php';
		break;


	}
}

else
{
	?>



	Selamat Datang Di Aplikasi Pelaporan Masyarakat, Aplikasi ini dibuat untuk memudahkan masyarakat untuk melaporkan pelanggaran atau kejadian yang menyimpang yang terjadi di masyarakat <br><br>

	Selamat datang : <h2><b> <?php echo $_SESSION['nama']; 

	require '../koneksi.php';
	$sql=mysqli_query($con,"select * from pengaduan where status='0'");
	if ($cek=mysqli_num_rows($sql))
	{
	?>
	<br>
	<br>

		<div class="col-xl-6 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Laporan Pengaduan : </div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">Ada <?php echo $cek; ?> Laporan dari Masyarakat</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-cog fa-3x text-gray-300"></i>
                      <span class="badge badge-danger badge-counter"><?php echo $cek; ?></span>
                    </div>
                  </div>
                </div>
              </div>
            </div>

<?php
} }
?>