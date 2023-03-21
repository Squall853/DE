<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/SF.ico">
	<title>Nhân Viên</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<style>
    /* Remove the navbar"s default margin-bottom and rounded borders */
    .navbar {
      margin-bottom:0;
      border-radius:0;
    }
    
    /* Add a black background color and some padding to the footer */
    footer {color:white;
      background:#000000;
      padding:15px;
	  	  
    }
    
  .carousel-inner img {
      width:100%; /* Set width to 100% */
      margin:auto;
      min-height:200px;
  }
	.active2{
	color:white;
	background:black;}
	.center{
		text-align: center;
	}

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width:600px) {
    .carousel-caption {
      display:none;
    }
  }
  </style>
</head>
<body style="min-height:650px">
	
	
<!--Nav-->
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a href="index.jsp" class="glyphicon glyphicon-home navbar-brand"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">Trang Chủ</a></li>
				
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="NhanVien.jsp"><%=session.getAttribute("TaiKhoan")%></a></li>
				<li><a href="index.jsp">Đăng Xuất</a></li>
			</ul>
		</div>
  </div>
</nav>
<div>
</div>

<div class="container-fluid">
	<div class="col-md-3">
		<h4 class="text-center" style="line-height:40px;color:white;background:black;">Dành Cho Nhân Viên</h4>
		<ul class="list-group">
			<li class="list-group-item "><a href="NhanVien.jsp" style="color:black">Thông Tin Nhân Viên</a></li>
			<li class="list-group-item"><a href="NV_ChinhSua.jsp" style="color:black">Chỉnh Sửa Thông Tin</a></li>
			<li class="list-group-item "><a href="NV_QuanLyMatHang.jsp" style="color:black">Quản Lý Mặt Hàng</a></li>
			<li class="list-group-item active2"><a href="NV_QuanLyDonHang.jsp" style="color:white">Quản Lý Đơn Hàng</a></li>
			<li class="list-group-item"><a href="NV_QuanLyKhachHang.jsp" style="color:black">Quản Lý Khách Hàng</a></li>
			<li class="list-group-item"><a href="NV_QuanLyBaoHanh.jsp" style="color:black">Quản Lý Bảo Hành</a></li>
			<li class="list-group-item"><a href="NV_QuanLyDatHang.jsp" style="color:black">Quản Lý Đặt Hàng</a></li>
		</ul>
	</div>
	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:black">Quản Lý Đơn Hàng</h4>
	</div>

	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:gray">Thêm Hóa Đơn Mới</h4>
	</div>
	<div class="col-md-9" align="center">
	<form method="post" action="addDonHang.jsp" >	
		<table cellpadding ="10">

				<tr valign="top">
					<td><label>Mã hóa đơn: </label></td>
					<td><input class="form-control" type="text" name="MaHD"/></td>
				</tr>
		
				<tr valign="top">
					<td><label>Ngày lập:</label></td>
					<td>
						<input class="form-control" type="date" name="NgayLap"></title>
					</td>
						
					
				</tr>
				<tr valign="top">
					<td><label>Mã Khách Hàng:</label></td>
					<td><input class="form-control" type="text" name="MaKH" /></td>
					
				</tr>
				<tr>
				<tr valign="top">
					<td><label>Mã Nhân Viên:</label></td>
					<td><input class="form-control" type="text" name="MaNV"/></td>
				</tr>
				
				<tr>
					<td></td>
					<td align="left">
							<button type="submit" class="btn btn-default" >Thêm</button>
							<button type="reset" class="btn btn-default">Nhập Lại</button>
					</td>
					
				</tr>		
		</table>
		
		
	</form>
	</div>
	
	
</div>

<!-- Footer-->
<br>

<footer class="container-fluid text-center">
  <p>Ngô Bảo Ninh</p>
   <p>Nguyễn Hồ Hồng Đạt</p>
</footer>
</body>
</html>

