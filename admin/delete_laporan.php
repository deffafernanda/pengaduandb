<?php
require '../koneksi.php';
$id_pengaduan=$_GET['id_pengaduan'];

$sql=mysqli_query($con,"delete from pengaduan where id_pengaduan='$id_pengaduan'");

if ($sql)
{
	?>
	<script type="text/javascript">
		alert ('Data berhasil dihapus');
		window.location='admin.php?url=lihat_laporan';
	</script>
	<?php
}
?>