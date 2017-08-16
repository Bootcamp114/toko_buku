<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page isELIgnored="false"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pembelian Buku</title>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
<script type="text/javascript"
	src="/resources/assets/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#tambahBuku").on("click", function(){
			tambahBuku();
			window.location.href="/pembelian";
		});
		
		$(document).on("click","#hapusDetail", function(){
			var conf = confirm("Apakah Anda ingin menghapus data?");
			if(conf == true){
				doDelete(this);
				window.location.href="/pembelian";
			}
		});
		
		$(document).on("click", ".pilih", function(){
			var id = $(this).attr("id_pilih");
			
			$.ajax({
				url : '/pembelian/pilih/' +id,
				type : 'GET',
				success : function(data){
					pilihBuku(data);
				}
			});
		});
	});
</script>
	<style>
  .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
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
    <!-- <ul class="nav navbar-nav navbar-right">
    	<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    	<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul> -->
  	</div>
</div>
</nav>
		<div class="container">
			<div class="form-group col-xs-4">
				<div class="form-group form-inline">
					<label>No Faktur</label>
					<div class="controls form-inline">
						<input type="text" name="no_faktur" class="form-control"
							value="FK00001" readOnly />
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Judul Buku</label>
					<div class="clearfix"></div>
					<div class="controls">
						<input type="hidden" id="id_buku"
							class="form-group form-control" /> <input type="text" id="judulBuku"
							name="JudulBuku" readonly class="form-control" /> <a href="#"
							style="text-decoration: none; color: #fff;"><button
								type="button" class="form-group btn btn-info" data-toggle="modal" data-target="#formBuku">Lihat</button></a>
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Harga Buku</label>
					<div class="controls">
						<input type="text" id="hargaBuku" name="hargaBuku" class="form-control" readOnly>
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Jumlah Beli</label>
					<div class="controls">
						<input type="number" id="jumlah" onKeyUp="recalculateSum();" name="jumlah" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Total Harga</label>
					<div class="controls">
						<input readonly type="text" id="total" name="total" class="form-control">
					</div>
				</div>
				<div class="control-group">
					<label></label>
					<div class="controls">
						<button type="submit" name="tambahBuku" id="tambahBuku" class="btn btn-primary">Tambah Buku</button>
					</div>
				</div>
			</div>
			
			<br/>
			<div class="form-group col-xs-7">
			<div class="table-responsive">
				<table id="detail-dt" class="table table-hover table-bordered">
					<thead>
						<tr>
							<th>Judul Buku</th>
							<th>Harga Satuan</th>
							<th>Jumlah Beli</th>
							<th>Total</th>
							<th class="text-center">Hapus</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="listDetail" items="${listDetail}">
							<tr>
								<td>${listDetail.buku.judulBuku}</td>
								<td>${listDetail.buku.hargaBuku}</td>
								<td>${listDetail.jumlahBeli}</td>
								<td>${listDetail.totalHarga}</td>
								<td align="center"><button type="button" name="hapus" id_hapus="${listDetail.id}" id="hapusDetail" class="btn btn-danger btn-xs">Hapus</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<br />
			<div class="form-group form-inline">
				<label>Apakah Anda Member?</label>
				<div class="controls">
					<div class="radio-inline" data-toggle="modal" data-target="#formMember"> <input type="radio" name="radioOption" id="ya"> Ya </div>
        			<div class="radio-inline"> <input type="radio" name="radioOption" id="tidak"> Tidak </div>
				</div>
			</div>
			<div class="form-group form-inline">
				<label>Diskon</label>
				<div class="controls">
					<input type="text" id="diskon" name="diskon" class="form-control" size="1" readonly>
				</div>
			</div>
			<div class="form-group form-inline">
				<label>Bayar</label>
				<div class="controls">
					<input name="bayar" id="bayar" onKeyUp="recalculateKembalian();"
						class="demo form-control" type="text"> <input
						name="bayarGet" id="bayarGet" readonly type="hidden">
				</div>
			</div>
			<div class="form-group form-inline">
				<label>Kembalian / Hutang ( Jika min - )</label>
				<div class="controls">
					<input type="text" id="kembalian" name="kembalian"
						class="form-control" readonly>
				</div>
			</div>
			<div class="form-group form-inline">
				<label>Tanggal penjualan</label>
				<div class="controls">
					<input type="date" name="tanggal" class="tcal form-control">
				</div>
			</div>
			<div class="control-group">
				<label></label>
				<div class="controls">
					<button type="submit" name="selesai" class="btn btn-primary">Selesai
						penjualan</button>
				</div>
			</div>
		</div>
		
	<div class="modal fade" id="formBuku" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Daftar Buku Yang
								Tersedia</h4>
						</div>
						<div class="table-responsive">
							<table id="buku-dt" class="table table-hover table-bordered" align="center">
								<thead>
									<tr>
										<th>Judul Buku (klik judul buku)</th>
										<th>Penulis</th>
										<th>Penerbit</th>
										<th>Harga</th>
										<th>Stok</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="listBuku" items="${listBuku}">
									<tr>
										<td><a href="#" data-dismiss="modal" name="pilih" id_pilih="${listBuku.id_buku}" class="pilih"> ${listBuku.judulBuku} </a></td>
										<td>${listBuku.penulis}</td>
										<td>${listBuku.penerbit.namaPenerbit}</td>
										<td>${listBuku.hargaBuku}</td>
										<td>${listBuku.stock}</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			
			<div class="modal fade" id="formMember" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="gridSystemModalLabel">Member</h4>
						</div>
						<form style="margin: 30px;">
						<div class="form-group form-inline">
					<label>PIN Member</label>
					<div class="controls">
						<input type="text" name="pin" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Nama Member</label>
					<div class="controls">
						<input readonly type="text" name="nama_member" class="form-control">
					</div>
				</div>
				<div class="control-group">
					<label></label>
					<div class="controls">
						<button type="submit" data-dismiss="modal" name="ok" class="btn btn-primary">OK</button>
					</div>
				</div>
				</form>
					</div>
				</div>
			</div>			
