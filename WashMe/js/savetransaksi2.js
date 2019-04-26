function saveTransaksi(notransaksi,id,service,harga){
	var notemp = document.getElementById('notemp').value;
	var tgl_ambil = document.getElementById('tgl_ambil').value;
	var jam_ambil = document.getElementById('jam_ambil').value;
	var batas_ambil = document.getElementById('batas_ambil').value;
	var alamat_ambil = document.getElementById('alamat_ambil').value;
	var note_ambil = document.getElementById('note_ambil').value;
	var submit = document.getElementById('submit').value;
	var url = "washme-order3.php?notemp="+"&notransaksi="+notransaksi+"&id="+id+"&service="+service+"&harga="+harga+"&tgl_ambil="+tgl_ambil+"&jam_ambil="+jam_ambil+"&batas_ambil="+batas_ambil+"&alamat_ambil="+alamat_ambil+"&note_ambil="+note_ambil+"&submit="+submit;
	window.location = url;
}