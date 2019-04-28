<?php
	include "connection.php";

	$notransaksi = $_POST['notransaksi'];
	$id = $_POST['id'];
	$tgl_ambil = $_POST['tgl_ambil'];
	$jam_ambil = $_POST['jam_ambil'];
	$batas_ambil = $_POST['batas_ambil'];
	$alamat_ambil = $_POST['alamat_ambil'];
	$note_ambil = $_POST['note_ambil'];
	$service = $_POST['service'];
	$harga = $_POST['harga'];
	$jlh_kg = $_POST['jlh_kg'];
	$total = $_POST['total'];
	$tgl_deliv = $_POST['tgl_deliv'];
	$jam_deliv = $_POST['jam_deliv'];
	$batas_deliv = $_POST['batas_deliv'];
	$alamat_deliv = $_POST['alamat_deliv'];
	$note_deliv = $_POST['note_deliv'];
	$submit = $_POST['submit'];
	$submit1 = $_POST['submit1'];
	$submit2 = $_POST['submit2'];

	if($submit == 'submit'){
		$sql = "insert into temptransaksi(no,id,tgl_ambil,jam_ambil,batas_ambil,alamat_ambil,note_ambil) values('$notransaksi','$id','$tgl_ambil','$jam_ambil','$batas_ambil','$alamat_ambil','$note_ambil')";
		$query = mysqli_query($conn,$sql);
		header("location:../view/washme-order3.php");
	}
	else if($submit1 == 'submit'){
		$sql = "update temptransaksi set service='$service',harga='$harga',jlh_kg='$jlh_kg',total='$total' where no='$notransaksi'";
		$query = mysqli_query($conn,$sql);
		header("location:../view/washme-order5.php");
	}
	else if($submit2 == 'submit'){
		$sql = "update temptransaksi set tgl_deliv='$tgl_deliv',jam_deliv='$jam_deliv',batas_deliv='$batas_deliv',alamat_deliv='$alamat_deliv',note_deliv='$note_deliv' where no='$notransaksi'";
		$query = mysqli_query($conn,$sql) or die("error '$sql'");
		header("location:../view/washme-order6.php");
	}
?>