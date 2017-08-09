<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pembelian Buku</title>
	<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/assets/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css">
	<script type="text/javascript" src="/resources/assets/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/resources/assets/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
</head>
<body>
<h2><center>TokoBuku GrandMedia</center></h2>
<br/>
<br/>
	<form method="post">
	<div class="container">
    	<div class="form-group form-inline">
        <label>No Faktur</label>
        	<div class="controls form-inline">
          		<input type="text" name="no_faktur" class="form-control" readOnly/>
           	</div>
      	</div>
       	<div class="form-group form-inline">
        <label>Judul Buku</label>
        	<div class="clearfix"></div>
        	<div class="controls">
            	<input type="hidden" name="id_buku" class="form-group form-control"/>
            	<input type="text" name="buku" readonly class="form-control"/>
              	<a href="#" style="text-decoration:none; color: #fff;"><button type="button" class="form-group btn btn-info" data-toggle="modal" data-target="#exampleModal">Lihat</button></a>
            </div>
      	</div>
      	<div class="form-group form-inline">
        <label>Harga Buku</label>
        	<div class="controls">
            	<input type="text" id="num1" readonly onKeyUp="recalculateSum();" name="harga" class="form-control">
            </div>
      	</div>
      	<div class="form-group form-inline">
        <label>Jumlah Beli</label>
        	<div class="controls">
        		<input type="number" id="num2" onKeyUp="recalculateSum();" name="jumlah" class="form-control">
            </div>
      	</div>
        <div class="form-group form-inline">
        <label>Total Harga</label>
        	<div class="controls">
            	<input readonly type="text" id="sum" name="total" class="form-control">
            </div>
      	</div>
        <div class="control-group">
        <label></label>
        	<div class="controls">
        		<button type="submit" name="simpan" class="btn btn-primary">Tambah Buku</button>
        	</div>
      	</div>
    </div>
	</form>
</body>
</html>