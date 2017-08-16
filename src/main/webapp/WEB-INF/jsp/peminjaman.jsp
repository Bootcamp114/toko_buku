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
<script type="text/javascript"
	src="/resources/assets/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<style>
th {
	background-color: #4CAF50;
	color: white;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		//showData();
		//alert('Mulai Transaksi');
		$("#save").on("click", function(){
			 save();
		});
		$("#save-anggota").on("click", function() {
			alert('berhasils');
		});
		
		$("#no_buku").on("keyup", function(){
			var src = $(this).val();
			$.ajax({
				url : "/peminjaman/getbukupinjam/"+src,
				type : "GET",
				dataType : "json",
				success: function(data){
					console.log(data.buku.judulBuku);
					$("#judul").val(data.buku.judulBuku);
					$("#penulis").val(data.buku.penulis);
					$("#penerbit").val(data.buku.penerbit);
					$("#tahun_terbit").val(data.buku.tahunTerbit);
					$("#harga").val(data.buku.hargaBuku);
				}
			});
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
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Nama Admin </a></li>

			</ul>
		</div>
	</div>
	</nav>
	<h2>
		<center>Form Peminjaman</center>
	</h2>
	<div class="container">
		<form action="#">
			<div class="form-group col-xs-6">

				<label for="no_peminjaman">No. Peminjaman:</label> <input
					type="text" class="form-control" id="no_peminjaman"
					style="width: 63%;" placeholder="No peminjaman Auto"
					name="no_peminjaman"><br /> <label
					for="anggota">Anggota:</label> <select class="form-control"
					id="anggota" style="width: 63%;" name="anggota">
					<c:forEach var="anggota" items="${anggota}">
						<option value="${anggota.id}">${anggota.nama}</option>
				</c:forEach>
				</select> <br />

				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#add-modal">+ Add Buku</button>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#add-anggota" style="margin-top:-53px; margin-left:245px; position:absolute;">+ Add Anggota</button>
			</div>
			<div class="form-group col-xs-4">
				<label for="tgl_peminjaman">Tgl. Peminjaman:</label> <input
					type="date" class="form-control" id="tgl_peminjaman"
					placeholder="Tgl. peminjaman Auto (tanggal hari saat prosses)"
					name="tgl_peminjaman"><br /> <label
					for="tgl_pengembalian">Tgl. Pengembalian:</label> <input
					type="date" class="form-control" id="tgl_pengembalian"
					placeholder="Tgl. Pengembalian Auto(10 hari setelah pinjam)"
					name="tgl_pengembalian">
			</div>

		</form>

		<table id="peminjaman-dt" class="table table-striped">
			<thead>
				<tr>
					<th>No. Buku</th>
					<th>Kode Buku</th>
					<th>Judul buku</th>
					<th>Penulis</th>
					<th>Penerbit</th>
					<th>Kategori</th>
					<th>Tahun terbit</th>
					<th>Harga</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="peminjaman" items="${peminjaman}">
					<tr>
						<td>${peminjaman.bukuPinjam.noBuku}</td>
						<td>${peminjaman.bukuPinjam.buku.kodeBuku}</td>
						<td>${peminjaman.bukuPinjam.buku.judulBuku}</td>
						<td>${peminjaman.bukuPinjam.buku.penulis}</td>
						<td>${peminjaman.bukuPinjam.buku.penerbit}</td>
						<td>${peminjaman.bukuPinjam.buku.kategori}</td>
						<td>${peminjaman.bukuPinjam.buku.tahunTerbit}</td>
						<td>${peminjaman.bukuPinjam.buku.hargaBuku}</td>
						<td><a href="#" id="delete" class="btn btn-xs btn-danger">Hapus</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="submit" id="selesai" value="Selesai"
			class="btn btn-primary btn-md" />
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
							placeholder="Masukan Nomer Buku" name="no_buku" >
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
							id="save">Add</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>


	<!-- Modal 2 -->
	<div class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="gridSystemModalLabel" id="add-anggota">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">Tambah Anggota</h4>
				</div>
				<div class="modal-body">
					<div class="form-group col-xs-6">
						<label for="nik">NIK:</label> <input type="text"
							class="form-control" id="nik"
							placeholder="input oleh user (unique)" name="nik"><br />
						<label for="nama">Nama:</label> <input type="text"
							class="form-control" id="nama" placeholder="input oleh user "
							name="nama"><br /> <label for="jk">Gender:</label>
						<div class="radio">
							<label><input type="radio" name="jk" id="jk">Laki-laki
							</label> <label><input type="radio" name="jk" id="jk">Perempuan
							</label>
						</div>
						<br />
					</div>
					<div class="form-group col-xs-6">
						<label for="alamat">Alamat:</label>
						<textarea class="form-control" rows="3" id="alamat"></textarea>
						<br /> <label for="pekerjaan">Pekerjaan:</label> <input
							type="text" class="form-control" id="pekerjaan"
							placeholder="input oleh user " name="pekerjaan"><br /> <label
							for="email">Email:</label> <input type="text"
							class="form-control" id="email"
							placeholder="input oleh user(unique) " name="email"><br />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal"
							id="save-anggota">Save</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>


</body>
<script type="text/javascript">
function showData(){
	$.ajax({
		url : '/peminjaman/getAll',
		type : 'POST',
		dataType : 'json',
		success : function(data, x, xhr){
			fillData(data);
		}
	});
}
function fillData(data){
	var dt = $("#peminjaman-dt");
	var tbody = dt.find('tbody');
	tbody.find('tr').remove();
	
	$.each(data, function(index, peminjaman){
		var trString = "<tr>";
				trString += "<td>";
				 	trString += peminjaman.noPeminjaman;
					trString += "</td>";
					trString += "<td>";
				 		trString += peminjaman.tglPinjam;
					trString += "</td>";
					trString += "<td>";
			 			trString += peminjaman.tglKembali;
					trString += "</td>";
					trString += "</td>";
					trString += "<td>";
				 		trString += peminjaman.status;
					trString += "</td>";
					trString += "<td>";
			 			trString += peminjaman.anggota;
					trString += "</td>";
					trString += "</td>";
					trString += "<td>";
			 		trString += peminjaman.bukuPinjam;
					trString += "</td>";
					trString += "<td>";
		 				trString += peminjaman.karyawan;
					trString += "</td>";
					trString += "<td>";
				 		trString += "<a id_delete='"+peminjaman.id+"' href='#' class='delete'>Delete</a>";
				trString += "</td>";
				trString += "</td>";
					trString += "<td>";
				 		trString += "<a id_update='"+peminjaman.id+"' href='#' class='update'>Update</a>";
					trString += "</td>";
			trString += "</tr>"
			tbody.append(trString);
	});
}

function save(){
	var noPeminjaman = $('input[name="no_peminjaman"]').val();
	var tglPinjam = $('input[name="tgl_peminjaman"]').val();
	var tglKembali = $('input[name="tgl_pengembalian"]').val();
	var status = "1";
	var anggota = $('input[name="anggota"]').val();
	var bukuPinjam = $('input[name="no_buku"]').val();
	var karyawan = "1";
	
	//Sama dengan java POJO (Encapsulation)
	var peminjaman = {
			noPeminjaman : noPeminjaman,
			tglPinjam : tglPinjam,
			tglKembali : tglKembali,
			status : status,
			anggota : { id : anggota},
			bukuPinjam : bukuPinjam,
			karyawan : { id : karyawan}
	}
	
	$.ajax({
		url : '/peminjaman/save',
		type : 'POST',
		contentType : 'application/json',
		data : JSON.stringify(peminjaman),
		success : function(data, a, xhr){
			if(xhr.status == 201){
				console.log("Berhasil disimpan");
			}
		}
	});

}



</script>
</html>