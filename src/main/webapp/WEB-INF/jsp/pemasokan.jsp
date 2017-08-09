<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	<h3 align="center">Silahkan Masukan Buku Yang Akan di Stock</h3>
	<form>
		<div class="form-group col-xs-4">
			<div class="form-group">
				<label for="exampleInputEmail1">Name Distributor</label> <select
					class="form-control" readonly>
					<option>Unknow</option>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Judul Buku</label> <select
					class="form-control" readonly>
					<option>Unknow</option>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Harga</label> <input type="text"
					class="form-control" id="exampleInputEmail1" placeholder="Harga"
					readonly>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Quantity</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					placeholder="Masukan Quantity">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Total</label> <input type="text"
					class="form-control" id="exampleInputEmail1" placeholder="Total"
					readonly>
			</div>
			<button type="button" class="btn btn-primary">Add</button>
		</div>
	</form>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Tanggal</th>
				<th>Nama Dsitributor</th>
				<th>Judul Buku</th>
				<th>Quantity</th>
				<th>Harga (*perbuku)</th>
				<th>Total</th>
				<th colspan="2">action</th>
			</tr>
		</thead>
	</table>
	</div>
</body>


</html>