<?php
require '../koneksi.php';
$id_tanggapan=$_GET['id_tanggapan'];

$sql=mysqli_query($con,"delete from tanggapan where id_tanggapan='$id_tanggapan'");

if ($sql)
{
	?>
	<script type="text/javascript">
		alert ('Data berhasil dihapus');
		window.location='admin.php?url=lihat_tanggapan';
	</script>
	<?php
}
?>