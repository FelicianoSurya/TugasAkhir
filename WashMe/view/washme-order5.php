<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/washme-order5.1.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<form>
	<div class="container-fluid-screen">
		<div class="header">
			<img src="../asset/images/left-arrow2.png">
			<div class="atas"><p>Fill Delivery Format</p></div>
		</div>
		<div class="body">
			<form action="../php/saveorder.php" method="POST">
				<?php
				include "../php/connection.php";

				$id = $_SESSION['id'];

				$sql = "select * from laundrys where id='$id'";
				$query = mysqli_query($conn,$sql);
				$num = mysqli_num_rows($query);
				$tgl = date('Y-m-d');
				$angka = $num + 1;
				$notransaksi = "TL-$angka";
				$res = mysqli_fetch_array($query);
				$id = $res['id'];
				$service = $res['service'];
				$harga = $res['harga'];
			?>
			<input type="hidden" name="notransaksi" id="notransaksi" value="<?php echo $notransaksi;?>">
			<input type="hidden" name="id" id="id" value="<?php echo $id;?>">
			<div class="text1">Set Delivery Date</div>
			<select class="select">
				<input type="text" name="tgl_deliv" id="tgl_deliv">
			</select>
			<div class="select jarak">
				<div>Extra :</div>
				<div>Rp 3.000 x 3 Kg = Rp 9.000</div>
				<div>Rp 5.000 x 2 Pcs = Rp 10.000</div>
				<div>Total = Rp 19.000</div>
			</div>
			<div class="text2">Set Delivery Time</div>
			<div class="box">
				<input type="time" name="jam_deliv" id="jam_deliv" min="09:00" max="17:00" required class="time">
				<div class="strip"></div>
				<input type="time" name="batas_deliv" id="batas_deliv" min="09:00" max="17:00" required class="time">
			</div>
			<div class="box1">
				<div>Home</div>
				<div class="strip1">-</div>
				<div class="text"><input type="text" name="alamat_deliv" id="alamat_deliv" required style="border:none;"></div>
				<img src="../asset/images/location-mark-blue.png" class="img">
			</div>
			<hr class="hr">
			<div class="box3">
				<div class="text"><input type="text" name="note_deliv" id="note_deliv" required style="border:none; width: 100%;"></div>
				<div class="logo"><img src="../asset/images/writing1.png"></div>
			</div>
			<hr class="hr">
			<div class="box4">
				<input type="submit" name="submit2" id="submit2" style="border:none; background: none; color: white;" value="submit"><img src="../asset/images/right2.png" class="img1">
			</div>
			</form>
		</div>
	</div>
</form>
</body>
</html>