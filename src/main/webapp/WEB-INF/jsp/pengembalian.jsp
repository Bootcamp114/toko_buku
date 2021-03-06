<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Pengembalian Grand Media</title>
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
var pengembalian;
var idBuku = 0;
var tglPinjam = 0;
var tglKembali = 0;
	$(document).ready(function() {
		var detailPengembalian;
		var denda;
		var totalDenda = 0;
		
		var bukudt = $('#buku');
		var elementNoBuku = $('#no_buku');
		var elementJudul = $('#judul');
		var elementPenulis = $('#penulis');
		var elementPenerbit = $('#penerbit');
		var elementTahunTerbit = $('#tahun_terbit');
		var elementHarga = $('#harga');
		var elementKategori = $('#kategori');
		var elementDenda = $('#denda');
		var elementSubmit = $('#save');
		
		//event listener on click
		elementSubmit.on('click', function(){

			totalDenda = parseInt(totalDenda) +  parseInt($("#denda").val());
			$("#total_danda").val(totalDenda);
			
			var buku = {
				id : idBuku,
				tglPinjam : tglPinjam,
				tglKembali : tglKembali,
				noBuku : 	elementNoBuku.val(),
				judul : elementJudul.val(),
				penulis : elementPenulis.val(),
				penerbit : elementPenerbit.val(),
				tahunTerbit : elementTahunTerbit.val(),
				harga : elementHarga.val(),
				kategori : elementKategori.val(),
				denda : elementDenda.val()
			}
			
			var tbody = bukudt.find('tbody');
			//jquery append
			var tr = "<tr>";
			tr += "<td style='visibility:hidden;'>"+buku.id+"</td>";
			tr += "<td>"+buku.noBuku+"</td>";
			tr += "<td>"+buku.judul+"</td>";
			tr += "<td>"+buku.penulis+"</td>";
			tr += "<td>"+buku.penerbit+"</td>";
			tr += "<td>"+buku.tahunTerbit+"</td>";
			tr += "<td>"+buku.harga+"</td>";
			tr += "<td>"+buku.kategori+"</td>";
			tr += "<td>"+buku.denda+"</td>";
			tr += "<td>"+buku.tglPinjam+"</td>";
			tr += "<td>"+buku.tglKembali+"</td>";
			tr += "<td><a href='#'  class='del btn btn-info btn-danger btn-xs'>Delete</td>";
			tr += "</tr>";
			tbody.append(tr);
		});
	
		$("#tanggal").datepicker();
		//alert('Mulai Transaksi');
		$("#selesai").on("click", function() {
			save();
		});

		$("#no_buku").on("keyup", function(){
			var src = $(this).val();
			console.log(src);
			$.ajax({
				url : "/pengembalian/getbukupengembalian/"+src,
				type : "GET",
				dataType : "json",
				success: function(data){
				console.log(data);
				$("#judul").val(data.bukuPinjam.buku.judulBuku);
				$("#penulis").val(data.bukuPinjam.buku.penulis);
				$("#penerbit").val(data.bukuPinjam.buku.penerbit);
				$("#tahun_terbit").val(data.bukuPinjam.buku.tahunTerbit);
				$("#harga").val(data.bukuPinjam.buku.hargaBuku);
				idBuku=data.id;
				tglPinjam=data.tglPinjam;
				tglKembali=data.tglKembali;
			}
		});
		});
		$("#kategori").on("change", function(){
			denda = $("#harga").val()*2;
			$("#denda").val(denda);
		});
		$("#bayar").on("keyup", function(){
			$("#kembalian").val(parseInt($("#bayar").val()) - parseInt(totalDenda));
		});

		$(document).on('click','.del',function(){
			var row = $(this).closest('tr');
			row.remove();
			alert('Datat terhapus');
			$("#total_danda").val(parseInt($("#total_danda").val()));
		});
		$("#select").on("click", function(){
			$("#no_buku").val("");
			$("#judul").val("");
			$("#penulis").val("");
			$("#penerbit").val("");
			$("#tahun_terbit").val("");
			$("#harga").val("");
			$("#kategori").val("-");
			$("#denda").val("0");
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
				<li><a href="#"  onclick="redirectPeminjaman()">Peminjaman</a></li>
				<li class="active"><a href="#" onclick="redirectPengembalian()">Pengembalian</a></li>
				<li><a href="#" onclick="redirectDetail()">Detail Peminjaman</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="#">
						<select class="form-control" id="karyawan" style="width: 100%;" name="karyawan">
							<c:forEach var="karyawan" items="${karyawan}">
								<option value="${karyawan.id}">${karyawan.namaKaryawan}</option>
							</c:forEach>
						</select>
				 	</a>
				</li>

			</ul>
		</div>
	</div>
	</nav>
	<h2>
		<center>Form Pengembalian</center>
	</h2>
	<div class="container">
		<form action="#">
			<div class="form-group col-xs-6">

				<label for="no_pengembalian">No. Pengembalian:</label> <input
					type="text" class="form-control" id="no_pengembalian"
					style="width: 63%;" placeholder="No pengembalian Auto"
					name="no_pengembalian"><br /> 
					<label for="anggota">Anggota:</label> <select class="form-control" id="anggota" style="width: 63%;" name="anggota">
					<c:forEach var="anggota" items="${anggota}">
						<option value="${anggota.id}">${anggota.nama}</option>
				</c:forEach>
				</select> <br />

				<button type="button" class="btn btn-primary" data-toggle="modal" id="select"
					data-target="#add-modal">+ Select</button>
			</div>
			<div class="form-group col-xs-4">
				<label for="tanggal">Tanggal:</label> <input
					type="text" class="form-control" id="tanggal"
					placeholder="Tgl. pengembalian Auto (tanggal hari saat prosses)"
					name="tanggal"><br /> <label
					for="total_danda">Total Denda:</label> <input
					type="text" class="form-control" id="total_danda"
					placeholder="Total Denda Auto(Jumlah denda semua buku)"
					name="total_danda" readonly="readonly">
			</div>

		</form>

		<table class="table table-striped" id="buku">
			<thead>
				<tr>
					<th style='visibility:hidden;'>No. Buku</th>
					<th>No. Buku</th>
					<th>Judul buku</th>
					<th>Penulis</th>
					<th>Penerbit</th>
					<th>Tahun terbit</th>
					<th>Harga</th>
					<th>Kategori Denda</th>
					<th>Denda</th>
					<th>Tgl. Pinjam</th>
					<th>Tgl. Kembali</th>
					<th>Denda</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				
			</tbody>
		</table>
		<div class="form-group col-xs-4">
			<label for="bayar">Bayar:</label> 
			<input type="text" class="form-control" id="bayar" style="width: 63%;" placeholder="No pengembalian Auto" name="bayar"><br />
			<label for="kembalian">Kembalian:</label> 
			<input type="text" class="form-control" id="kembalian" style="width: 63%;" placeholder="No pengembalian Auto" name="kembalian" readonly="readonly"><br />
			<input type="submit" id="selesai" value="Selesai" class="btn btn-primary btn-md" />
		</div>
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
					<div class="form-group col-xs-6">
						<label class="control-label col-sm-2" for="no_buku">No.Buku:</label>
						<input type="text" class="form-control" id="no_buku"
							placeholder="Masukan Nomer Buku">
					</div>

					<div class="form-group col-xs-6">
						<label class="control-label col-sm-2" for="judul">Judul:</label> <input
							type="text" class="form-control" id="judul"
							placeholder="Auto (Sesuai data buku)" readonly="readonly">
					</div>

					<div class="form-group col-xs-6">
						<label class="control-label col-sm-2" for="penulis">Penulis:</label>
						<input type="text" class="form-control" id="penulis"
							placeholder="Auto (Sesuai data buku)" readonly="readonly">
					</div>
					<div class="form-group col-xs-6">
						<label class="control-label col-sm-2" for="penerbit">Penerbit:</label>
						<input type="text" class="form-control" id="penerbit"
							placeholder="Auto (Sesuai data buku)" readonly="readonly">
					</div>
					<div class="form-group col-xs-6">
						<label class="control-label col-sm-2" for="tahun_terbit">TahunTerbit:</label>
						<input type="text" class="form-control" id="tahun_terbit"
							placeholder="Auto (Sesuai data buku)" readonly="readonly">
					</div>
					<div class="form-group col-xs-6">
						<label class="control-label col-sm-2" for="harga">Harga:</label> <input
							type="text" class="form-control" id="harga"
							placeholder="Auto (Sesuai data buku)" readonly="readonly">
					</div>
					<div class="form-group col-xs-6">
						<label for="kategori">Kategori:</label> 
						 <select class="form-control" id="kategori" name="kategori">
							<option value="-">~Select Kategory</option>
							<option>Terlambat</option>
							<option>Hilang</option>
							<option>Rusak</option>
						</select>
					</div>
					<div class="form-group col-xs-6">
						<label class="control-label col-sm-2" for="harga">Denda:</label> <input
							type="text" class="form-control" id="denda"  value="0"
							placeholder="Auto (Sesuai kategori denda)" readonly="readonly" value="0">
					</div>
					<div class="modal-footer ">
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
	</div>


</body>
<script>
	var d = new Date();
	var hari = d.getDate();
	var tgl_kembali = hari + 5;
	var bulan = d.getMonth() + 1;
	var tahun = d.getFullYear();
	
	$('#tanggal').val("0" + bulan + "/" + hari + "/" + tahun);
	function redirectDetail(){
		document.location="detailpeminjaman";
	}
	function redirectPengembalian(){
		document.location="pengembalian";
	}
	function redirectPeminjaman(){
		document.location="peminjaman";
	}
	function save(){
		var noPengembalian = $('input[name="no_pengembalian"]').val();
		var tanggal = $('input[name="tanggal"]').val();
		var totalDenda = $('input[name="total_danda"]').val();
		var bayar = $('input[name="bayar"]').val();
		var kembalian = $('input[name="kembalian"]').val();
		var jumlah = "0";
		//Sama dengan java POJO (Encapsulation)
		pengembalian = {
				noPengembalian : noPengembalian,
				tanggal : tanggal,
				totalDenda : totalDenda,
				bayar : bayar,
				kembalian : kembalian,
				jumlah : jumlah,
				listDetailPengembalian : [ 
				 ]
		}

		var table = $("#buku");
		var tbody = table.find('tbody');
		var tr = tbody.find('tr');
		$.each(tr, function(index, data){
			
			detailPengembalian = {
					noPengembalian : $('input[name="no_pengembalian"]').val(),
					tanggal : $('input[name="tanggal"]').val(),
					denda : $(this).find('td').eq(8).text(),
					keterangan : $(this).find('td').eq(7).text(),
					anggota : { id : $('select[name="anggota"]').val()},
					karyawan : { id : $('select[name="karyawan"]').val()},
					detailPeminjaman : { id : $(this).find('td').eq(0).text()}
				}
			
			pengembalian.listDetailPengembalian.push(detailPengembalian);
			
			
		});
		console.log(pengembalian);
		 $.ajax({
			url : '/pengembalian/save',
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(pengembalian),
			success : function(data){
				console.log(data);
			},
			dataType: 'json'
		});  
		//console.log(peminjaman);
	}
</script>
</html>