<?php
session_start();
if(isset($_SESSION['login'])){
?>
<html>
	<head><title></title></head>
<body>
<?php
if(isset($_POST['simpan'])){
	include('koneksi.php');
	$nama = $_POST['nama'];
	$nim = $_POST['nim'];
	$foto = $_POST['foto'];
	$tempat_lahir = $_POST['tempat_lahir'];
	$tgl_lahir = $_POST['tgl_lahir'];
	$jenis_kelamin = $_POST['jenis_kelamin'];
	$status_perkawinan = $_POST['status_perkawinan'];
	$prodi = $_POST['prodi'];
	$angkatan = $_POST['angkatan'];
	$lulus_tanggal = $_POST['lulus_tanggal'];
	$lama_studi = $_POST['lama_studi'];
	$ipk = $_POST['ipk'];
	$judul_ta = $_POST['judul_ta'];
	$no_telepon = $_POST['no_telepon'];
	$email = $_POST['email'];
	$asal_slta_tahun = $_POST['asal_slta_tahun'];
	$nama_orang_tua = $_POST['nama_orang_tua'];
	$alamat = $_POST['alamat'];
	$status='0';
	if(empty($foto)) {
		$foto=$fotoawal;
	}else {
		$foto=$foto;
	}
	$update=mysqli_query($koneksi,"UPDATE alumni SET nama = '$nama', nim = '$nim', 
									  		 foto = '$foto', tempat_lahir = '$tempat_lahir', 
									  		 tgl_lahir = '$tgl_lahir', jenis_kelamin = '$jenis_kelamin',
									  		 status_perkawinan = '$status_perkawinan', program_studi = '$prodi',
									  		 angkatan = '$angkatan', lulus_tanggal = '$lulus_tanggal', 
									  		 lama_studi = '$lama_studi', ipk = '$ipk', 
									  		 judul_ta = '$judul_ta', no_telepon = '$no_telepon', 
									  		 email = '$email', asal_slta_tahun = '$asal_slta_tahun', 
									  		 nama_orang_tua = '$nama_orang_tua', alamat_asal = '$alamat'
									  		 WHERE id_alumni='$id'")or die(mysql_error());
	if($update){
		echo'Data berhasil disimpan!';
		echo'<a href="index.php">Kembali</a>';
	}else{
		echo'Gagal menyimpan data!';
		echo'<a href="edit_data_alumni.php?id='.$id.'">Kembali</a>';
	}
}else{
	echo'<script>window.history.back()</script>';
}
?>
</body>
</html>
<?php
}else{
	echo'<script>window.location="login.php"</script>';
}
?>