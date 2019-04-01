<html>
<head>
	<title>Wash Me</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/kiri.css">
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
						<div class="nama">
							<p>Home</p>
						</div>
					</div>
					<div class="menu2">
						<div class="logo">
							<img src="../asset/images/shopping-list1.png" alt="home">
						</div>
						<div class="nama">
							<p>My Orders</p>
					<div class="menu2">
						<div class="logo">
							<img src="../asset/images/profile1.png" alt="home">
						</div>
						<div class="nama">
							<p>My Profile</p>
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
				</div>
			</div>
		</div>
	</div>
</body>
</html>