<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="form-peminjaman">
	
	
	User<br/>
	<input type="text" id="user" placeholder="sesuai session aktif"/><br/><br/>
	No. Peminjaman<br/>
	<input type="text" id="no_peminjaman" placeholder="Auto"/><br/><br/>
	Anggota<br/>
	<select id="anggota">
		<option>Select dari Tabel Anggota</option>
	</select><br/><br/>
	Tanggal Pinjam<br/>
	<input type="date" id="tgl_pinjam" placeholder="Tanggal Sekarang"/><br/><br/>
	Tanggal pengembalian<br/>
	<input type="date" id="tgl_pinjam" placeholder="10 hari setelah tanggal pinjam" /><br/><br/>
	
	<input type="submit" id="add" value="+"  />
	</div>
	List Buku
	<table id="peminjaman">
		<thead>
			<tr>
				<th>No. Buku</th>
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
			<tr></tr>
		</tbody>
	</table>
	<input type="submit" id="save" value="Save"  />
	
</body>
</html>