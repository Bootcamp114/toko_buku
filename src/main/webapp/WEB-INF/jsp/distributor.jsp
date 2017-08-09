<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Distributor</title>
<script type="text/javascript" src="/resources/assets/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
<script type="text/javascript" src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
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
		<td align="center"><h3>Masukan Distributor</h3><br></td>
		</tr>
			<tr>
				<td>
				<div class="form-group">
					<label for="kodedistributor">Kode Distributor</label>
					<input style="width: 500px;" type="text" class="form-control" id="kodedistributor" placeholder="Kode Dsitributor">
				</div>
				</td>
			</tr>
			<tr>
				<td>
				<div class="form-group">
					<label for="namadistributor">Nama Distributor</label>
					<input style="width: 500px;" type="text" class="form-control" id="namadistributor" placeholder="Masukan Nama Dsitributor">
				</div>
				</td>
			</tr>
			<tr>
				<td>
				<div class="form-group">
					<label for="alamatdistributor">Alamat Distributor</label>
					<textarea class="form-control" rows="3" placeholder="Masukan Alamat DISTRIBUTOR"></textarea>
				</div>
				</td>
			</tr>
			<tr>
				<td>
				<div class="form-group">
					<label for="notlpdistributor">No Telpon Distributor</label>
					<input style="width: 500px;" type="number" class="form-control" id="notlpdistributor" placeholder="Masukan No Telpon Dsitributor">
				</div>
				</td>
			</tr>
			<tr>
				<td align="right">
				<button type="button" class="btn btn-primary">Add Distributor</button>
				</td>
			</tr>
		</table><br>
		
		<table class="table table-bordered">
			<thead>
				<tr>
					<td>Kode Distributor</td>
					<td>Nama Distributor</td>
					<td>Alamat Distributor</td>
					<td>No Telpon Distributor</td>
					<td colspan="2">Action</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>D001</td>
					<td>Sinar Buku</td>
					<td>Jl Sokatengah Kecamatan Bumijawa</td>
					<td>082328434676</td>
					<td><a href="#" class="glyphicon glyphicon-remove-sign"> Hapus</a></td>
					<td><a href="#" class="glyphicon glyphicon-open"> Update</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>