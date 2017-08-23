<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pembelian Barang</title>
<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="/resources/assets/jquery-ui-1.12.1.custom/jquery-ui.min.css">

<script type="text/javascript" src="/resources/assets/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/resources/assets/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script type="text/javascript" src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>

<style type="text/css">
th {
	background-color: #4CAF50;
	color: white;
}
</style>

<script type="text/javascript">
$(document).ready (function(){
	$("#tanggal").datepicker();
	var datatable = $('#datatable');
	var elementPilihBuku = $('#judulBuku');
	var elementHarga = $('#hargaBuku');
	var elementJml = $('#jmlbeli');
	var elementtotaljmlbeli = $('#totaljmlbeli');
	var elementtotaljmlbeli2 =  $('#totaljmlbeli2');
	var elementSubmit = $('#save');
	var addData = $('#add');
	
	//tambahBuku
	elementSubmit.on('click', function(){	
		var tambahbuku = {
			judulBuku : elementPilihBuku.val(),
			hargaBuku : elementHarga.val(),
			jmlbeli : elementJml.val(),
			totaljmlbeli : elementtotaljmlbeli.val()
		}
		
		var tbody = datatable.find('tbody');
		//jquery append
		var tr = "<tr>";
		tr += "<td>"+tambahbuku.judulBuku+"</td>";
		tr += "<td>"+tambahbuku.hargaBuku+"</td>";
		tr += "<td>"+tambahbuku.jmlbeli+"</td>";
		tr += "<td>"+tambahbuku.totaljmlbeli+"</td>";
		tr += "<td><a href='#' class='hapus'>Hapus</td>";
		tbody.append(tr);
		clearForm();

	});	
	//Hapus
	$(document).on("click",".hapus",function(){
		var row=$(this).closest('tr');
		row.remove();
	});
	
	//edit
	$(document).on("click", ".edit",function(){
	 var id = $(this).attr("id_edit");
		$.ajax({
			url : '/pemasokan/edit/' + id,
			type : 'GET',
			success : function(data) {
				pilihBuku(data);
			}
		});
	});
	
	//Simpan Transaksi
	var simpanTransaksi = $("#simpantransaksi");
	simpanTransaksi.on("click", function(){
		save();
	});
});

function hanyaAngka(evt) {
	  var charCode = (evt.which) ? evt.which : event.keyCode
	   if (charCode > 31 && (charCode < 48 || charCode > 57))

	    return false;
	  return true;
	}
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
			     <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			     <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<h3 align="center">Form Transaksi Pembelian Stock Buku</h3>
		<br>
		<form>
			<div class="form-group">
				<label for="kodebuku">Tanggal</label>
				<input type="hidden" id="id_buku"> <input style="width: 20%;" type="text" class="form-control" id="tanggal">
			</div>

			<div class="form-group">
				<label for="kodebuku">No Pembelian</label> 
				<input style="width: 45%;" type="text" class="form-control" name="noPembelian" readonly="readonly" value="T000${noUrut }">
			</div>

			<div class="form-group">
				<label for="tahunterbit">Pilih Buku</label> 
				<input style="width: 30%" type="text" class="form-control" id="judulBuku" readonly>
				<!-- Button trigger modal -->
				<button style="margin-left: 350px; margin-top: -31px; position: absolute;" type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">Pilih Buku </button>
			</div>
			
			<div class="form-group">
				<label for="kodebuku">Harga</label>
				<input style="width: 45%;" type="text" class="form-control" id="hargaBuku">
			</div>

			<div class="form-group">
				<label for="tahunterbit">Jumlah Buku Yang Akan dipasok</label>
				<input style="width: 45%" type="number" onkeyup="hitung()" class="form-control" id="jmlbeli" placeholder="Masukan Jumlah Buku Yang Dibeli" onkeypress="return hanyaAngka(event)" required maxlength="13">
				<input style="width: 45%" type="hidden" class="form-control" id="totaljmlbeli" placeholder="total">
				<input style="width: 45%" type="hidden" class="form-control" id="totalbayar" placeholder="total bayar">
			</div>
			
			<input type="button" id="save" value="Tambah Buku" class="btn btn-primary btn-sm"/>
			<p>
		</form>
		<div>
			<table class="table table-bordered" id="datatable">
				<thead>
					<tr>
						<th>Judul Buku</th>
						<th>Harga (*perbuku)</th>
						<th>Jumlah Pemasokan</th>
						<th>Total</th>
						<th colspan="1">action</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
		<!-- <button type="button" class="btn btn-primary" id="simpantransaksi" onclick="reload()">Simpan Transaksi Penyetokan</button> -->
		<button type="button" class="btn btn-primary btn-sm"
			data-toggle="modal" data-target="#myModal2" id="simpantransaksi">Simpan
			Penyetokan</button>
	</div>
