<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrasi Member</title>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
<script type="text/javascript"
	src="/resources/assets/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
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
<br/>
	<form method="post">
		<div class="container">
			<div class="form-group col-xs-4">
				<div class="form-group form-inline">
					<label>PIN</label>
					<div class="controls form-inline">
						<input type="hidden" name="id" class="form-group form-control" />
						<input type="text" name="no_faktur" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Nama Member</label>
					<div class="clearfix"></div>
					<div class="controls">
						<input type="text" name="nama_member" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Alamat</label>
					<div class="controls">
						<input type="text" name="alamat" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>No Hp</label>
					<div class="controls">
						<input type="number" name="no_hp" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<label>Tanggal</label>
					<div class="controls">
						<input type="date" name="tanggal" class="form-control">
					</div>
				</div>
				<div class="control-group">
					<label></label>
					<div class="controls">
						<button type="submit" name="simpan" class="btn btn-primary">Add Member</button>
					</div>
				</div>
				</div>
				<br/>
				<br/>
			<div class="form-group col-xs-7">
		<div class="table-responsive">
				<table class="table table-hover table-bordered">
					<tr>
						<th>PIN Member</th>
						<th>Nama Member</th>
						<th>Alamat</th>
						<th>No.Hp</th>
						<th>Tanggal</th>
					</tr>
				</table>
				</div>
			</div>
			</div>
			
	</form>

</body>
</html>