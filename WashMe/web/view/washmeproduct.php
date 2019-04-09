<head>
	<title>Wash Me</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/washmeproduct.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
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
					<a href="home.php">
						<div class="menu1">
							<div class="logo">
								<img src="../asset/images/home1.png" alt="home">
							</div>
							<div class="nama">
								<p>Home</p>
							</div>
						</div>
					</a>
					<a href="myorders.php">
						<div class="menu2">
							<div class="logo">
								<img src="../asset/images/shopping-list1.png" alt="home">
							</div>
							<div class="nama">
								<p>My Orders</p>
							</div>
						</div>
					</a>
					<a href="myprofile.php">
						<div class="menu2">
							<div class="logo">
								<img src="../asset/images/profile1.png" alt="home">
							</div>
							<div class="nama">
								<p>My Profile</p>
							</div>
						</div>
					</a>
					<a href="washmeshop-kategori.php">
						<div class="menu2">
							<div class="logo">
								<img src="../asset/images/shopping-cart1.png" alt="home">
							</div>
							<div class="nama">
								<p>WashMe Shop</p>
							</div>
						</div>
					</a>
					<div class="menu2 logout">
						<div class="logo">
							<img src="../asset/images/turn-off.png" alt="home">
						</div>
						<div class="nama">
							<a href="login.php"><p>Logout</p></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="right">
			<div class="flex">
				<div class="text1">WashMe Shop > Iron ></div>
				<div class="text2">Setrika Listrik Silver Star ES300 R20</div>
			</div>
			<div class="flex">
				<div class="border1">
					<img src="../asset/images/setrika1.png" class="setrika1">
					<div class="flex">
						<img src="../asset/images/setrika1.png" class="setrika2">
						<img src="../asset/images/setrika1.png" class="setrika3">
						<img src="../asset/images/setrika1.png" class="setrika2">
					</div>
				</div>
			</div>
		</div>
	</div>