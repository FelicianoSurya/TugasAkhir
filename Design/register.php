<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../asset/css/register.css">
	<style>
		@font-face {
	font-family: rale;
	src :url(../font/raleway.regular.ttf);
	font-style: normal;
	font-weight: 100;
	}
	@font-face {
		font-family: cool;
		src : url(../font/coolvetica.rg.ttf);
		font-style: normal;
		font-weight: 100;
	}
	</style>
</head>
<body class="body">
<div class="row">
	<div class="col-lg-4">
		<div class="row">
			<div class="col-lg-3 kotak-logo">
				<img src="../asset/images/search.png" class="logo">
			</div>
			<div class="col-lg-5">
				<p class="judul">GoBook</p>
			</div>
		</div>
	</div>
	<div class="col-lg-4"></div>
	<div class="col-lg-4 kotak">
		<a href="login.php"><button class="btn button1 login">Login</button></a>
		<button class="btn button1 help">Help</button>
	</div>
</div>
<div class="row">
	<div class="col-lg-6">
		<p class="title" style="line-height: 100px; color:white; font-weight: bold;">Find<br><span style="color:#095a5f;">your book </span>easily<br>with GoBook</p>
	</div>
	<div class="col-lg-6">
		<div class="row" style="padding:50px;">
			<div class="col-lg-12 kotak1">
				<p class="create">Create Your Account</p>
				<form>
					<div class="form-group">
						<label class="label">Your Full Name :</label><br>
						<input type="text" name="name" id="name" value="Feliciano Surya Marcello" class="form-control text-input">
					</div>
					<div class="form-group">
						<label class="label">Your Email :</label><br>
						<input type="text" name="email" id="email" value="suryamarcello@gmail.com" class="form-control text-input">
					</div>
					<div class="form-group">
						<label class="label">Your Password :</label><br>
						<input type="password" name="password" id="password" value="lalalala" class="form-control text-input">
					</div>
					<a href="login.php"><input type="button" class="btn form-control btn-info" value="Register"></a>
				</form>
			</div>
				<p class="info">By continuing, you agree if GoBook sends an email regarding your registration</p>
		</div>
	</div>
</div>
</body>
</html>