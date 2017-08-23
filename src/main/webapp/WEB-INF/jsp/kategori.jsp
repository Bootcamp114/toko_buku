<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Kategori</title>
<script type="text/javascript"
	src="/resources/assets/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
<script type="text/javascript"
	src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
		$("#tambah-kategori").on('click', function() {
			save();
		});

		$(document).on("click", '.update', function() {
			var id = $(this).attr('id_update');
			$.ajax({
				url : '/employee/getdatabyid/' + id,
				type : 'GET',
				dataType : 'json',
				success : function(data) {
					updateColumn(data);
				}
			});
		});
		
		//Untuk Ngehapus
		$(document).on("click", '.delete', function() {
			onDelete(this);
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
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<table align="center">
			<tr>
				<td align="center"><h3>Masukan Kategori</h3>
					<br></td>
			</tr>
			<tr>
				<td>
					<div class="form-group">
					<input type="hidden" id="id"/>
						<label for="kodedistributor">Kode Kategori</label> <input
							style="width: 500px;" type="text" class="form-control"
							name="kode-kategori" placeholder="Kode Kategori">
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="form-group">
						<label for="namadistributor">Jenis Kategori</label> <input
							style="width: 500px;" type="text" class="form-control"
							name="jenis-kategori" placeholder="Masukan Nama Kategori">
					</div>
				</td>
			</tr>
			<tr>
				<td align="right">
					<button type="button" class="btn btn-primary" id="tambah-kategori">Tambah Kategori</button>
				</td>
			</tr>
		</table>
		<br>

		<table class="table table-bordered">
			<thead>
				<tr>
					<td>Kode Kategori</td>
					<td>Jenis Kategori</td>
					<td colspan="2">Action</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="kategori" items="${listKategori }">
					<tr>
						<td>${kategori.kodeKategori}</td>
						<td>${kategori.jenisKategori}</td>
						<td><a href='#' class='delete' id_delete="${kategori.id }">DELETE</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script type="text/javascript">
	function save() {
		var kodeKategori = $("input[name='kode-kategori']").val();
		var jenisKategori = $("input[name='jenis-kategori']").val();
		
		var kategori ={
				kodeKategori : kodeKategori,
				jenisKategori : jenisKategori,
		}
		console.log(kategori);
		
		 $.ajax({
			url : "/kategori/save",
			type : "POST",
			contentType : "application/json",
			data : JSON.stringify(kategori),
			success : function (data, a, xhr){
				if (xhr.status == 201) {
					console.log("Data Berhasil Di Create");
					alert("Data Berhasil di tambahkan");
				}
			}
		});
	}
	
	function onDelete(ini) {
		var id = $(ini).attr("id_delete");
		console.log(id);
		$.ajax({
			url : "/kategori/delete/" + id,
			type : "DELETE",
			success : function(data) {
				console.log(data);
			}
		});
	}
</script>
</html>