</body>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Tambah Stock
					Pembelian Buku</h4>
			</div>
			<div class="modal-body">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Kode Buku</th>
							<th>Judul Buku</th>
							<th>Harga</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="buku" items="${buku }">
							<tr>
								<td>${buku.kodeBuku}</td>
								<td><a href="#" id_edit="${buku.id_buku }" class="edit"
									data-dismiss="modal"> ${buku.judulBuku} </a></td>
								<td>${buku.hargaBuku}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<!-- ini update -->
<div class="modal fade" id="myModalUpdate" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">
					<center>Update Employee</center>
				</h4>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="name">Kode Buku</label> <input type="text"
							class="form-control" id="nameUpdate"
							placeholder="Input Your Name">
					</div>
					<div class="form-group">
						<label for="address">Judul Buku</label> <input type="text"
							class="form-control" id="addressUpdate"
							placeholder="Input Your Address">
					</div>
					<div class="form-group">
						<label for="school">Penulis</label> <input type="text"
							class="form-control" id="schoolUpdate"
							placeholder="Input Your School">
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<input type="submit" class="btn btn-default" id="btnUpdate"
					value="Update">
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function reload(){
		location.reload();
	}

	function pilihBuku(data){
		$("#judulBuku").val(data.judulBuku);
		$("#hargaBuku").val(data.hargaBuku);
		$("#id_buku").val(data.id_buku);
		
	}
	
	function hitung(){
		var harga = document.getElementById("hargaBuku").value;
		var belinya = document.getElementById("jmlbeli").value;
		var totalbeli = document.getElementById("totaljmlbeli").value = harga * belinya;
		var bayar = totalbeli + totalbeli;
		var tot = document.getElementById("totalbayar").value=bayar;
		
		//document.getElementById("totaljmlbeli").value=harga * belinya;
	}
	
	
	function clearForm(){
		$('#judulBuku').val("");
		$('#hargaBuku').val("");
		$('#jmlbeli').val("");
		$('#totaljmlbeli').val("");
	}
	
	function save(){
		var tanggal = $('#tanggal').val();
		var noPembelian = $('input[name="noPembelian"]').val();

		transaksi = {
			tanggal : tanggal,
			noPembelian : noPembelian,
			listDetailTransaksi : [
				
			]
		}

		var table = $("#datatable");
		var tbody = table.find('tbody');
		var tr = tbody.find('tr');
		var details = [];
		$.each(tr, function(index, data){
			
			detailsTransaksi = {
					judulBuku : $(this).find('td').eq(0).text(),
					harga : $(this).find('td').eq(1).text(),
					jmlBeli : $(this).find('td').eq(2).text(),
					total : $(this).find('td').eq(3).text()
				}
			
			transaksi.listDetailTransaksi.push(detailsTransaksi);
			
			
		});

		$.ajax({
			url : '/pemasokan/save',
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(transaksi), // Convert object to string
			dataType : 'JSON',
			success : function(data) {
				console.log(data);
			}
		});
	
	}
	
	$('#simpantransaksi').on('click',function(){
		$('#myModalUpdate').modal();
	});
	
</script>
</html>