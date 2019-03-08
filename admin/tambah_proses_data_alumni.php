<?php

// memulai session
session_start();

// jika user sudah login sebelumnya arahkan ke halaman tambah_data_alumni.php
if(isset($_SESSION['login'])){

	// jika user menekan tombol tambah, masukkan data dari form tambah data alumni
	if(isset($_POST['tambah'])){

		// include koneksi.php untuk mengkoneksikan ke database
		include('koneksi.php');

		// menginisiasi variabel-variabel dengan value dari form tambah data alumni
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
		$lama_studi = $_POST['tahun_studi'] . " tahun " . $_POST['bulan_studi'] . " bulan " . $_POST['hari_studi'] . " hari";
		$ipk = $_POST['ipk'];
		$judul_ta = $_POST['judul_ta'];
		$no_telepon = $_POST['no_telepon'];
		$email = $_POST['email'];
		$asal_slta_tahun = $_POST['asal_slta']."/".$_POST['tahun_lulus_slta'];
		$nama_orang_tua = $_POST['nama_orang_tua'];
		$alamat = $_POST['alamat'];
		$status='0';

		// menginputkan data dari form ke dalam database
		$input=mysqli_query($koneksi,"INSERT INTO alumni 
									  VALUES('', '$nama', '$nim', 
									  		 '$foto', '$tempat_lahir', 
									  		 '$tgl_lahir', '$jenis_kelamin',
									  		 '$status_perkawinan', '$prodi',
									  		 '$angkatan', '$lulus_tanggal',
									  		 '$lama_studi', '$ipk', 
									  		 '$judul_ta', '$no_telepon', 
									  		 '$email', '$asal_slta_tahun', 
									  		 '$nama_orang_tua', '$alamat', 
									  		 '', '$status')")
									 // jika penginputan error tampilkan pesan
									 or die(mysqli_error($koneksi))
									 
		// proses convert nim ke md5 untuk password							 
		if($input)
		{
			$convert = mysqli_query($koneksi,"UPDATE alumni SET password = MD5('$nim') where nim = '$nim'");
			echo "<script>alert('Data berhasil ditambahkan!');</script>";
			// arahkan ke halaman tambah_data_alumni.php bila penginputan data berhasil
			echo "<script>location='tambah_data_alumni.php';</script>"; 
		}
		else
		{
			// tampilkan pesan bila tidak bisa menginputkan data
			echo "<script>alert('Gagal menambahkan data');</script>";
			echo "<script>location='tambah_data_alumni.php';</script>";
		}
	}
	else
	{
		// jika proses penginputan data gagal kembali ke halaman sebelumnya
		echo'<script>window.history.back()</script>';
	}

}
else
{
	// jika user belum login arahkan ke halaman login.php
	echo'<script>window.location="login.php"</script>';
}
?>