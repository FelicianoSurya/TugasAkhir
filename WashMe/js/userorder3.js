function saveUser(id){
	location.href = '../php/userorder.php?id='+id;
}
function save_User(id){
	location.href = '../php/userorder1.php?id='+id;
}
function save_Order(id){
	location.href = '../php/showorder.php?id='+id;
}
function totalOrder(){
	var harga = document.getElementById('harga').value;
	var jlh = document.getElementById('jlh_kg').value;
	var total = harga * jlh;

	document.getElementById('total').value = total;
}