<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pembelian Buku</title>
	<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
	<script type="text/javascript" src="/resources/assets/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
</head>
<body>
<h2>TokoBuku GrandMedia</h2>
	<form method="post">
	<div id="modal-body">
		<div id="form-group">
			<label>No. Faktur</label><br/>
			<input type="text" placeholder="No faktur"/>
		</div>
		<div id="form-group">
			<label>Judul Buku</label><br/>
			<input type="text" placeholder="Judul buku"/>
			<input type="submit" value="Lihat"/>
		</div>
		<div id="form-group">
			<label>Jumlah Beli</label><br/>
			<input type="text" placeholder="Jumlah beli"/>
		</div>
		<div id="form-group">
			<label>Total Harga</label><br/>
			<input type="text" placeholder="Total harga"/>
		</div>
		<div id="form-group">
			<input type="submit" value="Tambah"/>
		</div>
	</div>		
	</form>
</body>
</html>