<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/home.css">
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

		$username = $_SESSION['username'];
		include "../php/connection.php";
		$sql = "select * from user where username='$username'";
		$query = mysqli_query($conn,$sql);
		$re = mysqli_fetch_array($query);
		$name = $re['name'];
		$coin = $re['coin'];
		 ?>
		<div class="flex">
			<div><img src="../asset/images/logo.png" class="logo"></div>
			<div class="search">
				<img src="../asset/images/search.png" alt="search" class="img3">
				<input type="text" id="search" name="search" placeholder="Search Laundry" class="text4">
			</div>
			<div class="flex1">
				<div><img src="../asset/images/coin5.png" class="coin"></div>
				<div class="text"><?php echo $coin ?> coins</div>
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
		<div class="row" style="padding:20px;">
			<div class="slideshow">
				<div id="demo" class="carousel slide" data-ride="carousel">
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
					</ul>

					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="../asset/images/slideshow/laundry.png" alt="slideshow">
						</div>
						<div class="carousel-item">
							<img src="../asset/images/slideshow/top web'15 v4.jpg" alt="slideshow">
						</div>
					</div>

					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a>
					<a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>
		</div>
		<div class="row background">
			<div class="col-sm-12"></div>
		</div>
		<div class="border-mid2">
			<div class="flex">
				<div class="text-mid1">Recommended Laundries</div>
				<div class="text-mid2"><a href="recommend.php" style="color:#6dcff6;">See All</a></div>
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
				?>
				<div class="box-place">
					<div class="image-place">
						<img src="../asset/images/laundry-ateng.jpg" alt="laundry-ateng">
					</div>
					<div class="info-place">
						<p class="jalan"><?php echo $jalan ?></p>
						<?php
						if($status == "open"){
						 ?>
						<p class="situasi">Open</p>
						<?php } 
						else if($status == 'close'){
						?>
						<p class="situasi" style="color:#ed145b;">Close</p>
						<?php } ?>
						<p class="date"><?php echo $open ?> - <?php echo $close ?></p>
						<div class="a">
							<div class="b">
								<img src="../asset/images/location-mark-blue.png" alt="location">
								<p class="city"><?php echo $kota ?></p>
							</div>
						</div>
					</div>
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
			<div>
				<div class="flex al">
					<?php
					include "../php/connection.php";
					$sql = "select * from products";
					$query = mysqli_query($conn,$sql);
					$num = mysqli_num_rows($query);
					for($x=1;$x<=$num;$x++){
						$re = mysqli_fetch_array($query);
						$kode = $re['kode_product'];
						$nama = $re['nama_product'];
						$kategori = $re['kategori'];
						$harga = $re['harga'];
						$stok = $re['stok'];
						$shop = $re['shop'];
						$rating = $re['rating'];
					 ?>
				<div class="box2">
					<img src="../asset/images/setrika1.png" class="img">
					<div class="text5"><?php echo $nama ?></div>
					<div class="harga">Rp <?php echo $harga ?></div>
					<?php if($rating <= 20){
					 ?>
					<div class="flex1">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star2.png" class="star">
						<img src="../asset/images/star2.png" class="star">
						<img src="../asset/images/star2.png" class="star">
						<img src="../asset/images/star2.png" class="star">
						<div class="text">(<?php echo $rating ?>)</div>
					</div>
					<?php } ?>
					<?php if($rating <= 40 && $rating > 20){
					 ?>
					<div class="flex1">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star2.png" class="star">
						<img src="../asset/images/star2.png" class="star">
						<img src="../asset/images/star2.png" class="star">
						<div class="text">(<?php echo $rating ?>)</div>
					</div>
					<?php } ?>
					<?php if($rating <= 60 && $rating > 40){
					 ?>
					<div class="flex1">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star2.png" class="star">
						<img src="../asset/images/star2.png" class="star">
						<div class="text">(<?php echo $rating ?>)</div>
					</div>
					<?php } ?>
					<?php if($rating <= 80 && $rating > 60){
					 ?>
					<div class="flex1">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star2.png" class="star">
						<div class="text">(<?php echo $rating ?>)</div>
					</div>
					<?php } ?>
					<?php if($rating <= 100 && $rating > 80){
					 ?>
					<div class="flex1">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star1.png" class="star">
						<img src="../asset/images/star1.png" class="star">
						<div class="text">(<?php echo $rating ?>)</div>
					</div>
					<?php } ?>
				</div>
			<?php } ?>
			</div>
		</div>
		<div class="row background">
			<div class="col-sm-12"></div>
		</div>
		<div class="row box3">
			<div class="col-sm-8">
				<div class="text1">Have a laundry? Open your online branch in WashMe</div>
				<div class="text2">Easy to use and trusted. FREE!</div>
				<div class="flex">
					<button class="button">Open your Laundry</button>
					<div class="text3"><u>Learn more</u></div>
				</div>
			</div>
			<div class="col-sm-4"><img src="../asset/images/laundry3.png" class="img"></div>
		</div>
		<hr class="hr2">
		<div class="footer">
			<a href="home.php">
				<div class="box4">
					<img src="../asset/images/home.png" class="img2">
					<div class="text">Home</div>
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
					<img src="../asset/images/profile2.png" class="img2">
					<div class="text1">Account</div>
				</div>
			</a>
		</div>
	</div>
</form>
</body>
</html>