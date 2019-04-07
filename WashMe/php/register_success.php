<?php 

include 'connection.php';

$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];
$confirmation_password = $_POST['confirmation'];
$nohp = $_POST['nohp'];

$submit = $_POST['register'];

if($submit == 'Register'){
	if($username !="" && $email !="" && $password !="" && $nohp !=""){
		if($password == $confirmation_password){
			$sql = "insert into users (username,password,email,nohp,status) values ('$username','$password','$email','$nohp','user')";
			$query = mysqli_query($conn,$sql);
			header('location:../view/index.php?pesan=berhasil');	
		}
		elseif($password != $confirmation_password){
			header('location:../view/register.php?pesan=beda');
		}
	}else{
		header('location:../view/register.php?pesan=required');
	}
}

?>
