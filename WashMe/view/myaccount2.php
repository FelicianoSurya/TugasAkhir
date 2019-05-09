<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/myaccount2.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid-screen">	
		<form action="../php/edituser.php" method="POST">
		<?php
			$username = $_SESSION['username'];
			include "../php/connection.php";
			$sql = "select * from user where username='$username'";
			$query = mysqli_query($conn,$sql);
			$re = mysqli_fetch_array($query);
			$name = $re['name'];
			$email = $re['email'];
			$nohp = $re['nohp'];
		?>
		<div class="header">
			<a href="myaccount.php"><img src="../asset/images/left-arrow1.png" class="img"></a>
			<div class="flex1">
				<p class="title">Edit your account</p>
				<input type="submit" class="button" value="Update" name="update" id="update">
			</div>
		</div>
		<hr class="hr">
		<div class="body">
			<input type="hidden" name="username" id="username" value="<?php echo $username?>">
			<div class="border1">
				<p class="text">Full Name</p>
				<input type="text" name="name" id="name" class="input" value="<?php echo $name?>">
				<hr class="hr">
			</div>
			<div class="border1">
				<p class="text">Email</p>
				<input type="email" name="email" id="email" class="input" value="<?php echo $email?>">
				<hr class="hr">
			</div>
			<div class="border1">
				<p class="text">Phone Number</p>
				<div class="flex top">
					<div class="flex border-in">
						<img src="../asset/images/indonesia.png" class="img">
					</div>
					<div class="left">
						<input type="text" name="nohp" id="nohp" class="input" value="<?php echo $nohp?>">
						<hr class="hr">
					</div>
				</div>
			</div>
		</div>
		</form>
	</div>
</body>
</html>