<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page isELIgnored="false"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrasi Member</title>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="/resources/assets/DataTables-1.10.15/media/css/jquery.dataTables.min.css" />
	
<script type="text/javascript"
	src="/resources/assets/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$('#mem-dt').DataTable();
	
		$("#tambah").on("click", function(){
			save();
			window.location.href="/member/";
		});
		$("input[name='jk']").on("change", function(){
			jk = $(this).val();
		});
		
		$(document).on("click",".delete", function(){
			var conf = confirm("Apakah Anda ingin menghapus data?");
			if(conf == true){
				doDelete(this);
				window.location.href="/member";
			}
		});
		
		$('#updateBtn').on('click',function(){
			var id = $('#id').val();
			var pinMember = $('#pinMember').val();
			var namaMember = $('#namaMember').val();
			var alamat = $('#alamat').val();
			var noHp = $('#noHp').val();
			var tanggal = $('#tanggal').val();
			var diskon = $('#diskon').val();
			
			var member = {
					id : id,
					pinMember : pinMember,
					namaMember : namaMember,
					jk : jk,
					alamat : alamat,
					noHp : noHp,
					tanggal : tanggal,
					diskon : diskon
			}
			
			$.ajax({
				url : '/member/update',
				type: 'PUT',
				contentType: 'application/json',
				data: JSON.stringify(member),
				success : function(data){
					showData();
					clearForm()
				}
			});
		});
		
		$(document).on("click", '.update', function(){
			var id = $(this).attr('id_update');
		
			$.ajax({
				url : '/member/edit/'+ id,
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
<h3 align="center">Form Member</h3>
		<div class="container">
			<div class="form-group col-xs-3">
				<div class="form-group form-inline">
					<label>PIN</label>
					<div class="controls form-inline">
						<input type="hidden" id="id" class="form-group form-control" />
						<input type="text" placeholder="Masukkan 8 karakter" id="pinMember" class="form-control" size="15" maxlength="8"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Nama Member</label>
					<div class="clearfix"></div>
					<div class="controls">
						<input type="text" id="namaMember" class="form-control">
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
					<label>Alamat</label>
					<div class="controls">
						<input type="text" id="alamat" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>No Hp</label>
					<div class="controls">
						<input type="number" id="noHp" class="form-control" maxlength="4">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Tanggal</label>
					<div class="controls">
						<input type="text" id="tanggal" name="tanggal" class="tcal form-control" size="6">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Diskon</label>
					<div class="controls">
						<input type="text" id="diskon" class="form-control" size="1" value="10%" readonly>
					</div>
				</div>
				<div class="control-group">
					<label></label>
					<div class="controls">
						<button type="submit" id="tambah" class="btn btn-primary">Tambah Member</button>
						<!-- <button type="submit" id="updateBtn" class="btn btn-primary">Update</button> -->
					</div>
				</div>
				</div>
				<br/>
				<br/>
			<div class="form-group col-xs-9">
		<div class="table-responsive">
				<table id="mem-dt">
					<thead>
						<tr>
							<th>PIN Member</th>
							<th>Nama Member</th>
							<th>JK</th>
							<th>Alamat</th>
							<th>No.Hp</th>
							<th>Tanggal</th>
							<th>Diskon</th>
							<th>Aksi</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="listMember" items="${listMember}">
								<tr>
									<td>${listMember.pinMember}</td>
									<td>${listMember.namaMember}</td>
									<td>${listMember.jk}</td>
									<td>${listMember.alamat}</td>
									<td>${listMember.noHp}</td>
									<td>${listMember.tanggal}</td>
									<td>${listMember.diskon}</td>
									<td><a id_delete="${listMember.id}" href ="#" class="delete">Delete</a></td>
								</tr>
							</c:forEach>
					</tbody>
				</table>
				</div>
			</div>
			</div>


</body>
<script type="text/javascript">
var date = new Date();
var hari = date.getDate();
var bulan = date.getMonth() + 1;
var tahun = date.getFullYear();
$("#tanggal").val(tahun + "-" + bulan + "-" + hari);

function doDelete(del){
	var id = $(del).attr("id_delete");
	$.ajax({
		url : "/member/delete/"+id,
		type : "DELETE",
		success : function(data){
			console.log(data);
			showData();
		}
	});
}

function showData(){
	$.ajax({
		url : "/member/getall",
		type : "POST",
		dataType : "JSON",
		success : function(data, x, xhr) {
			console.log(data);
			fillData(data);
		}
	});
}

function fillData(data){
	var dt = $("#mem-dt");
	var tbody = dt.find('tbody');
	tbody.find('tr').remove();
	//extract data json
	$.each(data, function(index, member) {
						var trString = "<tr>";
						trString += "<td>";
						trString += member.pinMember;
						trString += "</td>";
						trString += "<td>";
						trString += member.namaMember;
						trString += "</td>";
						trString += "<td>";
						trString += member.jk;
						trString += "</td>";
						trString += "<td>";
						trString += member.alamat;
						trString += "</td>";
						trString += "<td>";
						trString += member.noHp;
						trString += "</td>";
						trString += "<td>";
						trString += member.tanggal;
						trString += "</td>";
						trString += "<td>";
						trString += member.diskon;
						trString += "</td>";
						trString += "<td>";
						trString += "<a id_delete='"+member.id+"' href ='#' class='delete'>Delete</a>";
						trString += "</td>";
						/* trString += "<td>";
						trString += "<a id_update='"+member.id+"' href ='#' class='update'>Edit</a>";
						trString += "</td>"; */
						trString += "</tr>";
						tbody.append(trString);
					});
}
	function save(){
		var id = $('#id').val();
		var pinMember = $('#pinMember').val();
		var namaMember = $('#namaMember').val();
		var alamat = $('#alamat').val();
		var noHp = $('#noHp').val();
		var tanggal = $('#tanggal').val();
		var diskon = $('#diskon').val();
		
		var member = {
				id : id,
				pinMember : pinMember,
				namaMember : namaMember,
				jk : jk,
				alamat : alamat,
				noHp : noHp,
				tanggal : tanggal,
				diskon : diskon
		}
		$.ajax({
			url : '/member/save',
			type : 'POST',
			contentType : 'application/json',
			dataType : 'json',
			data : JSON.stringify(member),
			success : function(data, x, xhr){
					showData();
					clearForm();
			},
			error : function(){
				alert("Data sama");
			}
			
		});
		
		
	}
	
	function updateColumn(data){
		$('input[id="id"]').val(data.id);
		$('input[id="pinMember"]').val(data.pinMember);
		$('input[id="namaMember"]').val(data.namaMember);
		$('input[id="alamat"]').val(data.alamat);
		$('input[id="noHp"]').val(data.noHp);
		$('input[id="tanggal"]').val(data.tanggal);
		$('input[id="diskon"]').val(data.diskon);
	}
	
	function clearForm(){
		$('input[id="id"]').val("");
		$('input[id="pinMember"]').val("");
		$('input[id="namaMember"]').val("");
		$('input[name="jk"]').val("");
		$('input[id="alamat"]').val("");
		$('input[id="noHp"]').val("");
		$('input[id="tanggal"]').val("");
		$('input[id="diskon"]').val("");
	}
</script>
<script type="text/javascript" src="/resources/assets/DataTables-1.10.15/media/js/jquery.dataTables.min.js"></script>
</html>