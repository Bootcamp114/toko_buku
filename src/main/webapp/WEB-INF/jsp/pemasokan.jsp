<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pembelian Barang</title>
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
					<!-- <ul class="nav navbar-nav navbar-right">
			      	<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			     	<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			   		</ul> -->
				</div>
			</div>
		</nav>
		<div class="container">
			<h3 align="center">Form Transaksi Pembelian Stock Buku </h3><br>
			<form>
			<table align="center">
				<tr>
					<td><div class="row">
				
				<!-- /.col-lg-6 -->
			</div></td>
				</tr>
			</table><br>
			
			<div class="form-group col-xs-6">
				<label for="kodebuku">Tanggal</label>
				<input style="width:45%;" type="text" class="form-control" id="kodebuku" >
			</div>	
			
			<div class="form-group col-xs-6">
				<label for="kodebuku">No Pembelian</label>
				<input style="width:45%;" type="text" class="form-control" id="kodebuku" >
			</div>	


			<div class="form-group col-xs-6">
				<label for="tahunterbit">Total Buku Dibeli</label>
				<input style="width:" type="number" class="form-control" id="tahunterbit" readonly>
			</div>
			<div class="form-group col-xs-6">
				<label for="tahunterbit">Total Pembelian</label>
				<input style="width:" type="number" class="form-control" id="tahunterbit" placeholder="Total">
			</div>
			<div class="form-group col-xs-6">
				<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
  		Add Barang
		</button>
			</div>
		 
			<p>	
		</form>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Kode Buku</th>
					<th>Judul Buku</th>
					<th>Harga Beli (*perbuku)</th>
					<th>Quantity</th>
					<th>Total</th>
					<th colspan="1">action</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>B001</td>
					<td>Laskar Pelangi</td>
					<td>32.000</td>
					<td>5</td>
					<td>160.000</td>
					<td><a href="#"><span class="glyphicon glyphicon-user"> Delete</span></td>
				</tr>
			</tbody>
		</table>
		<button type="button" class="btn btn-primary">Save Transaksi Pembelian</button>
	</div>
	</body>
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Tambah Stock Pembelian Buku</h4>
      </div>
      <div class="modal-body">
      <table align="center">
      	<tr>
      		<td>
      		<div class="col-lg-6">
					<div class="input-group">
						<input style="width: 500px;" type="text" class="form-control"
							placeholder="Search for..."> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">Go!</button>
						</span>
					</div>
					<!-- /input-group -->
			</div>
      		</td>
      	</tr>
      	
      	<tr>
      		<td>
      		<div class="form-group col-xs-4">
				<label for="penerbit">Kode Buku</label>
				<input type="text" class="form-control" id="penerbit" readonly>
			</div>
			<div class="form-group col-xs-6">
				<label for="penerbit">Judul Buku</label>
				<input type="text" class="form-control" id="penerbit" readonly>
			</div>
			<div class="form-group col-xs-6">
				<label for="penerbit">Penulis</label>
				<input type="text" class="form-control" id="penerbit" readonly>
			</div>
			<div class="form-group col-xs-6">
				<label for="penerbit">Category</label>
				<input type="text" class="form-control" id="penerbit" readonly>
			</div>
			<div class="form-group col-xs-6">
				<label for="penerbit">Tahun Terbit</label>
				<input type="text" class="form-control" id="penerbit" readonly>
			</div>
			<div class="form-group col-xs-6">
				<label for="penerbit">Distributor</label>
				<input type="text" class="form-control" id="penerbit" readonly>
			</div>
			<div class="form-group col-xs-6">
				<label for="penerbit">Harga</label>
				<input type="text" class="form-control" id="penerbit" readonly>
			</div>
			<div class="form-group col-xs-6">
				<label for="penerbit">Jumlah</label>
				<input type="text" class="form-control" id="penerbit" placeholder="Masukan Jumlah yang akan di stock">
			</div>
      		</td>
      	</tr>
      </table>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Add Ke Stock</button>
      </div>
    </div>
  </div>
</div>
</html>