<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/home1.css">
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
		 ?>
		<div class="flex">
			<div><img src="../asset/images/logo.png" class="logo"></div>
			<div class="search">
				<img src="../asset/images/search.png" alt="search" class="img3">
				<input type="text" id="search" name="search" placeholder="Search Laundry" class="text4">
			</div>
			<div class="flex">
				<div><img src="../asset/images/coin5.png" class="coin"></div>
				<div class="text">88 coins</div>
			</div>
		</div>
		<hr class="hr1">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-10 flex1">
				<a href="washandfold.php">
					<div class="border-mid1">
						<img src="../asset/images/washing.png" class="border-mid">
						<div class="text-mid">Wash & Fold</div>
					</div>
				</a>
				<a href="washandiron.php">
					<div class="border-mid1">
						<img src="../asset/images/ironing.png" class="border-mid">
						<div class="text-mid">Wash & Iron</div>
					</div>
				</a>
				<a href="dryclean.php">
					<div class="border-mid1">
						<img src="../asset/images/clothes.png" class="border-mid">
						<div class="text-mid">Dry Clean</div>
					</div>
				</a>
			</div>
			<div class="col-sm-1"></div>
		</div>
		</div>
		<div class="row background" style="margin-top: 20px;">
			<div class="col-sm-12"></div>
		</div>
		<div class="row">
			<div class="col-sm-12"><img src="../asset/images/slideshow/laundry.png" class="slide"></div>
		</div>
		<div class="row background">
			<div class="col-sm-12"></div>
		</div>
		<div class="border-mid2">
			<div class="flex">
				<div class="text-mid1">Recommended Laundries</div>
				<div class="text-mid2">See All</div>
			</div>
			<div class="flex border1">
				<?php
					include "../php/connection.php";
					$sql = "select * from laundrys";
					$query = mysqli_query($conn,$sql);
					$num = mysqli_num_rows($query);

					for($x=1;$x<=$num;$x++){
						$re = mysqli_fetch_array($query);
						$jalan = $re['alamat'];
						$status = $re['status'];
						$nama = $re['name'];
						$open = $re['time_open'];
						$close = $re['time_close'];
						$harga = $re['harga'];
						$kota = $re['kota'];
						$image = $re['image'];
				?>
				<div class="box">
					<img src="../asset/images/laundry-ateng.jpg" class="img">
					<p class="jalan"><?php echo $jalan ?></p>
				</div>
				<?php } ?>
			</div>
		</div>
		<div class="row background">
			<div class="col-sm-12"></div>
		</div>
		<div class="border-mid2">
			<div class="flex">
				<div class="text-mid1">Shop</div>
				<div class="text-mid3">See All</div>
			</div>
			<div class="row">
				<div class="col-sm-12 flex">
					<div class="box2">
						<img src="../asset/images/setrika1.png" class="img">
						<div class="text">Setrika Uap Listrik Silver Star ES300...</div>
						<div class="harga">Rp 515.000</div>
						<div class="flex">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<div class="text">(3)</div>
						</div>
					</div>
					<div class="box2">
						<img src="../asset/images/shop1.jpg" class="img">
						<div class="text">Stand Hanger / Gantungan tiang...</div>
						<div class="harga">Rp 70.000</div>
						<div class="flex">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<div class="text">(89)</div>
						</div>
					</div>
					<div class="box2">
						<img src="../asset/images/shop2.jpg" class="img">
						<div class="text">Jemuran Dinding Fortuna (JD-150)</div>
						<div class="harga">Rp 340.000</div>
						<div class="flex">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<img src="../asset/images/star1.png" class="star">
							<div class="text">(156)</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row background">
			<div class="col-sm-12"></div>
		</div>
		<div class="row box3">
			<div class="col-sm-7">
				<div class="text1">Have a laundry? Open your online branch in WashMe</div>
				<div class="text2">Easy to use and trusted. FREE!</div>
				<div class="flex">
					<button class="button">Open your Laundry</button>
					<div class="text3"><u>Learn more</u></div>
				</div>
			</div>
			<div class="col-sm-5"><img src="../asset/images/laundry3.png" class="img"></div>
		</div>
		<hr class="hr2">
		<div class="flex1 footer">
			<a href="home.php">
				<div class="box4">
					<img src="../asset/images/home.png" class="img2">
					<div class="text">Home</div>
				</div>
			</a>
			<a href="#">
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
					<img src="../asset/images/profile2.png" class="img2">
					<div class="text1">Account</div>
				</div>
			</a>
		</div>
	</div>
</form>
</body>
</html>