</body>
<script type="text/javascript">
	function pilihBuku(data){
		$('#id_buku').val(data.id_buku);
		$('#judulBuku').val(data.judulBuku);
		$('#hargaBuku').val(data.hargaBuku);
	}
	function tambahBuku(){
		var id = $('#id_buku').val();
		var judulBuku = $('#judulBuku').val();
		var hargaBuku = $('#hargaBuku').val();
		var jumlah = $('#jumlah').val();
		var total = $('#total').val();
		
		var detailBuku = {
				jumlahBeli : jumlah,
				totalHarga : total,
				buku : {
					id_buku : id
				}
		}
		$.ajax({
			url : '/detailpembelian/save',
			type : 'POST',
			contentType : 'application/json',
			dataType : 'json',
			data : JSON.stringify(detailBuku),
			success : function(data, x, xhr){
				console.log("data masuk");
				console.log(data);
				clearForm();
			}
		});
		
		function clearForm(){
			$('input[id="id_buku"]').val("");
			$('input[id="judulBuku"]').val("");
			$('input[id="hargaBuku"]').val("");
			$('input[id="jumlah"]').val("");
			$('input[id="total"]').val("");
		}
	}
	function recalculateSum(){
  		var hargaBuku = document.getElementById("hargaBuku").value;
  		var jumlah = document.getElementById("jumlah").value;
  		document.getElementById("total").value = hargaBuku * jumlah;     
	}
	function doDelete(del){
		var id = $(del).attr("id_hapus");
		$.ajax({
			url : "/detailpembelian/delete/"+id,
			type : "DELETE",
			success : function(data){
				console.log(data);
			}
		});
	}
</script>
</html>