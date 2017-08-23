<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
$(document).ready(function(){

	
	showData();
	//alert('Mulai Transaksi');
	$("#save").on("click", function() {
		save();
	});
	$("#save-anggotaedit").on("click", function(){
		var id = $('input[name="id"]').val();
		var nikedit = $('input[name="nikedit"]').val();
		var namaedit = $('input[name="namaedit"]').val();
		var jkedit = $('input[name="jkedit"]').val();
		var alamatedit = $('textarea[name="alamatedit"]').val();
		var pekerjaanedit = $('input[name="pekerjaanedit"]').val();
		var emailedit = $('input[name="emailedit"]').val();
		
		//Sama dengan java POJO (Encapsulation)
		var anggota = {
				id : id,
				nik : nikedit,
				nama : namaedit,
				jk : jkedit,
				alamat : alamatedit,
				pekerjaan : pekerjaanedit,
				email : emailedit
		}
			$.ajax({
				url : '/anggota/update',
				type : 'PUT',
				contentType : 'application/json',
				data : JSON.stringify(anggota),
				success : function(data, a, xhr){
					alert("berhasil disimpan");
					document.location="anggota";
				         	},
				 error: function() { 
                    alert("NIK / Email SUDAH DIGUNAKAN. Gunakan Data Lain!!!"); 
                } 
			});
	});
	$(document).on("click", '.delete', function(){
		onDelete(this);
	});
	$(document).on("click", ".update", function(){
		var id = $(this).attr('id_update');
		$.ajax({
			url : '/anggota/getbyid/'+ id,
			type : 'GET',
			dataType: 'json',
			success : function(data){
				updateColumn(data);
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
	 <li><a href="#"><span class="glyphicon glyphicon-user"></span> Nama Admin </a></li>

    </ul>
		</div>
	</div>
	</nav>
	<div class="container">
	<h2><center>Registrasi Anggota</center></h2>
	<form action="#">
		<div class="form-group col-xs-4">
			<label for="nik">NIK:</label>
			<input type="text" class="form-control" id="nik" placeholder="input oleh user (unique)" name="nik" onkeypress='return (event.charCode >= 48 && event.charCode <= 57) || event.charCode == 8 || event.charCode == 46'>
			<label for="nama">Nama:</label>
			<input type="text" class="form-control" id="nama" placeholder="input oleh user " name="nama">	
			<label for="jk">Gender:</label>
			<div class="radio">
  				<label><input type="radio" name="jk" value="Laki"  L?checked>Laki-laki </label>
  				<label><input type="radio" name="jk" value="Perempuan"  p?checked>Perempuan </label>
			</div><br/>
			 <label for="alamat">Alamat:</label>
 			 <textarea class="form-control" rows="3" id="alamat" name="alamat"></textarea>
			<label for="pekerjaan">Pekerjaan:</label>
			<input type="text" class="form-control" id="pekerjaan" placeholder="input oleh user " name="pekerjaan">	 
			<label for="email">Email:</label>
			<input type="text" class="form-control" id="email" placeholder="input oleh user(unique) " name="email"> <br/>	
			<input type="submit" name="save" id="save" value="SAVE" class="btn btn-primary">
		</div>
		<div class="form-group col-xs-8">
			<table id="anggota-dt" class="table table-striped">
				<thead>
					<tr>
						<th>NIK</th>
						<th>Nama</th>
						<th>JK</th>
						<th>Alamat</th>
						<th>No Handphone</th>
						<th>Email</th>
						<th colspan="2">Aksi</th>
					</tr>		
				</thead>
				<tbody>
					
				</tbody>
			</table>
		</div>
	</form>	
	</div>
	
	<!-- Modal 2 -->
	<div class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="gridSystemModalLabel" id="edit-anggota">
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
						<label for="nikedit">NIK:</label> 
						<input type= "hidden" name="id" id = "id"/>
						<input type="text"
							class="form-control" id="nikedit"
							placeholder="input oleh user (unique)" name="nikedit" onkeypress='return (event.charCode >= 48 && event.charCode <= 57) || event.charCode == 8 || event.charCode == 46'><br />
						<label for="namaedit">Nama:</label> <input type="text"
							class="form-control" id="namaedit" placeholder="input oleh user "
							name="namaedit"><br /> <label for="jk">Gender:</label>
						<div class="radio">
							<label><input type="radio" name="jkedit" id="jkedit">Laki-laki
							</label> <label><input type="radio" name="jkedit" id="jkedit">Perempuan
							</label>
						</div>
						<br />
					</div>
					<div class="form-group col-xs-6">
						<label for="alamatedit">Alamat:</label>
						<textarea class="form-control" rows="3" id="alamatedit" name="alamatedit"></textarea>
						<br /> <label for="pekerjaanedit">Pekerjaan:</label> <input
							type="text" class="form-control" id="pekerjaanedit"
							placeholder="input oleh user " name="pekerjaanedit"><br /> <label
							for="emailedit">Email:</label> <input type="text"
							class="form-control" id="emailedit"
							placeholder="input oleh user(unique) " name="emailedit"><br />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal"
							id="save-anggotaedit">Save</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
	</div>
		<!-- /.modal -->
	
	
</body>
<script>
var jk;
$(document).ready(function(){
	$('input[name="jk"]').on("change", function(){
		jk = $(this).val();
	});
});
function showData(){
	$.ajax({
		url : '/anggota/getAll',
		type : 'POST',
		dataType : 'json',
		success : function(data, x, xhr){
			fillData(data);
		}
	});
}
function fillData(data){
	var dt = $("#anggota-dt");
	var tbody = dt.find('tbody');
	tbody.find('tr').remove();
	
	$.each(data, function(index, anggota){
		var trString = "<tr>";
				trString += "<td>";
				 	trString += anggota.nik;
					trString += "</td>";
					trString += "<td>";
				 		trString += anggota.nama;
					trString += "</td>";
					trString += "<td>";
			 			trString += anggota.jk;
					trString += "</td>";
					trString += "</td>";
					trString += "<td>";
				 		trString += anggota.alamat;
					trString += "</td>";
					trString += "<td>";
			 			trString += anggota.pekerjaan;
					trString += "</td>";
					trString += "</td>";
					trString += "<td>";
				 		trString += anggota.email;
					trString += "</td>";
					trString += "<td>";
				 		trString += "<a id_delete='"+anggota.id+"' href='#' class='delete'>Delete</a>";
				trString += "</td>";
				trString += "</td>";
					trString += "<td>";
				 		trString += "<a id_update='"+anggota.id+"' href='#' class='update' data-toggle='modal' data-target='#edit-anggota'>Update</a>";
					trString += "</td>";
			trString += "</tr>"
			tbody.append(trString);
	});
}

	function clear(){
		$('input[name="nik"]').val("");
		$('input[name="nama"]').val("");
		$('input[name="jk"]').val("");
		$('textarea[name="alamat"]').val("");
		$('input[name="pekerjaan"]').val("");
		$('input[name="email"]').val("");
	}
	function save(){
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
			$.ajax({
				url : '/anggota/save',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(anggota),
				success : function(data, a, xhr){
						alert("berhasil disimpan");
						document.location="anggota";
					         	},
				 error: function() { 
	                    alert("NIK / Email SUDAH DIGUNAKAN. Gunakan Data Lain!!!"); 
	                }  
			});
		
	}
	

	function onDelete(ini){
		var id = $(ini).attr('id_delete');
		alert();
		$.ajax({
			url : '/anggota/delete/'+id,
			type : 'DELETE',
			success : function(){
				alert("berhasil dihapus");
				document.location="anggota";
			         	},
		 error: function() { 
             alert("Tidak dapat menghapus "+ id + " untuk Saat ini."); 
            } 
		});
	}
	function updateColumn(data){
		$('input[name="id"]').val(data.id);
		$('input[name="nikedit"]').val(data.nik);
		$('input[name="namaedit"]').val(data.nama);
		$('input[name="jkedit"]').val(data.jk);
		$('textarea[name="alamatedit"]').val(data.alamat);
		$('input[name="pekerjaanedit"]').val(data.pekerjaan);
		$('input[name="emailedit"]').val(data.email);
	}
</script>

</html>