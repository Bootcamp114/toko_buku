<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrasi kasir</title>
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
		showData();
		$("#tambah").on("click", function(){
			save();
			window.location.href="/kasir/";
		});
		$("input[name='jk']").on("change", function(){
			jk = $(this).val();
		});
		
		$(document).on("click",".delete", function(){
			var conf = confirm("Apakah Anda ingin menghapus kasir?");
			if(conf == true){
				doDelete(this);
				window.location.href="/kasir";
			}
		});
		
		$('#updateBtn').on('click',function(){
			var id = $('#id').val();
			var nik = $('#nik').val();
			var namaKasir = $('#namaKasir').val();
			var agama = $('#agama').val();
			var alamat = $('#alamat').val();
			var noHp = $('#noHp').val();
			var status = $('#status').val();
			
			var kasir = {
					id : id,
					nik : nik,
					namaKasir : namaKasir,
					jk : jk,
					agama : agama,
					alamat : alamat,
					noHp : noHp,
					status : status
			}
			
			$.ajax({
				url : '/kasir/update',
				type: 'PUT',
				contentType: 'application/json',
				data: JSON.stringify(kasir),
				success : function(data){
					showData();
					clearForm()
				}
			});
		});
		
		$(document).on("click", '.update', function(){
			var id = $(this).attr('id_update');
		
			$.ajax({
				url : '/kasir/edit/'+ id,
				type : 'GET',
				success : function(data){
					updateColumn(data);
				}
			});
		});
	});
	
</script>
<style>
	th {
	background-color: #4CAF50;
	color: white;
	}
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
    	<li><a href="member">Member</a></li>
    	<li><a href="pembelian">Pembelian</a></li>
    	<li><a href="rencanabeli">Stok Buku</a></li>
    	<li><a href="datastockbuku">Data Buku</a></li>
    	<li><a href="kasir">Kasir</a></li>
    </ul>
    <!-- <ul class="nav navbar-nav navbar-right">
    	<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    	<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul> -->
  	</div>
</div>
</nav>
<br/>
<h3 align="center">Form Kasir</h3>
		<div class="container">
			<div class="form-group col-xs-3">
				<div class="form-group form-inline">
					<label>NIK</label>
					<div class="controls form-inline">
						<input type="hidden" id="id" class="form-group form-control" />
						<input type="text" placeholder="Masukkan NIK" id="nik" class="form-control" size="15" maxlength="8"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Nama kasir</label>
					<div class="clearfix"></div>
					<div class="controls">
						<input type="text" id="namaKasir" class="form-control" placeholder="Masukkan Nama">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Jenis Kelamin</label>
					<div class="controls">
						<div class="radio-inline"><input type="radio" name="jk" id="jk" value="P"> Perempuan </div>
        				<div class="radio-inline"><input type="radio" name="jk" id="jk" value="L"> Laki-Laki </div>
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Agama</label>
					<div class="controls">
						<select id="agama" class="form-control" style="width: 100px;">
							<option></option>
							<option value="Islam">Islam</option>
							<option value="Kristen">Kristen</option>
							<option value="Protestan">Protestan</option>
							<option value="Hindu">Hindu</option>
							<option value="Budha">Budha</option>
						</select>
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Alamat</label>
					<div class="controls">
						<input type="text" id="alamat" class="form-control" placeholder="Masukkan Alamat">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>No Hp</label>
					<div class="controls">
						<input type="number" id="noHp" class="form-control" maxlength="13" placeholder="Masukkan NoHp">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Status</label>
					<div class="controls">
						<select id="status" class="form-control" style="width: 100px;">
							<option></option>
							<option value="Menikah">Menikah</option>
							<option value="Lajang">Lajang</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label></label>
					<div class="controls">
						<button type="submit" id="tambah" class="btn btn-primary">Tambah kasir</button>
						<button type="submit" id="updateBtn" class="btn btn-primary">Update</button>
					</div>
				</div>
				</div>
				<br/>
				<br/>
			<div class="form-group col-xs-9">
		<div class="table-responsive">
				<table id="kas-dt" class="table table-hover table-bordered">
					<thead>
						<tr>
							<th>NIK</th>
							<th>Nama Kasir</th>
							<th>JK</th>
							<th>Agama</th>
							<th>Alamat</th>
							<th>No.Hp</th>
							<th>Status</th>
							<th colspan="2">Aksi</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
				</div>
			</div>
			</div>


</body>
<script type="text/javascript">
function doDelete(del){
	var id = $(del).attr("id_delete");
	$.ajax({
		url : "/kasir/delete/"+id,
		type : "DELETE",
		success : function(data){
			console.log(data);
			showData();
		}
	});
}

function showData(){
	$.ajax({
		url : "/kasir/getall",
		type : "POST",
		dataType : "JSON",
		success : function(data, x, xhr) {
			console.log(data);
			fillData(data);
		}
	});
}

function fillData(data){
	var dt = $("#kas-dt");
	var tbody = dt.find('tbody');
	tbody.find('tr').remove();
	//extract data json
	$.each(data, function(index, kasir) {
						var trString = "<tr>";
						trString += "<td>";
						trString += kasir.nik;
						trString += "</td>";
						trString += "<td>";
						trString += kasir.namaKasir;
						trString += "</td>";
						trString += "<td>";
						trString += kasir.jk;
						trString += "</td>";
						trString += "<td>";
						trString += kasir.agama;
						trString += "</td>";
						trString += "<td>";
						trString += kasir.alamat;
						trString += "</td>";
						trString += "<td>";
						trString += kasir.noHp;
						trString += "</td>";
						trString += "<td>";
						trString += kasir.status;
						trString += "</td>";
						trString += "<td>";
						trString += "<a id_delete='"+kasir.id+"' href ='#' class='delete'>Delete</a>";
						trString += "</td>";
						trString += "<td>";
						trString += "<a id_update='"+kasir.id+"' href ='#' class='update'>Edit</a>";
						trString += "</td>";
						trString += "</tr>";
						tbody.append(trString);
					});
}
	function save(){
		var id = $('#id').val();
		var nik = $('#nik').val();
		var namaKasir = $('#namaKasir').val();
		var agama = $('#agama').val();
		var alamat = $('#alamat').val();
		var noHp = $('#noHp').val();
		var status = $('#status').val();
		
		var kasir = {
				id : id,
				nik : nik,
				namaKasir : namaKasir,
				jk : jk,
				agama : agama,
				alamat : alamat,
				noHp : noHp,
				status : status
		}
		$.ajax({
			url : '/kasir/save',
			type : 'POST',
			contentType : 'application/json',
			dataType : 'json',
			data : JSON.stringify(kasir),
			success : function(data, x, xhr){
				showData();
				clearForm();
			}
		});
		
		
	}
	
	function updateColumn(data){
		$('input[id="id"]').val(data.id);
		$('input[id="nik"]').val(data.nik);
		$('input[id="namaKasir"]').val(data.namaKasir);
		$('input[id="agama"]').val(data.agama);
		$('input[id="alamat"]').val(data.alamat);
		$('input[id="noHp"]').val(data.noHp);
		$('input[id="status"]').val(data.status);
	}
	
	function clearForm(){
		$('input[id="id"]').val("");
		$('input[id="nik"]').val("");
		$('input[id="namaKasir"]').val("");
		$('input[name="jk"]').val("");
		$('input[id="agama"]').val("");
		$('input[id="alamat"]').val("");
		$('input[id="noHp"]').val("");
		$('input[id="status"]').val("");
	}
</script>
</html>