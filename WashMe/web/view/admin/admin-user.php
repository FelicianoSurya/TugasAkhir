<html>
<head>
	<title>Wash Me</title>
	<link rel="icon" href="../../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../../asset/css/admin-user.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<?php 
	session_start();
	 ?>
	<header class="header">
		<div class="header-kiri">
			<p>Admin</p>
		</div>
		<div class="header-right">
			<a href="../login.php">Logout</a>
		</div>
	</header>
	<div class="body">
		<div class="left">
			<div class="top">
				<div class="logo">
					<img src="../../asset/images/logo.png" alt="logo">
				</div>
				<div class="topic">
					<p>WashMe</p>
				</div>
			</div>
			<div class="bot">
				<div class="info-user">
					<div class="picture">
						<img src="../../asset/images/girl.png" alt="picture">
					</div>
					<div class="info">
						<div class="name">
							<p><?php echo $_SESSION['username'] ?></p>
						</div>
						<div class="information">
							<div class="status">
								<p><?php echo $_SESSION['status'] ?></p>
							</div>
						</div>
					</div>
				</div>
				<div class="menu">
					<a href="admin-user.php"><div class="menu1">
						<div class="logo">
							<img src="../../asset/images/profile1.png" alt="home">
						</div>
						<div class="nama">
							<p>User</p>
						</div>
					</div></a>
					<a href="admin-request.php"><div class="menu2">
						<div class="logo">
							<img src="../../asset/images/shopping-list1.png" alt="home">
						</div>
						<div class="nama">
							<p>Request</p>
						</div>
					</div></a>
					<a href="admin-laundry.php"><div class="menu2">
						<div class="logo">
							<img src="../../asset/images/shopping-list1.png" alt="home">
						</div>
						<div class="nama">
							<p>Laundry</p>
						</div>
					</div></a>
					<a href="admin-setting.php"><div class="menu2">
						<div class="logo">
							<img src="../../asset/images/profile1.png" alt="home">
						</div>
						<div class="nama">
							<p>Setting</p>
						</div>
					</div></a>
				</div>
			</div>
		</div>
		<div class="right">
			<div class="body-right">
				<table border="4">
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
					<?php 
					include "../../php/connection.php";
					$sql = 'select * from users';
					$query = mysqli_query($conn,$sql);
					$num = mysqli_num_rows($query);

					for($x=1;$x<=$num;$x++){
						$re = mysqli_fetch_array($query);
						if($re['status'] == 'user'){
						$id = $re['id'];
						$username = $re['username'];
						$email = $re['email'];
					 ?>
					
					<tr>
						<td><?php echo $id ?></td>
						<td><?php echo $username ?></td>
						<td><?php echo $email ?></td>
						<td>
							<input type='submit'class="btn-sm btn-danger" id="delete" name="delete" value="Delete" onclick="del_data(<?php echo $id ?>)">
						</td>
					</tr>
					<?php }  }?>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
<script src="../../js/admin/admin.js"></script>