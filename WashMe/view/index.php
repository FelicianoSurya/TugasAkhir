<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/index.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid-fullscreen">
	<div class="header">
		<div class="topic-top">
			<header>
				<div class="logo">
					<img src="../asset/images/logo.png" alt="image">
				</div>
				<div class="list">
					<div class="geser">
						<a href="register.php">
							<button class="button">Register</button>
						</a>
						<a href="#">
							<button class="button1">Help</button>
						</a>
					</div>
				</div>
			</header>
		</div>
	</div>
	<div class="content">
		<div class="content-in">
			<div class="tagline">
				<h1>Get your laundry done with <span class="font">WashMe</span></h1>
			</div>
			<div class="login">
				<form action="../php/login_success.php" method="POST" class="kotak">
					<p style="color:aqua;margin:0;">
							<?php 
							if(isset($_GET['pesan'])){
								if($_GET['pesan'] == 'berhasil'){
									echo "Berhasil Registrasi";
								}
							}
							 ?>
						</p>
					<div class="form-group" style="background-color: white;">
						<label class="label" style="background-color: white;">Username :</label><br>
						<input type="text" name="username" id="username" autocomplete="off" required class="input form-control">
					</div>
					<div class="form-group" style="background-color: white;">
						<label class="label" style="background-color: white;">Password :</label><br>
						<input type="password" name="password" id="password" autocomplete="off" required class="input form-control">
						<p style="margin:0;color:red;">
							<?php 

							if(isset($_GET['pesan'])){
								if($_GET['pesan'] == 'gagal'){
									echo 'Login gagal! Username atau Password Salah!';
								}else if($_GET['pesan'] == 'belum_login'){
									echo 'Anda belum Login';
								}
							}
							?>
							</p>
					</div>
					<div class="form-group" style="background-color: white;">
						<input type="submit" name="login" id="login" value="Login" class="button2 form-control">
						<label class="label" style="background-color: white; font-size: 16px;">Forgot Password?</label><br>
					</div>
				</form>
			</div>
			<div class="flex">
				<div class="option">
					<p class="opt">Or login with</p>
				</div>
				<div class="medsos">
					<a href="#">
						<img src="../asset/images/facebook.png" alt="images">
					</a>
					<a href="#">
						<img src="../asset/images/google.png" alt="images">
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>