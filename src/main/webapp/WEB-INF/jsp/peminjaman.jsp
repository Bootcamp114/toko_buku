<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css" />
<script type="text/javascript"
	src="/resources/assets/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<style>
th{
 background-color: #4CAF50;
    color: white;
}
</style>
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
		<form action="#">
			<div class="form-group col-xs-6">
				<label for="no_peminjaman">No. Peminjaman:</label>
				 <input type="text" class="form-control" id="no_peminjaman" style="width:63%;" placeholder="No peminjaman Auto" name="no_peminjaman" readonly="readonly"><br/> 
					<label for="anggota">Anggota:</label>
				<select class="form-control" id="anggota" style="width:63%;">
					<option>Unknow(Dari tabel anggota)</option>
					<option>ex:1</option>
					<option>ex:2</option>
					<option>ex:3</option>
					<option>ex:4</option>
				</select> <br />
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add-modal">+ Add</button>
			</div>
			<div class="form-group col-xs-4">
				<label for="tgl_peminjaman">Tgl. Peminjaman:</label> <input	type="text" class="form-control" id="tgl_peminjaman" placeholder="Tgl. peminjaman Auto (tanggal hari saat prosses)" name="tgl_peminjaman" readonly="readonly"><br/> 
					<label for="tgl_pengembalian">Tgl. Pengembalian:</label> <input
					type="text" class="form-control" id="tgl_pengembalian"
					placeholder="Tgl. Pengembalian Auto(10 hari setelah pinjam)"
					name="tgl_pengembalian" readonly="readonly">
			</div>
			
		</form>

		<table class="table table-striped">
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

		<input type="submit" id="selesai" value="Selesai" class="btn btn-primary btn-md" />

	</div>

	<!-- Modal -->
	<div class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="gridSystemModalLabel" id="add-modal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">Tambah Buku</h4>
				</div>
				<div class="modal-body">
					<!-- <p>This is a small modal.</p>-->
					<div class="form-group">
						<label class="control-label col-sm-2" for="no_buku">No.Buku:</label>
						<input type="text" class="form-control" id="no_buku"
							placeholder="Masukan Nomer Buku">
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="judul">Judul:</label> <input
							type="text" class="form-control" id="judul"
							placeholder="Auto (Sesuai data buku)" readonly="readonly">
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="penulis">Penulis:</label>
						<input type="text" class="form-control" id="penulis"
							placeholder="Auto (Sesuai data buku)" readonly="readonly">
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="penerbit">Penerbit:</label>
						<input type="text" class="form-control" id="penerbit"
							placeholder="Auto (Sesuai data buku)" readonly="readonly">
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="tahun_terbit">TahunTerbit:</label>
						<input type="text" class="form-control" id="tahun_terbit"
							placeholder="Auto (Sesuai data buku)" readonly="readonly">
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="harga">Harga:</label> <input
							type="text" class="form-control" id="harga"
							placeholder="Auto (Sesuai data buku)" readonly="readonly">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal"
							id="save">Save</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->

		<!--modal1-->
</body>
</html>