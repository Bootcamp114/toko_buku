<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data Employee</title>
<script type="text/javascript"
	src="/resources/assets/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
<script type="text/javascript"
	src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<body>
	<h1>Silahkan Masukan Buku Yang Akan di Stock</h1>
	<form>
		<div class="form-group">
			<label for="exampleInputEmail1">Name Distributor</label> 
			<select class="form-control" readonly>
			  <option>Unknow</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Judul Buku</label> 
			<select class="form-control" readonly>
			  <option>Unknow</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Harga</label> 
			<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Harga" readonly>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Quantity</label> 
			<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Masukan Quantity">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Total</label> 
			<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Total" readonly>
		</div>
	</form>
	<table id="data-pemasok">
		<thead>
			<tr>
				<th>Tanggal</th>
				<th>Nama Dsitributor</th>
				<th>Judul Buku</th>
				<th>Quantity</th>
				<th>Harga (*perbuku)</th>
				<th>Total</th>
			</tr>
		</thead>
	</table>
</body>
</html>