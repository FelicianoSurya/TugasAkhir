<!DOCTYPE html>
<html>
<head>
	<title>WashMe Mobile</title>
	<link rel="icon" href="../../asset/images/logo.png">
	<link rel="stylesheet" type="text/css" href="../../asset/css/laundry/shopproduct.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<form action="save.php" method="POST">
	<div class="container-fluid-screen">
	<div class="body">
		<div class="flex header">
			<div class="title">Add Product</div>
			<input type="button" name="submit" id="submit" value="submit" class="submit">
		</div>
		<div class="box">
			<input type="file" name="image" id="image" class="img1">
		</div>
		<hr class="hr">
		<div class="box">
			<input type="text" name="nama_product" id="nama_product" placeholder="Product Name" class="text">
		</div>
		<hr class="hr">
		<div class="box">
			<input type="text" name="description" id="description" placeholder="Product Description / #hashtags" class="text">
		</div>
		<hr class="hr">
		<div class="box flex">
			<img src="../../asset/images/list.png" class="img">
			<div class="box-in">
				<p>Category</p>
				<div style="display: flex; justify-content: flex-end; position: relative; width: 100%; margin-top: -100px;">
					<select style="position: absolute; padding: 20px 40px; border: none; width: 65%;" id="kategori">
						<option></option>
						<option><img src="../../asset/images/boy.png"> Iron</option>
						<option>Hanger</option>
						<option>Clothes Line</option>
					</select>
					<img src="../../asset/images/right-arrow.png" class="img2" style="position: absolute; right: 0px; margin-top: 10px;">
				</div>
			</div>
		</div>
		<hr class="hr">
		<div class="box flex">
			<img src="../../asset/images/tag.png" class="img">
			<div class="box-in">
				<p>Price</p>
				<div class="flex-end">
					<p>Rp</p>
					<input type="number" name="harga" id="harga" placeholder="" class="text3">
				</div>
			</div>
		</div>
		<hr class="hr">
		<div class="box flex">
			<img src="../../asset/images/package.png" class="img">
			<div class="box-in">
				<p>Stock</p>
				<input type="number" name="stok" id="stok" placeholder="Set Stock" class="text2">
			</div>
		</div>
		<hr class="hr">
		<div class="box flex">
			<img src="../../asset/images/scale.png" class="img">
			<div class="box-in">
				<p>Weight</p>
				<input type="number" name="berat" id="berat" placeholder="Set Weight" class="text2">
			</div>
		</div>
		<hr class="hr">
		<div class="box flex">
			<img src="../../asset/images/parking.png" class="img">
			<div class="box-in">
				<p>Shipping Fee</p>
				<div class="flex-end">
					<p>Rp</p>
					<input type="number" name="fee" id="fee" placeholder="" class="text3">
				</div>
			</div>
		</div>
		<hr class="hr">
		<div class="footer">
			<a href="home.php">
				<div class="box4">
					<img src="../../asset/images/home2.png" class="img2">
					<div class="text1">Home</div>
				</div>
			</a>
			<a href="myorders.php">
				<div class="box4">
					<img src="../../asset/images/shopping-list2.png" class="img2">
					<div class="text1">Orders</div>
				</div>
			</a>
			<a href="shopproduct.php">
				<div class="box4">
					<img src="../../asset/images/shopping-cart.png" class="img2">
					<div class="text">WashMe Shop</div>
				</div>
			</a>
			<a href="myaccount.php">
				<div class="box4">
					<img src="../../asset/images/profile2.png" class="img2">
					<div class="text1">Account</div>
				</div>
			</a>
		</div>
	</div>
	</div>
</form>
</body>
</html>