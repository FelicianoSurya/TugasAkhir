<?php
	include "connection.php";
	$sql = "select * from products";
	$query = mysqli_query($conn,$sql);

	$kode_product = $_POST['kode_product'];
	$nama_product = $_POST['nama_product'];
	$kategori = $_POST['kategori'];
	$harga = $_POST['harga'];
	$stok = $_POST['stok'];
	$shop = $_POST['shop'];
	$rating = $_POST['rating'];
	$description = $_POST['description'];
	$image = $_POST['image'];
	$submit = $_POST['submit'];

	if($submit == 'save'){
		$sql = "insert into products values('$kode_product','$nama_product','$kategori','$harga','$stok','$shop','$rating','$description','$image')";
		$query = mysqli_query($conn,$sql);
	}
	header("location:shopproduct.php");
?>