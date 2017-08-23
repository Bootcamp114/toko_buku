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
var peminjaman;
var idBuku = 0;
$(document).ready(function(){
	var detailPeminjaman;
		$("#tgl_peminjaman").datepicker();
		$("#tgl_pengembalian").datepicker();
		//tambah tr
		var bukudt = $('#buku');
		var elementNoBuku = $('#no_buku');
		var elementJudul = $('#judul');
		var elementPenulis = $('#penulis');
		var elementPenerbit = $('#penerbit');
		var elementTahunTerbit = $('#tahun_terbit');
		var elementHarga = $('#harga');
		var elementSubmit = $('#save');
		
		//event listener on click
		elementSubmit.on('click', function(){
			var buku = {
				id : idBuku,
				noBuku : 	elementNoBuku.val(),
				judul : elementJudul.val(),
				penulis : elementPenulis.val(),
				penerbit : elementPenerbit.val(),
				tahunTerbit : elementTahunTerbit.val(),
				harga : elementHarga.val()
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
			tr += "<td><a href='#'  class='del btn btn-info btn-danger btn-xs'>Delete</td>";
			tr += "</tr>";
			tbody.append(tr);
			
			
		});
	
		//showData();
		//alert('Mulai Transaksi');
		$("#add-buku").on("click", function() {
			clearForm();
		});
			$("#save-anggota").on("click", function() {
			var nik = $('input[name="nik"]').val();
			var nama = $('input[name="nama"]').val();
			var alamat = $('textarea[name="alamat"]').val();
			var pekerjaan = $('input[name="pekerjaan"]').val();
			var email = $('input[name="email"]').val();
			
			//Sama dengan java POJO (Encapsulation)
			var anggota = {
				nik : nik,
				nama : nama,
				jk : jk,
				alamat : alamat,
				pekerjaan : pekerjaan,
				email : email
			}
			
			//console.log(anggota);
			//AJAX => asyncronous javascript and XML
			$.ajax({
				url : '/anggota/save',
				type : 'POST',
				contentType : 'application/json',
			//	dataType : 'json',
				data : JSON.stringify(anggota),
				success : function(data, a, xhr){
			//		console.log(xhr.status);
					if(xhr.status == 201){
						console.log("Berhasil disimpan");
						showData();
					}
				}
			});

			document.location="peminjaman";
		});
		
		$("#no_buku").on("keyup", function(){
			var src = $(this).val();
			//console.log(src);
			//load_autoComplete(src);
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
					$("#id_hiden").val(data.id);
					idBuku=data.id;
				}
			});
		});

		$("#simpan").on("click", function(){
			save();
			document.location="peminjaman";
		});
		$(document).on('click','.del',function(){
			var row = $(this).closest('tr');
			row.remove();
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
				<li class="active"><a href="#"  onclick="redirectPeminjaman()">Peminjaman</a></li>
				<li><a href="#" onclick="redirectPengembalian()">Pengembalian</a></li>
				<li><a href="#" onclick="redirectDetail()">Detail Peminjaman</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><!-- <span class="glyphicon glyphicon-user"></span> -->
						 <select class="form-control" id="karyawan" style="width: 100%;" name="karyawan">
							<c:forEach var="karyawan" items="${karyawan}">
								<option value="${karyawan.id}">${karyawan.namaKaryawan}</option>
							</c:forEach>
						</select>
				 </a></li>

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
					data-target="#add-modal" id="add-buku">+ Tambah Buku</button>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#add-anggota" style="margin-top:-53px; margin-left:245px; position:absolute;">+ Tambah Anggota</button>
			</div>
			<div class="form-group col-xs-4">
				<label for="tgl_peminjaman">Tgl. Peminjaman:</label> <input
					type="text" class="form-control" id="tgl_peminjaman"
					placeholder="Tgl. peminjaman Auto (tanggal hari saat prosses)"
					name="tgl_peminjaman" ><br /> <label
					for="tgl_pengembalian">Tgl. Pengembalian:</label> <input
					type="text" class="form-control" id="tgl_pengembalian"
					placeholder="Tgl. Pengembalian Auto(10 hari setelah pinjam)"
					name="tgl_pengembalian">
			</div>

		</form>
	
		<table class="table table-striped"  id="buku">
			<thead>
				<tr>
					<th style="visibility:hidden;">ID</th>
					<th>No. Buku</th>
					<th>Judul buku</th>
					<th>Penulis</th>
					<th>Penerbit</th>
					<th>Tahun terbit</th>
					<th>Harga</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>

		<input type="submit" id="simpan" value="Simpan"
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
							
						<input type="hidden" id="id_hiden" name="id_hiden" >
							
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
						<textarea class="form-control" rows="3" id="alamat" name="alamat"></textarea>
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
var d = new Date();
var hari = d.getDate();
var bulan = d.getMonth() + 1;
var tahun = d.getFullYear();

d.setDate(d.getDate()+10);
var hariKembali = d.getDate();
var bulanKembali = d.getMonth() + 1;
var tahunKembali = d.getFullYear();

$('#tgl_peminjaman').val("0" + bulan + "/" + hari + "/" + tahun);
$('#tgl_pengembalian').val("0" + bulanKembali + "/" + hariKembali + "/" + tahunKembali);

var jk;
$(document).ready(function(){
	$('input[name="jk"]').on("change", function(){
		jk = $(this).val();
	});
});

function save(){
	var noPeminjaman = $('input[name="no_peminjaman"]').val();
	//Sama dengan java POJO (Encapsulation)
	peminjaman = {
			noPeminjaman : noPeminjaman,
			jumlah : noPeminjaman,
			listDetailPeminjaman : [ 
			 ]
	}

	var table = $("#buku");
	var tbody = table.find('tbody');
	var tr = tbody.find('tr');
	$.each(tr, function(index, data){
		
		
		detailPeminjaman = {
				noPeminjaman : $('input[name="no_peminjaman"]').val(),
				tglPinjam : $('input[name="tgl_peminjaman"]').val(),
				tglKembali : $('input[name="tgl_pengembalian"]').val(),
				status : "1",
				anggota : { id : $('select[name="anggota"]').val()},
				bukuPinjam : { id : $(this).find('td').eq(0).text()},
				karyawan : {id : $('select[name="karyawan"]').val()}
			}
		
		peminjaman.listDetailPeminjaman.push(detailPeminjaman);
		
		
	});
	console.log(peminjaman);
	$.ajax({
		url : '/peminjaman/save',
		type : 'POST',
		contentType : 'application/json',
		data : JSON.stringify(peminjaman),
		success : function(data){
			console.log(data);
		},
		dataType: 'json'
	}); 
	//console.log(peminjaman);
}
function clearForm(){
	$("#no_buku").val("");
	$("#judul").val("");
	$("#penulis").val("");
	$("#penerbit").val("");
	$("#tahun_terbit").val("");
	$("#harga").val("");
	$("#id_hiden").val("");
	}

function _theData(src){
	var jRest = [];
	var bukuPinjam = {
		noBuku : src
	}
	
	$.ajax({
		url: '/peminjaman/src_dept',
		type: 'POST',
		data: JSON.stringify(bukuPinjam),
		dataType: 'json',
		contentType: 'application/json',
		success : function(data){
			$.each(data, function(index, data){
				jRest.push(data);
			});	
		}
	});
	
	return jRest;
}

function load_autoComplete(src){
var options = {
		  data: _theData(src),
		  getValue: "noBuku",
		  list: {
				match: {
					enabled: true
				},
				maxNumberOfElements: 8
		},
		  theme: "plate-dark"
		};

	$('#no_buku').easyAutocomplete(options);
}

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