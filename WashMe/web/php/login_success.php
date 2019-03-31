<?php 

session_start();

include 'connection.php';

$username = $_POST['username'];
$password = $_POST['password'];
$query = mysqli_query($conn,"select * from users where username='$username' and password='$password'");

$cek = mysqli_num_rows($query);

$hasil = mysqli_fetch_array($query);
$status = $hasil['status'];

if($cek > 0){
	if($status == 'user'){
	$_SESSION['username'] = $username;
	$_SESSION['password'] = $password;
	header('location:../view/home.php');
	}elseif($status == 'laundry'){
		header('location:../view/laundry/laundryhome.php');
	}
}else{
	header('location:../view/login.php?pesan=gagal');
}
	
?>