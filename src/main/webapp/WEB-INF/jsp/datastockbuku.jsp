<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data Buku</title>
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
		//nampilin table buku
		/* $(document).on("click", ".delete" ,function(){
			var conf = confirm("Apakah anda yakin menghapus data ini ?");
			if (conf == true){
				onDelete(this);
				refresh();
			}
			
		}); */

		$(document).on("click", ".update", function() {
			alert("hllo brooo");
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
				<li><a href="#">Tambah Buku</a></li>
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
		<h3 align="center">Data Buku</h3>
		<p>
		<table class="table table-bordered" id="emp-dt">
			<thead>
				<tr>
					<th>Kode Buku</th>
					<th>Judul Buku</th>
					<th>Penulis</th>
					<th>Category</th>
					<th>Penerbit</th>
					<th>Tahun Terbit</th>
					<th>Distributor</th>
					<th>Harga</th>
					<th>Status</th>
					<th>Stock</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="buku" items="${buku }">
					<tr>
						<td>${buku.kodeBuku}</td>
						<td>${buku.judulBuku}</td>
						<td>${buku.penulis}</td>
						<td>${buku.kategori.jenisKategori}</td>
						<td>${buku.penerbit.namaPenerbit}</td>
						<td>${buku.tahunTerbit}</td>
						<td>${buku.distributor.namaDistributor}</td>
						<td>${buku.hargaBuku}</td>
						<td>${buku.status}</td>
						<td>${buku.stock}</td>
						<td><a href="#" id_delete="${buku.id_buku}"
							class="delete btn btn-danger btn-sm" onclick="reload()"><span
								class="fa fa-fw fa-times"></span>Hapus</a></td>
						<td><a href="#" id_update="${buku.id_buku}"
							class="delete btn btn-danger btn-sm" data-toggle="modal"
							data-target="#myModal"><span class="fa fa-fw fa-times"></span>Edit</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Tambah Stock
						Pembelian Buku</h4>
				</div>
				<div class="modal-body">
					<div class="form-group col-xs-6">
						<label for="kodebuku">Kode Buku</label> <input style="width: 45%;"
							type="text" class="form-control" name="kodeBuku"
							placeholder="Input Kode Buku">
					</div>
					<div class="form-group col-xs-6">
						<label for="judulbuku">Judul Buku</label> <input type="text"
							class="form-control" name="judulBuku"
							placeholder="Masukan Judul Buku">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function showData() {
		$.ajax({
			url : "/datastockbuku/getall",
			type : "POST",
			dataType : "JSON",
			success : function(data, x, xhr) {
				console.log("data is loaded");
				console.log(data);
				fillData(data);
			}
		});
	}

	function reload() {
		location.reload();
	}

	function onDelete(ini) {
		var id_buku = $(ini).attr("id_delete");
		console.log(id_buku);
		$.ajax({
			url : "/datastockbuku/delete/" + id_buku,
			type : "DELETE",
			success : function(data) {
				console.log(data);
				showData();
			}
		});
	}

	function onUpdate(ini) {

	}
</script>
</html>