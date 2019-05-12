<?php 
include "connection.php";

$username = $_POST['username'];
$laundryname = $_POST['laundryname'];
$alamat = $_POST['alamat'];
$kota = $_POST['kota'];
$nohp = $_POST['nohp'];
$status = $_POST['status'];

$submit = $_POST['submit'];

if($submit == 'Send' && $username == $username){
	$sql = "update users set status='$status' where username='$username'";
	$query = mysqli_query($conn,$sql) or die('error $sql');
	$sql1 = "delete from request_laundry where username = '$username'";
	$query1 = mysqli_query($conn,$sql1);
	$sql2 = "insert into laundrys(name,alamat,owner,kota,nohp) values('$laundryname','$alamat','$username','$kota','$nohp')";
	$query2 = mysqli_query($conn,$sql2);
}

header("location:../view/admin/request-laundry.php");

 ?>