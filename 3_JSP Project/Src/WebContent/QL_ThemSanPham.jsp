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
				<li><a href="QuanLy.jsp">'<%=session.getAttribute("TaiKhoan") %>'</a></li>
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
			<li class="list-group-item"><a href="QuanLy.jsp" style="color:black">Thông Tin Quản Lý</a></li>
			<li class="list-group-item"><a href="QL_ChinhSua.jsp" style="color:black">Chỉnh Sửa Thông Tin</a></li>
			
			<!--<li class="list-group-item"><a href="QL_ThemNhomHang.jsp" style="color:black">Thêm Nhóm Hàng</a></li>-->
			<li class="list-group-item"><a href="QL_QuanLyNhaCungCap.jsp" style="color:black">Quản Lý Nhà Cung Cấp</a></li>
			<li class="list-group-item"><a href="QL_QuanLyNhapHang.jsp" style="color:black">Quản Lý Nhập Hàng</a></li>
			<li class="list-group-item active2"><a href="QL_QuanLyMatHang.jsp" style="color:white">Quản Lý Mặt Hàng</a></li>
			<li class="list-group-item"><a href="QL_QuanLyTaiKhoan.jsp" style="color:black">Quản Lý Tài Khoản</a></li>
			
			<li class="list-group-item"><a href="QL_QuanLyNhanVien.jsp" style="color:black">Quản Lý Nhân Viên</a></li>
			<li class="list-group-item"><a href="QL_ThongKeNhapHang.jsp" style="color:black">Thống Kê Nhập Hàng</a></li>
			<li class="list-group-item"><a href="QL_ThongKeDonHang.jsp" style="color:black">Thống Kê Đơn Hàng</a></li>
			<li class="list-group-item"><a href="QL_ThongKeBanHang.jsp" style="color:black">Thống Kê Bán Hàng</a></li>
		</ul>
	</div>
	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:black">Quản Lý Mặt Hàng</h4>
	</div>

	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:gray">Thêm Sản Phẩm Mới</h4>
	</div>
	<div class="col-md-9" align="center">
		<form method="post" action="addSanPham.jsp" >	
		<table cellpadding ="10">
				<tr>
					<td><label>Mã sản phẩm: </label></td>
					<td><input class="form-control" type="text" name="MaHang"/></td>
				</tr>
				<tr>
					<td><label>Tên Sản Phẩm: </label></td>
					<td><input class="form-control" type="text" name="TenHang"/></td>
				</tr>
				<tr>
					<td><label>Chip: </label></td>
					<td><input class="form-control" type="text" name="Chip"/></td>
				</tr>
				<tr>
					<td><label>Xung: </label></td>
					<td><input class="form-control" type="text" name="Xung"/></td>
				</tr>
				<tr>
					<td><label>Ổ Cứng: </label></td>
					<td><input class="form-control" type="text" name="OCung"/></td>
				</tr>
				<tr>
					<td><label>RAM: </label></td>
					<td><input class="form-control" type="text" name="RAM"/></td>
				</tr>
				<tr>
					<td><label>VGA: </label></td>
					<td><input class="form-control" type="text" name="VGA"/></td>
				</tr>
				<tr>
					<td><label>Cache: </label></td>
					<td><input class="form-control" type="text" name="Cache"/></td>
				</tr>
				<tr>
					<td><label>Thời Gian BH: </label></td>
					<td><input class="form-control" type="text" name="ThoiGianBH"/></td>
				</tr>
				<tr>
					<td><label>Đơn Gía: </label></td>
					<td><input class="form-control" type="number" name="DonGia"/></td>
				</tr>
				<tr>
					<td><label>Số Lượng: </label></td>
					<td><input class="form-control" type="number" name="SoLuong"/></td>
				</tr>
				<tr>
					<td><label>Nhà Phân Phối: </label></td>
					<td><input class="form-control" type="text" name="NhaPP"/></td>
				</tr>
				<tr>
					<td><label>Mã Kho: </label></td>
					<td><input class="form-control" type="text" name="MaKho"/></td>
				</tr>
				<tr>
					<td><label>Hình Ảnh: </label></td>
					<td><input class="form-control" type="text" name="Image" value="Copy Link Image"/></td>
				</tr>
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

