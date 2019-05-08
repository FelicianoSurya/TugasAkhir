<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/Openyourlaundry.css">
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
						<a href="#">
							<button class="button2">Help</button>
						</a>
					</div>
				</div>
			</header>
		</div>
	</div>
	<div class="content">
		<div class="content-in">
			<div class="tagline">
				<h1>Request<br><span class="font">your Laundry</span><br>at WashMe</h1>
			</div>
			<div class="login">
				<form action="../php/register_success.php" method="POST" class="kotak">
					<label class="label-besar" style="background-color: white;">Create a laundry account</label>
					<div class="form-group" style="background-color: white;">
						<label class="label" style="background-color: white;">Laundry Name :</label><br>
						<input type="text" name="laundryname" id="laundryname" autocomplete="off" class="input form-control">
					</div>
					<div class="form-group" style="background-color: white;">
						<label class="label" style="background-color: white;">Owner Name :</label><br>
						<input type="text" name="ownername" id="ownername" autocomplete="off" class="input form-control validate">
					</div>
					<div class="form-group" style="background-color: white;">
						<label class="label" style="background-color: white;">Address :</label><br>
						<input type="text" name="address" id="address" autocomplete="off" class="input form-control">
					</div>
					<div class="form-group" style="background-color: white;">
						<label class="label" style="background-color: white;">City :</label><br>
						<input type="text" name="city" id="city" autocomplete="off" class="input form-control">
					</div>
					<div class="form-group" style="background-color: white;">
						<label class="label" style="background-color: white;">Phone Number :</label><br>
						<input type="text" name="phonenumber" id="phonenumber" autocomplete="off" class="input form-control">
					</div>
					<div class="form-group" style="background-color: white;">
						<input type="submit" name="register" id="register" value="Register" class="button2 form-control">
						<p style="margin:0;color:red;">
							<?php 
							if(isset($_GET['pesan'])){
								if($_GET['pesan'] == 'beda'){
									echo "Konfirmasi Password tidak sama!";
								}elseif($_GET['pesan'] == 'required'){
									echo "Harus diisi Lengkap!";
								}
							}
							?>
							</p>
					</div>
				</form>
			</div>
			<div class="flex">
				<div class="option">
					<p class="opt">By continuing, you agree if WashMe sends<br>an email regarding your Laundry registration.</p>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>