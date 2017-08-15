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
//	alert('Mulai Transaksi');
	$("#selesai").on("click", function(){
		alert('Kembali ke transaksi baru');
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
	<h2><center>Form Buku Pinjaman</center></h2><br/>
	<form action="#">
		<div class="form-group col-xs-6">
			<label for="nik">No Buku:</label>
			<input type="text" class="form-control" id="no_buku" placeholder="input oleh user (unique)" name="no_buku" style="width: 63%;">
			</div>
			<div class="form-group col-xs-4">
			<label for="Kd Buku">Nama:</label>
			<select class="form-control" id="kd_buku">
				<option>Ex:1 BK001</option>
				<option>Ex:2 BK002</option>
				<option>Ex:3 BK003</option>
				<option>Ex:4 BK004</option>
				<option>Ex:5 BK005</option>
			</select>
		</div>
		<div class="form-group col-xs-4">
			<label for="Kd Buku">Kode Buku:</label>
			<select class="form-control" id="kd_buku">
				<option>Ex:1 BK001</option>
				<option>Ex:2 BK002</option>
				<option>Ex:3 BK003</option>
				<option>Ex:4 BK004</option>
				<option>Ex:5 BK005</option>
			</select>
		</div>
		<div class="form-group col-xs-4">
		<input type="submit" id="sumber-buku" name="sumber-buku" value="+ Add Sumber Buku" class="btn btn-primary" style="position:absolute; margin-top:25px;" data-toggle="modal"
					data-target="#add-sumber-buku"/>	
		</div>
		<div class="form-group col-xs-12">
		<input type="submit" id="save" name="save" value="SAVE" class="btn btn-primary"/>	
		</div>
	</form>	
	
		<table class="table table-striped">
			<thead>
				<tr>
					<th>No. Buku</th>
					<th>Kd. Buku</th>
					<th>Judul buku</th>
					<th>No. ISBN</th>
					<th>Penulis</th>
					<th>Penerbit</th>
					<th>Tahun terbit</th>
					<th>Harga</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>BK001</td>
					<td>PJ001</td>
					<td>Adaapa Dengan Java</td>
					<td>9812345</td>
					<td>Andrea Sirata</td>
					<td>Bintang Jakarta</td>
					<td>2010</td>
					<td>30.000</td>
					<td><a class="btn btn-danger btn-xs">Hapus</a></td>
				</tr>
				<tr>
					<td>BK002</td>
					<td>PJ002</td>
					<td>Laskar Hitam Pulih</td>
					<td>654768345</td>
					<td>Ulul Maul</td>
					<td>Bogor Beriman</td>
					<td>2014</td>
					<td>15.000</td>
					<td><a class="btn btn-danger btn-xs">Hapus</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	
		<!-- Modal -->
	<div class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="gridSystemModalLabel" id="add-sumber-buku">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">Tambah Donatur</h4>
				</div>
				<div class="modal-body">
					<!-- <p>This is a small modal.</p>-->
					<div class="form-group">
						<label class="control-label col-sm-2" for="no_sumber_buku">No.Sumber Buku:</label>
						<input type="text" class="form-control" id="no_sumber_buku" placeholder="Auto">
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="nama">Nama:</label> <input
							type="text" class="form-control" id="nama"
							placeholder="Auto (Sesuai data buku)">
					</div>

					<div class="form-group">
						<label for="alamat">Alamat:</label>
						<textarea class="form-control" rows="3" id="alamat"></textarea>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="telepon">telepon:</label>
						<input type="text" class="form-control" id="telepon"
							placeholder="di input user">
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">email:</label>
						<input type="text" class="form-control" id="email"
							placeholder="di input user">
					</div>
					
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal" id="save">Save</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
	</div>
	<!-- /.modal -->
</body>
</html>