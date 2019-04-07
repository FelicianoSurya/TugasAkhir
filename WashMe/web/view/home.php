<html>
<head>
	<title>Wash Me</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/home2.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<?php 
	session_start();
	 ?>
	<div class="body">
		<div class="left">
			<div class="top">
				<div class="logo">
					<img src="../asset/images/logo.png" alt="logo">
				</div>
				<div class="topic">
					<p>WashMe</p>
				</div>
			</div>
			<div class="bot">
				<div class="info-user">
					<div class="picture">
						<img src="../asset/images/girl.png" alt="picture">
					</div>
					<div class="info">
						<div class="name">
							<p><?php echo $_SESSION['username'] ?></p>
						</div>
						<div class="information">
							<div class="poin">
								<p>88</p></div>
							<div class="coin">
								<img src="../asset/images/coins.png" alt="coin">
							</div>
							<div class="status">
								<p>| <?php echo $_SESSION['status'] ?></p>
							</div>
						</div>
					</div>
				</div>
				<div class="menu">
					<div class="menu1">
						<div class="logo">
							<img src="../asset/images/home1.png" alt="home">
						</div>
						<div class="nama">
							<a href="home.php"></a>
							<p>Home</p>
						</div>
					</div>
					</div>
					<div class="menu2">
						<div class="logo">
							<img src="../asset/images/shopping-list1.png" alt="home">
						</div>
						<div class="nama">
							<p>My Orders</p>
						</div>
					</div>
					<div class="menu2">
						<div class="logo">
							<img src="../asset/images/profile1.png" alt="home">
						</div>
						<div class="nama">
							<a href="myprofile.php">
							<p>My Profile</p></a>
						</div>
					</div>
					<div class="menu2">
						<div class="logo">
							<img src="../asset/images/shopping-cart1.png" alt="home">
						</div>
						<div class="nama">
							<p>WashMe Shop</p>
						</div>
					</div>
					<div class="menu2 logout">
						<div class="logo">
							<img src="../asset/images/turn-off.png" alt="home">
						</div>
						<div class="nama">
							<p>Logout</p>
						</div>
					</div>
				</div>
			</div>
			<div class="right">
				<div class="slideshow">
					<div id="demo" class="carousel slide" data-ride="carousel">
						<ul class="carousel-indicators">
							<li data-target="#demo" data-slide-to="0" class="active"></li>
							<li data-target="#demo" data-slide-to="1"></li>
							<li data-target="#demo" data-slide-to="2"></li>
						</ul>

						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="../asset/images/slideshow/1.png" alt="slideshow">
							</div>
							<div class="carousel-item">
								<img src="../asset/images/slideshow/2.png" alt="slideshow">
							</div>
							<div class="carousel-item">
								<img src="../asset/images/slideshow/3.png" alt="slideshow">
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
				<div class="search">
					<div class="search-left">
						<input type="text" id="search" name="search" placeholder="Search Laundry">
						<button>
							<img src="../asset/images/search.png" alt="search">
						</button>
					</div>
					<div class="select-right">
						<select name="categories" id="category" class="">
							<option>Wash & Fold</option>
							<option>Wash</option>
							<option>Fold</option>
						</select>
					</div>
				</div>
				<div class="recommended">
					<div class="topic-recommended">
						<div class="topic-left">
							<p>Recommended Laundries</p>
						</div>
						<div class="see-all">
							<a href="#">See All</a>
						</div>
					</div>
					<div class="place-info">
						<?php 

						include "../php/connection.php" ;
						$sql = 'select * from laundrys';
						$query = mysqli_query($conn,$sql);
						$num = mysqli_num_rows($query);

						for($x = 1;$x<=$num;$x++){
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
						<div class="box-place">
							<div class="image-place">
								<img src="../asset/images/laundry-ateng.jpg" alt="laundry-ateng">
							</div>
							<div class="info-place">
								<p class="jalan"><?php echo $jalan ?></p>
								<p class="situasi"><?php echo $status ?></p>	
								<p class="date"><?php echo $open ?> - <?php echo $close ?></p>
								<div class="a">
									<p class="harga"><?php echo $harga ?> / kg</p>
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
			</div>
		</div>
	</div>
</body>
</html>