<html>
<head>
	<title>Wash Me</title>
	<link rel="icon" href="../../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../../asset/css/admin-request.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<header class="header">
		<div class="header-kiri">
			<p>Admin</p>
		</div>
		<div class="header-right">
			<a href="../login.php">Logout</a>
		</div>
	</header>
	<div class="body">
		<?php include "kiri.php" ?>
		<div class="right">
			<div class="box">
				<?php 
				include "../../php/connection.php";
				$sql = 'select * from request_laundry';
				$query = mysqli_query($conn,$sql);
				$num = mysqli_num_rows($query);
				for($x = 1; $x <= $num; $x++){
					$re = mysqli_fetch_array($query);
					$id = $re['id'];
					$username = $re['username'];
					$text = $re['text_request'];
					$date = $re['time_request'];
				 ?>
				<div class="box-req">
					<img src="../../asset/images/boy.png" alt="boy">
					<p>Username : <?php echo $username ?></p>
					<p class="date">Date Request : <?php echo $date ?></p>
					<div class="button_bot">
						<button class="btn btn-md btn-info" data-toggle="modal" data-target="#openmore">See More</button>
						<button class="btn btn-md btn-danger" onclick="del_req(<?php echo "'$id'" ?>)">Reject</button>
					</div>
				</div>	  
				<div class="modal fade" id="openmore" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<img style="width:35px;" src="../../asset/images/boy.png" alt="boy">
								<h3 style="padding-left:10px;"><?php echo $username ?></h3>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
							<div class="modal-body" style="padding:20px;">
								<p style="margin:0">Text Request : <?php echo $text ?></p>
							</div>
							<div class="modal-footer">
								<button class="btn btn-md btn-success">Accept</button>
								<button class="btn btn-md btn-danger" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			<?php } ?>
		</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript" src="../../js/admin/admin.js">	</script>