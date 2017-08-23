<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Peminjaman Grand Media</title>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="/resources/assets/jquery-ui-1.12.1.custom/jquery-ui.min.css">
<script type="text/javascript"
	src="/resources/assets/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/resources/assets/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<style>
th {
	background-color: #4CAF50;
	color: white;
}
</style>

<script type="text/javascript">

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
				<li><a href="#"  onclick="redirectPeminjaman()">Peminjaman</a></li>
				<li><a href="#" onclick="redirectPengembalian()">Pengembalian</a></li>
				<li class="active"><a href="#" onclick="redirectDetail()">Detail Peminjaman</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Nama Admin </a></li>

			</ul>
		</div>
	</div>
	</nav>
	<h2>
		<center> Detail Peminjaman </center>
	</h2>
	<div class="container">
		<table class="table table-striped"  id="buku">
			<thead>
				<tr>
					<th>No. Peminjaman</th>
					<th>No. Buku</th>
					<th>Judul buku</th>
					<th>Penulis</th>
					<th>Penerbit</th>
					<th>Tahun terbit</th>
					<th>Harga</th>
					<th>Tanggal Pinjam</th>
					<th>Tanggal Kembali</th>
					<th>Anggota</th>
					<th>Alamat Anggota</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="detailpeminjaman" items="${detailpeminjaman}">
					<tr>
						<td>${detailpeminjaman.noPeminjaman}</td>
						<td>${detailpeminjaman.bukuPinjam.noBuku}</td>
						<td>${detailpeminjaman.bukuPinjam.buku.judulBuku}</td>
						<td>${detailpeminjaman.bukuPinjam.buku.penulis}</td>
						<td>${detailpeminjaman.bukuPinjam.buku.penerbit}</td>
						<td>${detailpeminjaman.bukuPinjam.buku.tahunTerbit}</td>
						<td>${detailpeminjaman.bukuPinjam.buku.hargaBuku}</td>
						<td>${detailpeminjaman.tglPinjam}</td>
						<td>${detailpeminjaman.tglKembali}</td>
						<td>${detailpeminjaman.anggota.nama}</td>
						<td>${detailpeminjaman.anggota.alamat}</td>
						<td>${detailpeminjaman.status}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	
</body>
<script type="text/javascript">
function redirectDetail(){
	document.location="detailpeminjaman";
}
function redirectPengembalian(){
	document.location="pengembalian";
}
function redirectPeminjaman(){
	document.location="peminjaman";
}

</script>
</html>