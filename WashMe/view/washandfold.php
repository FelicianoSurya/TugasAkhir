<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/washandfold2.css">
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
				<a href="home.php">
					<div class="logo">
						<img src="../asset/images/left-arrow1.png" alt="image">
					</div>
				</a>
				<div class="list">
					<div class="geser">
						<h1>Wash & Fold Services</h1>
					</div>
				</div>
			</header>
		</div>
	</div>
	<div class="search">
		<img src="../asset/images/search.png" alt="search" class="img3">
		<input type="text" id="search" name="search" placeholder="Search Laundry" class="text4">
	</div>
	<div class="content">
		<div class="content-in">
			<?php 
			include "connection.php";
			$sql = "select * from laundrys where service = 'wash&fold'";
			$query = mysqli_query($conn,$sql);
			$num = mysqli_num_rows($query);
			for($x=1;$x <=$num;$x++){

			 ?>
			<a href="washme-order.php">
				<div class="kotak-besar">
					<div class="kotak-kiri">
						<img src="../asset/images/laundryfresco.jpg" alt="images">
					</div>
					<div class="kotak-kanan">
						<p class="teks1">Laundry Fresco</p>
						<p class="naik"><img src="../asset/images/location-mark-blue.png" alt="images"><span>Jln. Gajah Mada Gg. Gajah Ma...</span></p>
						<p class="naik"><img src="../asset/images/star1.png" alt="images"><span>5.0</span></p>
					</div>
				</div>
			</a>
			<?php } ?>
		</div>
	</div>
</div>
</body>
</html>