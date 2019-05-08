<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../asset/css/washme-order1.css">
	<title></title>
</head>
<body>
	<?php
		include "../php/connection.php";

		$id = $_SESSION['id'];

		$sql = "select * from laundrys where id='$id'";
		$query = mysqli_query($conn,$sql);
		$re = mysqli_fetch_array($query);
		$name = $re['name'];
		$alamat = $re['alamat'];
		$status = $re['status'];
		$time_close = $re['time_close'];
	?>
<form>
	<div class="container-fluid-screen">
		<div class="background">
			<div class="back"><a href="home.php"><img src="../asset/images/left-arrow.png" class="img"></a></div>
		</div>
		<div class="padding flex">
			<input type="hidden" name="" value="<?php echo($id)?>">
			<div class="text"><?php echo $name?>, <?php echo $alamat?></div>
			<div class="border-mid"><img src="../asset/images/map.png" class="img"></div>
		</div>
		<div class="padding jarak">0.94 Km</div>
		<hr class="hr">
		<div class="padding flex box1">
			<div><img src="../asset/images/clock3.png" class="img"></div>
			<div class="text1"><?php echo $status?></div>
			<div class="text2">until <?php echo $time_close?> today</div>
		</div>
		<div class="background1">
			<button class="button" type="button" name="order" id="order" onclick="save_User(<?php echo "'$id'";?>)">Fill Order Format</button>
		</div>
	</div>
</form>
<script src="../js/userorder3.js"></script>
</body>
</html>