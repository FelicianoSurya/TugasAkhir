<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../../asset/css/laundry/myorders1.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<form>
	<div class="container-fluid-screen">
		<div class="header">My Orders</div>
		<div class="body">
			<div class="flex1">
				<?php 

				include "../../php/connection.php";

				$sql = "select * from temptransaksi";
				$query = mysqli_query($conn,$sql);
				$num = mysqli_num_rows($query);
				for($x = 1 ; $x <= $num; $x++){
					$re = mysqli_fetch_array($query);
					$alamat = $re['alamat_ambil'];
					$tgl_ambil = $re['tgl_ambil'];
					$tgl_deliv = $re['tgl_deliv'];
				 ?>
				<div class="box">
					<div class="flex-end"><button class="button">Details</button></div>
					<img src="../../asset/images/girl.png" class="img">
					<div class="box-in">
						<p class="text">Fleren Picestelia</p>
						<p class="text"><?php echo $alamat ?></p>
						<p class="text"><?php echo $tgl_ambil ?></p>
						<p class="text">-</p>
						<p class="text"><?php echo $tgl_deliv ?></p>
					</div>
					<div class="flex">
						<button class="button1">Accept</button>
						<button class="button2">Reject</button>
					</div>
				</div>
			<?php } ?>
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
					<img src="../../asset/images/shopping-list.png" class="img2">
					<div class="text">Orders</div>
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
					<img src="../../asset/images/profile2.png" class="img2">
					<div class="text1">Account</div>
				</div>
			</a>
		</div>
	</div>
</form>
</body>
</html>