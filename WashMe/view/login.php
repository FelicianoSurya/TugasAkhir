<?php

	session_start();
	include "connection.php";
	$username = $_POST['username'];
	$password = $_POST['password'];

	$sql = "select * from users where username='$username' and password='$password'";
	$query = mysqli_query($conn,$sql);
	$result = mysqli_fetch_array($query);
	$num = mysqli_num_rows($query);

	if($num == 0){
		?>
			<script>
				alert("Mohon tunggu sebentar");
				alert("Maaf, Akun anda tidak terdaftar, mohon register terlebih dahulu");
				location.href = "index.php";
			</script>
		<?php
	}else{
		$username = $result['username'];
		$_SESSION['username'] = $username;
		$email = $result['email'];
		$_SESSION['email'] = $email;
		$nohp = $result['nohp'];
		$_SESSION['nohp'] = $nohp;
		?>
			<script>
				window.location.href="home.php";
			</script>
<?php
	}
?>