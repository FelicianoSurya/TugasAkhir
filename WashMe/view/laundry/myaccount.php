<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../../asset/css/laundry/myaccount.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<form>
	<div class="container-fluid-screen">
		<?php
			session_start();
			include "../../php/connection.php";
			$sql = "select * from laundrys";
			$query = mysqli_query($conn,$sql);
			$re = mysqli_fetch_array($query);
			$image = $re['image'];
			$name = $re['name'];
			$owner = $re['owner'];
			$alamat = $re['alamat'];
			$nohp = $re['nohp'];
		?>
		<div class="header">
			My Account
			<input type="submit" name="update" id="update" value="Update" class="submit">
		</div>
		<div class="box">
			<img src="../<?php echo $image?>">
			<p>Select Picture</p>
		</div>
		<div class="box1">
			<div class="flex">
				<div class="text">Laundry Name</div>
				<div class="text1">:</div>
				<div class="text2"><?php echo $name?></div>
			</div>
			<div class="flex">
				<div class="text">Owner Laundry</div>
				<div class="text1">:</div>
				<div class="text2"><?php echo $owner?></div>
			</div>
			<div class="flex">
				<div class="text">Location</div>
				<div class="text1">:</div>
				<div class="text2"><?php echo $alamat?></div>
			</div>
			<div class="flex">
				<div class="text">Email</div>
				<div class="text1">:</div>
				<div class="text2">megalaundry@gmail.com</div>
			</div>
			<div class="flex">
				<div class="text">Phone</div>
				<div class="text1">:</div>
				<div class="text2"><?php echo $nohp?></div>
			</div>
			<div class="flex">
				<a href="../logout.php"><button type="button" class="btn btn-danger" id="logout">Logout</button></a>
			</div>
		</div>
		<div class="footer">
			<a href="home.php">
				<div class="box4">
					<img src="../../asset/images/home2.png" class="img2">
					<div class="text1">Home</div>
				</div>
			</a>
			<a href="myorders.php">
				<div class="box4">
					<img src="../../asset/images/shopping-list2.png" class="img2">
					<div class="text1">Orders</div>
				</div>
			</a>
			<a href="shopproduct.php">
				<div class="box4">
					<img src="../../asset/images/shopping-cart2.png" class="img2">
					<div class="text1">WashMe Shop</div>
				</div>
			</a>
			<a href="myaccount.php">
				<div class="box4">
					<img src="../../asset/images/profile.png" class="img2">
					<div class="text">Account</div>
				</div>
			</a>
		</div>
	</div>
</form>
</body>
</html>