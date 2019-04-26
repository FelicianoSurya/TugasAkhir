function saveUser(name,alamat,status,time_close,service,harga){
	var url = "washme-order.php?name="+name+"&alamat="+alamat+"&status="+status+"&time_close="+time_close+"&service="+service+"&harga="+harga;
	window.location = url;
}