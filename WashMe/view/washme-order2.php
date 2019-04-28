<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../asset/css/washme-order2.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid-screen">
		<div class="header">
			<img src="../asset/images/left-arrow2.png">
			<div class="atas"><p>Fill Order Format</p></div>
		</div>

		<div class="body">
			<?php
				include "../php/connection.php";
				$tgl = date('Y-m-d');
				$sql = "select * from temptransaksi";
				$query = mysqli_query($conn,$sql);
				$num = mysqli_num_rows($query);
				$angka = $num + 1;
				$notransaksi = "TL-$angka";
				$res = mysqli_fetch_array($query);
				$id = $res['id'];
				$service = $res['service'];
				$harga = $res['harga'];
			?>
			<input type="hidden" name="notransaksi" id="notransaksi" value="<?php echo $notransaksi;?>">
			<input type="hidden" name="id" id="id" value="<?php echo $id;?>">
			<input type="hidden" name="service" id="service" value="<?php echo $service;?>">
			<input type="hidden" name="harga" id="harga" value="<?php echo $harga;?>">
			<div class="text1">Set Pick Up Date</div>
			<select class="select">
				<option name="tgl_ambil" id="tgl_ambil"><?php echo $tgl?></option>
			</select>
			<div class="text2">Set Pick Up Time</div>
			<div class="box">
				<input type="time" name="jam_ambil" id="jam_ambil" min="09:00" max="17:00" required class="time">
				<div class="strip"></div>
				<input type="time" name="batas_ambil" id="batas_ambil" min="09:00" max="17:00" required class="time">
			</div>
			<div class="box1">
				<div>Home</div>
				<div class="strip1">-</div>
				<div><input type="text" name="alamat_ambil" id="alamat_ambil" required style="border:none;"></div>
				<img src="../asset/images/location-mark-blue.png" class="img">
			</div>
			<hr class="hr">
			<div class="box2">
				<div>Home</div>
				<div class="jarak1">/</div>
				<div class="jarak1">Office</div>
				<div class="jarak1">/</div>
				<div class="jarak1">Campus</div>
				<div class="jarak1">/</div>
				<div>Others</div>
			</div>
			<div class="box3">
				<div class="text"><input type="text" name="note_ambil" id="note_ambil" required style="border:none; width: 100%;"></div>
				<div class="logo"><img src="../asset/images/writing1.png"></div>
			</div>
			<hr class="hr">
			<div class="box4">
				<button name="submit" id="submit" onclick="saveTransaksi(<?php echo " '$notransaksi','$id','$service','$harga'"; ?>)" style="border:none; background: none; color: white;" value="submit">submit<img src="../asset/images/right2.png" class="img1"></button>
			</div>
		</div>
	</div>
<script src="../js/savetransaksi2.js"></script>
</body>
</html>