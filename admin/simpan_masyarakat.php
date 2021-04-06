<?php
require '../koneksi.php';
$nik=$_POST['nik'];
$nama=$_POST['nama'];
$username=$_POST['username'];
$password=$_POST['password'];
$telp=$_POST['telp'];

$sql=mysqli_query($con,"insert into masyarakat(nik,nama,username,password,telp) values('$nik','$nama','$username','$password','$telp')");

if ($sql)
{
?>
<script type="text/javascript">
	alert ('Data berhasil disimpan');
	window.location='admin.php?url=lihat_masyarakat';
</script>
<?php
}
?>