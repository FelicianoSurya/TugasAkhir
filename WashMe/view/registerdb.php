
<?php
	include 'koneksi.php';
	$kodeuser = $_GET['kodeuser'];
	$fullname = $_GET['fullname'];
	$username = $_GET['username'];
	$email = $_GET['email'];
	$password = $_GET['password'];
	$nohp = $_GET['nohp'];
	$register = $_GET['register'];

	if($register == 'Register'){
		$sql = "insert into tbregister values('$kodeuser','$fullname','$username','$email','$password','$nohp')";
	}
	$query = mysqli_query($conn,$sql);

	header("location:index.php");
?>