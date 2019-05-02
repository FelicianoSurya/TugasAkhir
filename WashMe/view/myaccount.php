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
					<h4 class="title">My Account</h4>
				</div>
			</header>
		</div>
	</div>
	<hr class="hr1">
	<div class="content">
		<div class="content-in">
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
			<div class="picture">
				<img src="../asset/images/boy.png">
			</div>
			<div class="user">
				<p class="name"><?php echo $name ?></p>
				<p class="email"><?php echo $email ?></p>
				<p class="phone"><?php echo $nohp; ?></p>
			</div>
			<div class="edit1">
				<button type="button" id="profile">Edit Profile</button>
			</div>
		</div>
		<hr class="hr1">
		<div class="content-in1">
			<div class="user">
				<p style="text-align-last: center;">Click below to connect your WashMe account with<br>Facebook</p>
			</div>
			<div class="edit">
				<button type="button"><span><img src="../asset/images/facebook-logo.png"></span><p>Connect with Facebook</p></button>
			</div>
		</div>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<img src="../asset/images/tag.png">
					<p class="promo-in">Enter Promo Code</p>
				</div>
				<div class="panah">
					<img src="../asset/images/right-arrow.png" class="arrow">
				</div>
			</div>
		</a>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<img src="../asset/images/coupon.png">
					<p class="promo-in">My Voucher</p>
				</div>
				<div class="panah">
					<img src="../asset/images/right-arrow.png" class="arrow">
				</div>
			</div>
		</a>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<img src="../asset/images/translate.png">
					<p class="promo-in">Language</p>
				</div>
				<div class="panah">
					<img src="../asset/images/right-arrow.png" class="arrow">
				</div>
			</div>
		</a>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<img src="../asset/images/information.png">
					<p class="promo-in">Frequently Ask Questions</p>
				</div>
				<div class="panah">
					<img src="../asset/images/right-arrow.png" class="arrow">
				</div>
			</div>
		</a>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<img src="../asset/images/writing.png">
					<p class="promo-in">Terms of Service</p>
				</div>
				<div class="panah">
					<img src="../asset/images/right-arrow.png" class="arrow">
				</div>
			</div>
		</a>
		<hr class="hr1">
		<a href="#">
			<div class="content-in2">
				<div class="promo">
					<img src="../asset/images/star.png">
					<p class="promo-in">Rate WashMe App</p>
				</div>
				<div class="panah">
					<p>3.20</p>
				</div>
			</div>
		</a>
		<hr class="hr1">
		<div class="content-in3">
			<div class="logout">
				<a href="logout.php"><button type="button" id="logout">logout</button></a>
			</div>
		</div>
	</div>
	<hr class="hr2">
	<div class="flex footer">
			<a href="home.php">
				<div class="box4">
					<img src="../asset/images/home2.png" class="img2">
					<div class="text1">Home</div>
				</div>
			</a>
			<a href="myorders-1.php">
				<div class="box4">
					<img src="../asset/images/shopping-list2.png" class="img2">
					<div class="text1">Orders</div>
				</div>
			</a>
			<a href="washmeshop.php">
				<div class="box4">
					<img src="../asset/images/shopping-cart2.png" class="img2">
					<div class="text1">WashMe Shop</div>
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