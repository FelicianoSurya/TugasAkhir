<?php
	session_start();
	include "connection.php";

	$id = $_GET['id'];

	$_SESSION['id'] = $id;
	header("location:../view/washme-order2.php");
?>