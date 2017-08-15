<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Peminjaman Grand Media</title>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css" />
<script type="text/javascript"
	src="/resources/assets/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<style>
th {
	background-color: #4CAF50;
	color: white;
}
</style>

<script type="text/javascript">
$(document).ready(function(){

	
	showData();
	//alert('Mulai Transaksi');
	$("#save").on("click", function() {
		save();
		clear();
	});
	$(document).on("click", '.delete', function(){
		onDelete(this);
	});
	$(document).on("click", ".update", function(){
		var id = $(this).attr('id_update');
		$.ajax({
			url : '/anggota/getbyid/'+ id,
			type : 'GET',
			dataType: 'json',
			success : function(data){
				updateColumn(data);
			}
		});
	});
});
</script>
</head>
<body style="background: #f5f5f5;">
	<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Grand Media</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">Page 1</a></li>
				<li><a href="#">Page 2</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
	 <li><a href="#"><span class="glyphicon glyphicon-user"></span> Nama Admin </a></li>

    </ul>
		</div>
	</div>
	</nav>
	<div class="container">
	<h2><center>Registrasi Anggota</center></h2>
	<form action="#">
		<div class="form-group col-xs-4">
			<label for="nik">NIK:</label>
			<input type="text" class="form-control" id="nik" placeholder="input oleh user (unique)" name="nik">
			<label for="nama">Nama:</label>
			<input type="text" class="form-control" id="nama" placeholder="input oleh user " name="nama">	
			<label for="jk">Gender:</label>
			<div class="radio">
  				<label><input type="radio" name="jk" value="Laki">Laki-laki </label>
  				<label><input type="radio" name="jk" value="Perempuan">Perempuan </label>
			</div><br/>
			 <label for="alamat">Alamat:</label>
 			 <textarea class="form-control" rows="3" id="alamat" name="alamat"></textarea>
			<label for="pekerjaan">Pekerjaan:</label>
			<input type="text" class="form-control" id="pekerjaan" placeholder="input oleh user " name="pekerjaan">	 
			<label for="email">Email:</label>
			<input type="text" class="form-control" id="email" placeholder="input oleh user(unique) " name="email"> <br/>	
			<input type="submit" name="save" id="save" value="SAVE" class="btn btn-primary">
		</div>
		<div class="form-group col-xs-8">
			<table id="anggota-dt" class="table table-striped">
				<thead>
					<tr>
						<th>NIK</th>
						<th>Nama</th>
						<th>JK</th>
						<th>Alamat</th>
						<th>No Handphone</th>
						<th>Email</th>
						<th colspan="2">Aksi</th>
					</tr>		
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>11404477</td>
						<td>Muhamad Ruslan</td>
						<td>Bogor</td>
						<td>083811748837</td>
						<td>ruslanmuhamad102@gmail.com</td>
					</tr>
					<tr>
						<td>2</td>
						<td>11404488</td>
						<td>Mr. Alief</td>
						<td>Bogoer</td>
						<td>085817244510</td>
						<td>muhamadruslan15091999@gmail.com</td>
					</tr>
					<tr></tr>
				</tbody>
			</table>
		</div>
	</form>	
	</div>
</body>
<script>
var jk;
$(document).ready(function(){
	$('input[name="jk"]').on("change", function(){
		jk = $(this).val();
	});
});
function showData(){
	$.ajax({
		url : '/anggota/getAll',
		type : 'POST',
		dataType : 'json',
		success : function(data, x, xhr){
			fillData(data);
		}
	});
}
function fillData(data){
	var dt = $("#anggota-dt");
	var tbody = dt.find('tbody');
	tbody.find('tr').remove();
	
	$.each(data, function(index, anggota){
		var trString = "<tr>";
				trString += "<td>";
				 	trString += anggota.nik;
					trString += "</td>";
					trString += "<td>";
				 		trString += anggota.nama;
					trString += "</td>";
					trString += "<td>";
			 			trString += anggota.jk;
					trString += "</td>";
					trString += "</td>";
					trString += "<td>";
				 		trString += anggota.alamat;
					trString += "</td>";
					trString += "<td>";
			 			trString += anggota.pekerjaan;
					trString += "</td>";
					trString += "</td>";
					trString += "<td>";
				 		trString += anggota.email;
					trString += "</td>";
					trString += "<td>";
				 		trString += "<a id_delete='"+anggota.id+"' href='#' class='delete'>Delete</a>";
				trString += "</td>";
				trString += "</td>";
					trString += "<td>";
				 		trString += "<a id_update='"+anggota.id+"' href='#' class='update'>Update</a>";
					trString += "</td>";
			trString += "</tr>"
			tbody.append(trString);
	});
}

	function clear(){
		$('input[name="nik"]').val("");
		$('input[name="nama"]').val("");
		$('input[name="jk"]').val("");
		$('textarea[name="alamat"]').val("");
		$('input[name="pekerjaan"]').val("");
		$('input[name="email"]').val("");
	}
	function save(){
			var nik = $('input[name="nik"]').val();
			var nama = $('input[name="nama"]').val();
			var alamat = $('textarea[name="alamat"]').val();
			var pekerjaan = $('input[name="pekerjaan"]').val();
			var email = $('input[name="email"]').val();
			
			//Sama dengan java POJO (Encapsulation)
			var anggota = {
				nik : nik,
				nama : nama,
				jk : jk,
				alamat : alamat,
				pekerjaan : pekerjaan,
				email : email
			}
			
			//console.log(anggota);
			//AJAX => asyncronous javascript and XML
			$.ajax({
				url : '/anggota/save',
				type : 'POST',
				contentType : 'application/json',
			//	dataType : 'json',
				data : JSON.stringify(anggota),
				success : function(data, a, xhr){
			//		console.log(xhr.status);
					if(xhr.status == 201){
						console.log("Berhasil disimpan");
						showData();
					}
				}
			});
		
	}
	

	function onDelete(ini){
		var id = $(ini).attr('id_delete');
		alert();
		//ajax for deleting
		$.ajax({
			url : '/anggota/delete/'+id,
			type : 'DELETE',
			success : function(data){
				showData();
			}
		});
	}
	function updateColumn(data){
		$('input[name="id"]').val(data.id);
		$('input[name="nik"]').val(data.nik);
		$('input[name="nama"]').val(data.nama);
		$('input[name="jk"]').val(data.jk);
		$('textarea[name="alamat"]').val(data.alamat);
		$('input[name="pekerjaan"]').val(data.pekerjaan);
		$('input[name="email"]').val(data.email);
	}
</script>

</html>