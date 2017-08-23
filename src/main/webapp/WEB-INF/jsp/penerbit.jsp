<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Penerbit</title>
<script type="text/javascript"
	src="/resources/assets/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="/resources/assets/DataTables-1.10.15/media/css/jquery.dataTables.min.css" />
<script type="text/javascript"
	src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#tambah-penerbit").on('click', function() {
			save();
		});
		
		$("#dt-penerbit").DataTable();
	});
	
	function hanyaAngka(evt) {
		  var charCode = (evt.which) ? evt.which : event.keyCode
		   if (charCode > 31 && (charCode < 48 || charCode > 57))

		    return false;
		  return true;
		}
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
				<td align="center"><h3>Masukan Penerbit</h3>
					<br></td>
			</tr>
			<tr>
				<td>
					<div class="form-group">
						<label for="kodedistributor">Kode Penerbit</label> <input
							style="width: 500px;" type="text" class="form-control"
							name="kode-penerbit" placeholder="Kode Penerbit">
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="form-group">
						<label for="namadistributor">Nama Penerbit</label> <input
							style="width: 500px;" type="text" class="form-control"
							name="nama-penerbit" placeholder="Masukan Nama Penerbit">
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="form-group">
						<label for="alamatdistributor">Alamat Penerbit</label>
						<textarea class="form-control" rows="3"
							placeholder="Masukan Alamat Penerbit" name="alamat"></textarea>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="form-group">
						<label for="notlpdistributor">No Telpon Penerbit</label> <input
							style="width: 500px;" type="number" min="0" max="125" step="1" class="form-control"
							name="notlppenerbit" placeholder="Masukan No Telpon Penerbit" onkeypress="return hanyaAngka(event)" required maxlength="13">
					</div>
				</td>
			</tr>
			<tr>
				<td align="right">
					<button type="button" class="btn btn-primary" id="tambah-penerbit" onclick="reload()">Add
						Distributor</button>
				</td>
			</tr>
		</table>
		<br>

		<table class="table table-bordered" id="dt-penerbit">
			<thead>
				<tr>
					<td>Kode Penerbit</td>
					<td>Nama Penerbit</td>
					<td>Alamat Penerbit</td>
					<td>No Telpon Penerbit</td>
					<!-- <td colspan="2">Action</td> -->
				</tr>
			</thead>
			<tbody>
				<c:forEach var="penerbit" items="${penerbit }">
					<tr>
						<td>${penerbit.kodePenerbit}</td>
						<td>${penerbit.namaPenerbit}</td>
						<td>${penerbit.alamatPenerbit}</td>
						<td>${penerbit.telponPenerbit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script type="text/javascript">
	function save() {
		var kodePenerbit = $("input[name='kode-penerbit']").val();
		var namaPenerbit = $("input[name='nama-penerbit']").val();
		var alamatPenerbit = $("textarea[name='alamat']").val();
		var telepon = $("input[name='notlppenerbit']").val();
		
		var penerbit ={
				kodePenerbit : kodePenerbit,
				namaPenerbit : namaPenerbit,
				alamatPenerbit : alamatPenerbit,
				telponPenerbit : telepon
		}
		console.log(penerbit);
		
		 $.ajax({
			url : "/penerbit/save",
			type : "POST",
			contentType : "application/json",
			data : JSON.stringify(penerbit),
			success : function (data, a, xhr){
				if (xhr.status == 201) {
					console.log("Data Berhasil Di Create");
					alert("Data Berhasil di tambahkan");
				}
			}
		});
	}
	
	function reload() {
		location.reload();
	}
</script>
<script type="text/javascript" src="/resources/assets/DataTables-1.10.15/media/js/jquery.dataTables.min.js"></script>
</html>