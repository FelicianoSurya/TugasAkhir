
<?php
	include 'connection.php';
	$id = $_GET['id'];
	$username = $_GET['username'];
	$email = $_GET['email'];
	$password = $_GET['password'];
	$nohp = $_GET['nohp'];
	$register = $_GET['register'];

	if($register == 'Register'){
		$sql = "insert into users values('$id','$username','$email','$password','$nohp')";
	}
	$query = mysqli_query($conn,$sql);

	header("location:index.php");
?>