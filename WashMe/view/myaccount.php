<?php
	include 'security.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/myaccount1.css">
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
				<div>
					<h4>My Account</h4>
				</div>
			</header>
		</div>
	</div>
	<hr class="hr1">
	<div class="content">
		<div class="content-in">
			<div class="user">
				<h5><?php echo $_SESSION['username']; ?></h5>
				<p><?php echo $_SESSION['email']; ?></p>
				<p class="no"><?php echo $_SESSION['nohp']; ?></p>
			</div>
			<div class="edit">
				<button type="button" id="profile">Edit Profile</button>
			</div>
		</div>
		<hr class="hr1">
		<div class="content-in1">
			<div class="user">
				<p>Click below to connect your WashMe account with<br>Facebook</p>
			</div>
			<div class="edit">
				<button type="button" id="profile"><span><img src="../asset/images/facebook-logo.png"></span><p>Connect with Facebook</p></button>
			</div>
		</div>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<p class="promo-in">Enter Promo Code<span><img src="../asset/images/right-arrow.png"></span></p>
				</div>
			</div>
		</a>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<p class="promo-in1">My Voucher<span><img src="../asset/images/right-arrow.png"></span></p>
				</div>
			</div>
		</a>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<p class="promo-in2">Language<span><img src="../asset/images/right-arrow.png"></span></p>
				</div>
			</div>
		</a>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<p class="promo-in3">Help<span><img src="../asset/images/right-arrow.png"></span></p>
				</div>
			</div>
		</a>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<p class="promo-in4">Frequently Ask Questions<span><img src="../asset/images/right-arrow.png"></span></p>
				</div>
			</div>
		</a>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<p class="promo-in5">Rate WashMe App<span>3.20</span></p>
				</div>
			</div>
		</a>
	</div>
	<hr class="hr2">
	<div class="flex footer">
		<a href="home.php">
			<div class="box4">
				<img src="../asset/images/home2.png" class="img2">
				<div class="text">Home</div>
			</div>
		</a>
		<a href="#">
			<div class="box4">
				<img src="../asset/images/shopping-list2.png" class="img2">
				<div class="text">My Orders</div>
			</div>
		</a>
		<a href="#">
			<div class="box4">
				<img src="../asset/images/shopping-cart2.png" class="img2">
				<div class="text">WashMe Shop</div>
			</div>
		</a>
		<a href="myaccount.php">
			<div class="box4">
				<img src="../asset/images/profile.png" class="img2">
				<div class="text">Account</div>
			</div>
		</a>
	</div>	
</div>
</body>
</html>