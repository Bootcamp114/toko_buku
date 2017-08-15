<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data Buku</title>
<script type="text/javascript" src="/resources/assets/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
<script type="text/javascript" src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	//nampilin table buku
	showData();
	$(document).on("click", ".delete" ,function(){
		//alert("hello ganteng");
		onDelete(this);
	});
	
	$(document).on("click",".update" , function(){
		alert("hllo brooo");
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
						Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</div>
	</nav>
<div class="container">
<table align="center">
	<tr>
		<td>
		<div class="col-lg-6">
			<div class="input-group">
			<input style="width: 500px;" type="text" class="form-control" placeholder="Search for..."> 
			<span class="input-group-btn">
				<button class="btn btn-default" type="button">Go!</button>
				<button style="margin-left: 10px" type="button" class="btn btn-primary" id="lihat-buku">Lihat Buku</button>
			</span>
			</div>
		</div>
		</td>
	</tr>
</table>
<p>
<table class="table table-bordered" id="emp-dt">
	<thead>
		<tr>
			<th>Kode Buku</th>
			<th>Judul Buku</th>
			<th>Penulis</th>
			<th>Category</th>
			<th>Penerbit</th>
			<th>Tahun Terbit</th>
			<th>Distributor</th>
			<th>Harga</th>
			<th>Status</th>
			<th>Stock</th>
			<th colspan="2">Action</th>
		</tr>
	</thead>
	<tbody>
		<tr></tr>
	</tbody>
</table>
</div>
</body>
<script type="text/javascript">
	function showData(){
		$.ajax({
			url : "/datastockbuku/getall",
			type : "POST",
			dataType : "JSON",
			success : function(data, x, xhr) {
				console.log("data is loaded");
				console.log(data);
				fillData(data);
			}
		});
	}
	
	function fillData(data){
		var dt = $("#emp-dt");
		var tbody = dt.find('tbody');
		tbody.find('tr').remove();
		//extract data json
		$
				.each(
						data,
						function(index, buku) {
							var trString = "<tr>";
							trString += "<td>";
							trString += buku.kodeBuku;
							trString += "</td>";
							trString += "<td>";
							trString += buku.judulBuku;
							trString += "</td>";
							trString += "<td>";
							trString += buku.penulis;
							trString += "</td>";
							trString += "<td>";
							trString += buku.kategori;
							trString += "</td>";
							trString += "<td>";
							trString += buku.penerbit;
							trString += "</td>";
							trString += "<td>";
							trString += buku.tahunTerbit;
							trString += "</td>";
							trString += "<td>";
							trString += buku.distributor;
							trString += "</td>";
							trString += "<td>";
							trString += buku.hargaBuku;
							trString += "</td>";
							trString += "<td>";
							trString += buku.status;
							trString += "</td>";
							trString += "<td>";
							trString += buku.stock;
							trString += "</td>";
							trString += "<td>";
							trString += "<a id_delete='"+buku.id_buku+"'href ='#' class='delete'>delete</a>";
							trString += "</td>";
							trString += "<td>";
							trString += "<a id_update='"+buku.id_buku+"'href ='#' class='update' >update</a>";
							trString += "</td>";
							trString += "</tr>";
							tbody.append(trString);
						});
	}
	
	function onDelete(ini){
		var id_buku = $(ini).attr("id_delete");
		console.log(id_buku);
		$.ajax({
			url : "/datastockbuku/delete/"+id_buku,
			type : "DELETE",
			success : function(data){
				console.log(data);
				showData();
			}
		});
	}
	
	function onUpdate(ini){
		
	}
</script>
</html>