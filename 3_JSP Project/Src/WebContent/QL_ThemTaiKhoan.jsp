<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/SF.ico">
	<title>Quản Lý</title>
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
				<li><a href="QuanLy.jsp"><%=session.getAttribute("TaiKhoan") %></a></li>
				<li><a href="index.jsp">Đăng Xuất</a></li>
			</ul>
		</div>
  </div>
</nav>
<div>
</div>

<div class="container-fluid">
	<div class="col-md-3">
		<h4 class="text-center" style="line-height:40px;color:white;background:black;">Dành Cho Quản Lý</h4>
	<ul class="list-group">
			<li class="list-group-item"><a href="QuanLy.jsp" style="color:black">Thông Tin Quản Lý</a></li>
			<li class="list-group-item"><a href="QL_ChinhSua.jsp" style="color:black">Chỉnh Sửa Thông Tin</a></li>
			
			<!--<li class="list-group-item"><a href="QL_ThemNhomHang.jsp" style="color:black">Thêm Nhóm Hàng</a></li>-->
			<li class="list-group-item"><a href="QL_QuanLyNhaCungCap.jsp" style="color:black">Quản Lý Nhà Cung Cấp</a></li>
			<li class="list-group-item"><a href="QL_QuanLyNhapHang.jsp" style="color:black">Quản Lý Nhập Hàng</a></li>
			<li class="list-group-item"><a href="QL_QuanLyMatHang.jsp" style="color:black">Quản Lý Mặt Hàng</a></li>
			<li class="list-group-item active2"><a href="QL_QuanLyTaiKhoan.jsp" style="color:white">Quản Lý Tài Khoản</a></li>
			
			<li class="list-group-item"><a href="QL_QuanLyNhanVien.jsp" style="color:black">Quản Lý Nhân Viên</a></li>
			<li class="list-group-item"><a href="QL_ThongKeNhapHang.jsp" style="color:black">Thống Kê Nhập Hàng</a></li>
			<li class="list-group-item"><a href="QL_ThongKeDonHang.jsp" style="color:black">Thống Kê Đơn Hàng</a></li>
			<li class="list-group-item"><a href="QL_ThongKeBanHang.jsp" style="color:black">Thống Kê Bán Hàng</a></li>
		</ul>	
	</div>
	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:black">Quản Lý Tài Khoản</h4>
	</div>

	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:gray">Thêm Tài Khoản</h4>
	</div>
	<div class="col-md-9" align="center">
		<form action="addTaiKhoan.jsp" method="post">	
		<table >

				<tr valign="top">
					<td><label>Họ và tên lót: </label></td>
					<td><input class="form-control" type="text" name="Ho"/></td>
				</tr>
				<tr valign="top">
					<td><label>Tên: </label></td>
					<td><input class="form-control" type="text" name="Ten"/></td>
				</tr>
				<tr valign="top">
					<td><label>Tài khoản: </label></td>
					<td><input class="form-control" type="text" name="TaiKhoan"/></td>
				</tr>
				<tr valign="top">
					<td><label>Mật khẩu: </label></td>
					<td><input class="form-control" type="password" name="MatKhau"/></td>
				</tr>
				<tr valign="top">
					<td><label>Email: </label></td>
					<td><input class="form-control" type="email" name="Email"/></td>
				</tr>
				<tr valign="top">
					<td><label>SDT: </label></td>
					<td><input class="form-control" type="number" name="SDT"/></td>
				</tr>
				<tr>
				<td><label>Giới tính</label></td>
					<td><input type="radio" name="GioiTinh" value="Nam" checked/>Nam
						<input type="radio" name="GioiTinh" value="Nữ" />Nữ</td>
				</tr>
				<tr valign="top">
					<td><label>Ngày sinh: </label></td>
					<td><input class="form-control" type="date" name="NgaySinh"/></td>
				</tr>
				<tr valign="top">
					<td><label>Ngày đăng ký: </label></td>
					<td><input class="form-control" type="date" name="NgayDK"/></td>
				</tr>
					<tr valign="top">
					<td><label>Địa chỉ: </label></td>
					<td><input class="form-control" type="text" name="DiaChi"/></td>
				</tr>
				</tr>
					<tr valign="top">
					<td><label>Lọai Tài Khoản: </label></td>
					<td><input class="form-control" type="text" name="LoaiTK" value="NV"/></td>
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

