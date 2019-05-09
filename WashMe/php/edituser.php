<?php
	include "connection.php";

	$username = $_POST['username'];
	$name = $_POST['name'];
	$email = $_POST['email'];
	$nohp = $_POST['nohp'];
	$update = $_POST['update'];
	
	if($update == 'Update'){
		$sql = "update user set name='$name',email='$email',nohp='$nohp' where username='$username'";
		$query = mysqli_query($conn,$sql);
	}
	header("location:../view/myaccount.php");
?>