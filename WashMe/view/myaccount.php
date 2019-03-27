<?php
	include 'security.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/myaccount.css">
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
					<h4>My Account</h4>
				</div>
			</header>
		</div>
	</div>
	<hr class="hr1">
	<div class="content">
		<div class="content-in">
			<div class="user">
				<h5><?php echo $_SESSION['username']; ?></h5>
				<p><?php echo $_SESSION['email']; ?></p>
				<p class="no"><?php echo $_SESSION['nohp']; ?></p>
			</div>
			<div class="edit">
				<button type="button" id="profile">Edit Profile</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>