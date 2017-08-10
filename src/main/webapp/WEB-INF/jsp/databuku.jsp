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
		<form>
			<div class="form-group col-xs-6">
			<label for="exampleInputEmail1">Kode Buku</label>
			<input style="width:45%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Total" readonly>
			</div>
			<div class="form-group col-xs-6">
			<label for="exampleInputEmail1">Judul Buku</label>
			<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Total" readonly>
			</div>
			<div class="form-group col-xs-6">
			<label for="exampleInputEmail1">Penulis</label>
			<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Total" readonly>
			</div>
			<div class="form-group col-xs-6">
			<label for="exampleInputEmail1">Category</label>
			<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Total" readonly>
			</div>
			<div class="form-group col-xs-6">
			<label for="exampleInputEmail1">Penerbit</label>
			<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Total" readonly>
			</div>
			<div class="form-group col-xs-6">
			<label for="exampleInputEmail1">Tahun Terbit</label>
			<input style="width:" type="text" class="form-control" id="exampleInputEmail1" placeholder="Total" readonly>
			</div>
			<div class="form-group col-xs-6">
			<label for="exampleInputEmail1">Harga Beli</label>
			<div class="form-group">
					<label class="sr-only" for="exampleInputAmount">Amount (in
						dollars)</label>
					<div class="input-group">
						<div class="input-group-addon">Rp</div>
						<input type="text" class="form-control" id="exampleInputAmount"
							placeholder="Amount">
						<div class="input-group-addon">.00</div>
					</div>
				</div>
			</div>
			<div class="form-group col-xs-6">
			<label for="exampleInputEmail1">Harga Jual</label>
				<div class="form-group">
					<label class="sr-only" for="exampleInputAmount">Amount (in
						dollars)</label>
					<div class="input-group">
						<div class="input-group-addon">Rp</div>
						<input type="text" class="form-control" id="exampleInputAmount"
							placeholder="Amount">
						<div class="input-group-addon">.00</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>