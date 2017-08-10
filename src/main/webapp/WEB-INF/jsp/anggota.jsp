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

<script type="text/javascript">
$(document).ready(function(){
	alert('Mulai Transaksi');
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
	<h2><center>Registrasi Anggota</center></h2><br/>
	<form action="#">
		<div class="form-group col-xs-4">
			<label for="nik">NIK:</label>
			<input type="text" class="form-control" id="nik" placeholder="input oleh user (unique)" name="nik"><br/> 
			<label for="nama">Nama:</label>
			<input type="text" class="form-control" id="nama" placeholder="input oleh user " name="nama"><br/> 	
			<label for="jk">Gender:</label>
			<div class="radio">
  				<label><input type="radio" name="jk" id="jk">Laki-laki </label>
  				<label><input type="radio" name="jk" id="jk">Perempuan </label>
			</div><br/>
			 <label for="alamat">Alamat:</label>
 			 <textarea class="form-control" rows="3" id="alamat"></textarea> <br/>
			<label for="pekerjaan">Pekerjaan:</label>
			<input type="text" class="form-control" id="pekerjaan" placeholder="input oleh user " name="pekerjaan"><br/> 	 
			<label for="email">Email:</label>
			<input type="text" class="form-control" id="email" placeholder="input oleh user(unique) " name="email"><br/> 	
		</div>
	</form>	
	</div>
</body>
</html>