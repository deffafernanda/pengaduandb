<?php
require 'koneksi.php';
$tgl=date('Y/m/d');
$nik=$_POST['nik'];
$nama=$_POST['nama'];
$isi=$_POST['isi_laporan'];
$ft=$_FILES['foto']['name'];
$file=$_FILES['foto']['tmp_name'];
$st=0;

$sql=mysqli_query($con,"insert into pengaduan(tgl_pengaduan,nik,nama,isi_laporan,foto,status) values('$tgl','$nik','$nama','$isi','$ft','$st')");
move_uploaded_file($file, "foto/".$ft);

if ($sql)
{
	?>
	<script type="text/javascript">
		alert ('Data berhasil disimpan, Terima Kasih sudah menulis laporan');
		window.location="masyarakat.php";
	</script>
	<?php
}
?>