<?php
	session_start();
if(isset($_POST['login'])){
	$user = $_POST['user_login'];
	$pass = $_POST['pass_login'];
	$db_link = mysqli_connect('localhost', 'root', '', 'db_alumni'); // sesuaikan username dan password mysqli anda
    $sql = "SELECT * FROM alumni WHERE nim = '$user' and password = MD5('$pass')"; // query silahkan disesuaikan
    $result = mysqli_query($db_link, $sql); // eksekusi query
	$jml = mysqli_num_rows($result);
	
	if($jml == 1){
		$status = 1;
		$db_link = mysqli_connect('localhost', 'root', '', 'db_alumni');
		$update = mysqli_query($db_link,"UPDATE alumni SET status = '$status' WHERE nim = '$user'")or die(mysql_error());
		$_SESSION['login'] = $user;
	    $hasil = mysqli_fetch_assoc($result);
	    if($hasil['status'] == '0'){
	    	$id = $hasil['id_alumni'];
	    	echo '<script>window.location="edit_password1.php?id='.$id.'"</script>';
	    }
	    else{
	    	echo '<script>window.location="profil.php?nim='.$user.'"</script>';
	    }
	}
	else{
		echo '<script>window.location="login.php"</script>';
	}
}
?>