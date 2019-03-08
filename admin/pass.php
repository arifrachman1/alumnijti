<?php include 'koneksi.php';
	$result = $koneksi -> query("SELECT * FROM alumni");
	while ($data = $result -> fetch_assoc()) {
		$nim = $data['nim'];
		mysqli_query($koneksi,"UPDATE alumni SET password = MD5('$nim') where nim = '$nim'");
	}
	if(mysqli_affected_rows($koneksi)){
		echo "<script>alert('Password Updated!');</script>";
	}
?>