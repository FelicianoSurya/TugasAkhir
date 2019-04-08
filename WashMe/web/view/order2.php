<html>
<head>
	<title>Wash Me</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/order2.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<spcript src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<?php 
	session_start();
	?>
	<div class="big-body">
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
								<a href="home.php">
									<p>Home</p>
								</a>
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
									<p>My Profile</p>
								</a>
							</div>
						</div>
						<div class="menu2">
							<div class="logo">
								<img src="../asset/images/shopping-cart1.png" alt="home">
							</div>
							<div class="nama">
								<a href="washmeshop1.php">
									<p>WashMe Shop</p>
								</a>
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
			</div>
		</div>
		<div class="body1">
			<div class="right">
				<div class="top">
					<div class="icon">
						<img src="../asset/images/left-arrow1.png" alt="icon">
					</div>
					<div class="topic">
						<div class="topic-in">
							<h1>Laundry Item<span><img src="../asset/images/writing.png"></span></h1>
							<div class="topic-big">
								<div class="topic-kiri">
									<div class="title">
										<h4>Basic Laundry (Kg)</h4>
									</div>
									<hr>
									<div class="content">
										<div class="form-in">
											<div class="kiri">
												<h5>Wash & Fold</h5>
												<p>Rp 5.000 / kg</p>
											</div>
											<div class="kanan">
												<div class="img"><img src="../asset/images/minus.png"></div>
												<div class="center">
													<h5>3</h5>
													<p>(kg)</p>
												</div>
												<div class="img"><img src="../asset/images/plus.png"></div>
											</div>
										</div>
										<hr>
										<div class="form-in">
											<div class="kiri">
												<h5>Wash & Fold</h5>
												<p>Rp 5.000 / kg</p>
											</div>
											<div class="kanan">
												<div class="img"><img src="../asset/images/minus.png"></div>
												<div class="center">
													<h5>3</h5>
													<p>(kg)</p>
												</div>
												<div class="img"><img src="../asset/images/plus.png"></div>
											</div>
										</div>
										<hr>
										<div class="content-in">
											<div class="kgimg"><img src="../asset/images/weight.png"></div>
											<div class="text">
												<h5>Not sure how much your laundry weights?</h5>
												<p>Don't worry, our picker always recalculate the weight during pick up.</p>
											</div>
										</div>
										<div class="text-in">
											<p>P.S : Please seperate the clothes according the services.</p>
										</div>
										<div class="last">
											<p>3 kg</p>
										</div>
									</div>
								</div>
								<div class="topic-kiri">
									<div class="title">
										<h4>Basic Laundry (Kg)</h4>
									</div>
									<hr>
									<div class="content">
										<div class="form-in">
											<div class="kiri">
												<h5>Wash & Fold</h5>
												<p>Rp 5.000 / kg</p>
											</div>
											<div class="kanan">
												<div class="img"><img src="../asset/images/minus.png"></div>
												<div class="center">
													<h5>3</h5>
													<p>(kg)</p>
												</div>
												<div class="img"><img src="../asset/images/plus.png"></div>
											</div>
										</div>
										<hr>
										<div class="form-in">
											<div class="kiri">
												<h5>Wash & Fold</h5>
												<p>Rp 5.000 / kg</p>
											</div>
											<div class="kanan">
												<div class="img"><img src="../asset/images/minus.png"></div>
												<div class="center">
													<h5>3</h5>
													<p>(kg)</p>
												</div>
												<div class="img"><img src="../asset/images/plus.png"></div>
											</div>
										</div>
										<hr>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="icon">
						<img src="../asset/images/right-arrow1.png" alt="icon">
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>