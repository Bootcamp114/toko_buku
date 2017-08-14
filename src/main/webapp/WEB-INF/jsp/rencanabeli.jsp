<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Perencanaan Pembelian</title>
<script type="text/javascript" src="/resources/assets/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
<script type="text/javascript" src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>

<script type="text/javascript">
 $(document).ready(function(){
	$("#teskhul").on('click', function(){
		save();
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
				<!-- <ul class="nav navbar-nav navbar-right">
		      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		    </ul> -->
			</div>
		</div>
	</nav>
	<div class="container">
		<form>
			<h3 align="center">Form Perencanaan Pembelian Buku <span class="label label-default"></span></h3><br>
			<div class="form-group col-xs-6">
				<label for="kodebuku">Kode Buku</label>
				<input style="width:45%;" type="text" class="form-control" name="kodeBuku" placeholder="Input Kode Buku">
			</div>
			<div class="form-group col-xs-6">
				<label for="judulbuku">Judul Buku</label>
				<input type="text" class="form-control" name="judulBuku" placeholder="Masukan Judul Buku">
			</div>
			<div class="form-group col-xs-6">
				<label for="penulis">Penulis</label>
				<input type="text" class="form-control" name="penulis" placeholder="Masukan Penulis">
			</div>
			<div class="form-group col-xs-6">
				<label for="category">Category</label>
				<select class="form-control" name="kategori" readonly>
						<option>
							Sastra
						</option>
						<option>
							Komputer
						</option>
				</select>
			</div>
			<div class="form-group col-xs-6">
				<label for="penerbit">Penerbit</label>
				<select class="form-control" name="penerbit" readonly>
						<option>
							Buku Advertising
						</option>
						<option>
							Bintang Buku
						</option>
				</select>
			</div>
			<div class="form-group col-xs-6">
				<label for="tahunterbit">Tahun Terbit</label>
				<input style="width:" type="number" class="form-control" name="tahunTerbit" placeholder="Masukan Tahun Terbit">
			</div>
			<div class="form-group col-xs-6">
				<label for="category">Distributor</label>
				<select class="form-control" name="distributor" readonly>
						<option>
							buku indo
						</option>
						<option>
							oke
						</option>
				</select>
			</div>
			<div class="form-group col-xs-6">
				<label for="hargabeli">Kisaran Harga</label>
			<div class="form-group">
					<label class="sr-only" for="amount">Amount (indollars)</label>
					<div class="input-group">
						<div class="input-group-addon">Rp</div>
							<input type="number" class="form-control" name="hargaBuku" placeholder="Masukan Kisaran Harga">
						<div class="input-group-addon">.00</div>
					</div>
				</div>
			</div>
			<div class="form-group col-xs-6">
				<label for="tahunterbit">Status</label>
				<input style="width:" type="text" class="form-control" name="status" placeholder="Masukan Status">
			</div>
			<div class="form-group col-xs-6">
				<label for="tahunterbit">Stock</label>
				<input style="width:" type="text" class="form-control" name="stock" placeholder="Masukan Stock">
			</div>
			<button type="button" name="submit" class="btn btn-primary" id="teskhul">Tambah Rencana</button>
		</form>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Kode Buku</th>
					<th>Judul Buku</th>
					<th>Penulis</th>
					<th>Categoty</th>
					<th>Penerbit</th>
					<th>Tahun Terbit</th>
					<th>Dsitributor</th>
					<th>Harga Beli</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>B001</td>
					<td>Laskar Pelangi</td>
					<td>Jontor</td>
					<td>Komputer</td>
					<td>Media Advertising</td>
					<td>2011</td>
					<td>buku indo</td>
					<td>32.000</td>
					<td>Progress</td>
					<td>
						<a href="#" class="glyphicon glyphicon-remove-sign"> Hapus</a>
					</td>
				</tr>
			</tbody>
		</table>
		<button type="button" class="btn btn-primary">Simpan Rencana</button>
	</div>
</body>

<script type="text/javascript">
	function save(){
		//alert("hello pejuang");
		var kodeBuku = $("input[name='kodeBuku']").val();
		var judulBuku = $("input[name='judulBuku']").val();
		var penulis = $("input[name='penulis']").val();
		var kategori = $("input[name='kategori']").val();
		var penerbit = $("input[name='penerbit']").val();
		var tahunTerbit = $("input[name='tahunTerbit']").val();
		var distributor = $("input[name='distributor']").val();
		var hargaBuku = $("input[name='hargaBuku']").val();
		var status = $("input[name='status']").val();
		var stock = $("input[name='stock']").val();
		
		var buku ={
				kodeBuku : kodeBuku,
				judulBuku : judulBuku,
				penulis : penulis,
				kategori : kategori,
				penerbit : penerbit,
				tahunTerbit : tahunTerbit,
				distributor : distributor,
				hargaBuku : hargaBuku,
				status : status,
				stock : stock
		}
		console.log(buku);
		
		 $.ajax({
			url : "/rencanabeli/save",
			type : "POST",
			contentType : "application/json",
			data : JSON.stringify(buku),
			success : function (data, a, xhr){
				if (xhr.status == 201) {
					console.log("Data Berhasil Di Create");
				}
			}
		});
	}
</script>
</html>