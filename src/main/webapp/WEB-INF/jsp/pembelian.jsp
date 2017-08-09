<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
</head>
<body>
	<h2>
		<center>TokoBuku GrandMedia</center>
	</h2>
	<br />
	<br />
	<form method="post">
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
						<input type="hidden" name="id_buku"
							class="form-group form-control" /> <input type="text"
							name="buku" readonly class="form-control" /> <a href="#"
							style="text-decoration: none; color: #fff;"><button
								type="button" class="form-group btn btn-info"
								data-toggle="modal" data-target="#formBuku">Lihat</button></a>
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Harga Buku</label>
					<div class="controls">
						<input type="text" id="num1" readonly onKeyUp="recalculateSum();"
							name="harga" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Jumlah Beli</label>
					<div class="controls">
						<input type="number" id="num2" onKeyUp="recalculateSum();"
							name="jumlah" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Total Harga</label>
					<div class="controls">
						<input readonly type="text" id="sum" name="total"
							class="form-control">
					</div>
				</div>
				<div class="control-group">
					<label></label>
					<div class="controls">
						<button type="submit" name="simpan" class="btn btn-primary">Tambah
							Buku</button>
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
							<table class="table table-hover table-bordered">
								<tr>
									<th>Judul Buku</th>
									<th>Penulis</th>
									<th>Penerbit</th>
									<th>Harga</th>
									<th>Stok</th>
									<th>Aksi</th>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<br /> <br />
			<div class="table-responsive">
				<table class="table table-hover table-bordered">
					<tr>
						<th>Judul</th>
						<th>Harga Satuan</th>
						<th>Jumlah Beli</th>
						<th>PPN</th>
						<th>Total</th>
						<th class="text-center">Hapus</th>
					</tr>
				</table>
			</div>
			<br /> <br />
			<div class="form-group form-inline">
				<label>Bayar</label>
				<div class="controls">
					<input type="hidden" name="grand_total" id="total"
						class="form-control" value="<?php echo $grand['grand_total'] ?>">
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
	</form>
</body>
<script type="text/javascript">
	function showData() {
		$.ajax({
			url : '/employee/getAll',
			type : 'POST',
			dataType : 'json',
			success : function(data, x, xhr) {
				console.log("data is loaded!!");
				fillData(data);
			}
		});
	}

	function fillData(data) {
		var dt = $('#emp-dt');
		var tbody = dt.find('tbody');
		tbody.find('tr').remove();
		//extract data json
		$.each(data, function(index, employee) {
			var trString = "<tr>";
			trString += "<td>";
			trString += employee.name;
			trString += "</td>";
			trString += "<td>";
			trString += employee.address;
			trString += "</td>";
			trString += "<td>";
			trString += employee.salary;
			trString += "</td>";
			trString += "<td>";
			trString += employee.email;
			trString += "</td>";
			trString += "<td>";
			trString += "<a id_update='"+employee.id+"' name_update='"+employee.name+"' address_update='"+employee.address+"' salary_update='"+employee.salary+"' email_update='"+employee.email+"' href='#' class='update'>Update || </a>";
			trString += "<a id_delete='"+employee.id+"' href='#' class='delete'>Delete</a>";
			trString += "</td>";
			trString += "</tr>";
		tbody.append(trString);
		});
	}
</script>
</html>