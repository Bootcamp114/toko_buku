<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css" />
 		<script type="text/javascript" src="/resources/assets/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
</head>
<body>
<h2>Grand Media</h2>
  <form action="#">
    <div class="container">
	    <div class="form-group col-xs-4">
	      <label for="no_peminjaman">No. Peminjaman:</label>
	      <input type="text" class="form-control" id="no_peminjaman" placeholder="No peminjaman Auto" name="no_peminjaman">
	   
		 <label for="anggota">Anggota:</label>
	    <select class="form-control" id="anggota">
	      <option>Unknow(Dari tabel anggota)</option>
	      <option>ex:1</option>
	      <option>ex:2</option>
	      <option>ex:3</option>
	      <option>ex:4</option>
	    </select>
	  
		  <label for="tgl_peminjaman">Tgl. Peminjaman:</label>
	      <input type="text" class="form-control" id=""tgl_peminjaman"" placeholder="Tgl. peminjaman Auto (tanggal hari saat prosses)" name="tgl_peminjaman">
	      <label for="tgl_pengembalian">Tgl. Pengembalian:</label>
	      <input type="text" class="form-control" id="tgl_pengembalian" placeholder="Tgl. Pengembalian Auto(10 hari setelah pinjam)" name="tgl_pengembalian">
	    <button type="submit" class="btn btn-primary" id="add">+</button>
	    </div>
    </div>
  </form>
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