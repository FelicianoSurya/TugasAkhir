function request(username,date){
	var req = document.getElementById('req').value;
	var laundryname = document.getElementById('laundryname').value;
	var alamat = document.getElementById('alamat').value;
	var kota = document.getElementById('kota').value;
	var nohp = document.getElementById('nohp').value;
	location.href = "../php/request.php?username="+username+"&date="+date+"&req="+req+"&laundryname="+laundryname+"&alamat="+alamat+"&kota="+kota+"&nohp="+nohp+"&submit=Submit";
}