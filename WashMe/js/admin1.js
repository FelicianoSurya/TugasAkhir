function deleteData(id){
	location.href = "../php/admin_user.php?submit=Delete&id="+id;
}

function deleteLaundry(id){
	location.href = "../php/admin_laundry.php?submit=Delete&id="+id;
}

// function del_req(id){
// 	location.href = "../../php/admin/admin_request.php?id="+id+"&submit=Reject";
// }

// function del_req1(id){
// 	location.href = "../../php/admin/admin_request_make_laundry.php?id="+id+"&submit=Send";
// }
