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

<!-- Header -->
<header>
	<img src="img/banner.jpg" alt="banner" width="100%" height="150px">
</header>
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



<div class="container-fluid">
	<div class="col-md-3">
		<h4 class="text-center" style="line-height:40px;color:white;background:black;">Dành Cho Quản Lý</h4>
		<ul class="list-group">
				<li class="list-group-item "><a href="QuanLy.jsp" style="color:black">Thông Tin Quản Lý</a></li>
			<li class="list-group-item"><a href="QL_ChinhSua.jsp" style="color:black">Chỉnh Sửa Thông Tin</a></li>
			<!--<li class="list-group-item"><a href="QL_ThemNhomHang.jsp" style="color:black">Thêm Nhóm Hàng</a></li>-->
			<li class="list-group-item "><a href="Ql_QuanLyNhaCungCap.jsp" style="color:black">Quản Lý Nhà Cung Cấp</a></li>
			<li class="list-group-item"><a href="QL_QuanLyMatHang.jsp" style="color:black">Quản Lý Mặt Hàng</a></li>

			<li class="list-group-item"><a href="QL_QuanLyKhachHang.jsp" style="color:black">Quản Lý Khách Hàng</a></li>
			<li class="list-group-item"><a href="QL_QuanLyNhanVien.jsp" style="color:black">Quản Lý Nhân Viên</a></li>
		
			<li class="list-group-item active2"><a href="ThongKe.jsp" style="color:white">Xem Thống Kê</a></li>
		</ul>
	</div>
	
	<div class="container col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:black">Thống Kê</h4>
		<ul class="nav nav-tabs">
			<li class="active">
				<a data-toggle="tab" href="#menu1">Sản Phẩm Bán Chạy</a>
			</li>
			<li><a data-toggle="tab" href="#menu2">Sản Phẩm Tồn Kho</a></li>
			<li><a data-toggle="tab" href="#menu3">Sản Phẩm Sắp Hết</a></li>
			<li><a data-toggle="tab" href="#menu4">Sản Phẩm Đã Hết</a></li>
		</ul>
		
		<div class="tab-content">
			<!-- Menu1-->
			<div id="menu1" class="tab-pane fade in active">
				<div class="tab-content">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Tên sản phẩm</th>
								<th>Số lượng nhập</th>
								<th>Số lượng bán</th>
								<th>Số lượng tồn</th>
							</tr>
						</thead>
						<tbody>
							<tr>																				
								<td>ASUS K501LX-DMO4OD</td>
								<td>50</td>
								<td>45</td>
								<td>7</td>
							</tr>
						</tbody>
					</table>
				</div>	
			</div>
			
			<!-- Menu2-->
			<div id="menu2" class="tab-pane fade">
				<div class="tab-content">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Tên sản phẩm</th>
								<th>Số lượng nhập</th>
								<th>Số lượng bán</th>
								<th>Số lượng tồn</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>ASUS K501LX-DMO4OD</td>
								<td>23</td>
								<td>10</td>
								<td>13</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<!-- Menu3-->
			<div id="menu3" class="tab-pane fade">
				<div class="tab-content">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Tên sản phẩm</th>
								<th>Số lượng nhập</th>
								<th>Số lượng bán</th>
								<th>Số lượng tồn</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>ASUS K501LX-DMO4OD</td>
								<td>23</td>
								<td>20</td>
								<td>3</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<!-- Menu4-->
			<div id="menu4" class="tab-pane fade">
				<div class="tab-content">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Tên sản phẩm</th>
								<th>Số lượng nhập</th>
								<th>Số lượng bán</th>
								<th>Số lượng tồn</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>ASUS K501LX-DMO4OD</td>
								<td>23</td>
								<td>23</td>
								<td>0</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Footer-->

<footer class="container-fluid text-center">
	 <p>Ngô Bảo Ninh</p>
	  <p>Nguyễn Hồ Hồng Đ</p>
</footer>
</body>
</html>
