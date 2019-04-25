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
			<div class="text1">Set Delivery Date</div>
			<select class="select">
				<option>Wednesday, 27 March 2019</option>
				<option>Thursday, 28 March 2019</option>
			</select>
			<div class="select jarak">
				<div>Extra :</div>
				<div>Rp 3.000 x 3 Kg = Rp 9.000</div>
				<div>Rp 5.000 x 2 Pcs = Rp 10.000</div>
				<div>Total = Rp 19.000</div>
			</div>
			<div class="text2">Set Delivery Time</div>
			<div class="box">
				<input type="time" name="time" id="time" min="00:00" max="24:00" required class="time">
				<div class="strip"></div>
				<input type="time" name="time" id="time" min="00:00" max="24:00" required class="time">
			</div>
		</div>
	</div>
</form>
</body>
</html>