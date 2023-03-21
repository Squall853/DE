<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/SF.ico">
	<title>Bảo Hành</title>
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
			<a href="index.html" class="glyphicon glyphicon-home navbar-brand"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">Trang Chủ</a></li>
			
				
				<li><a href="TraGop.jsp">Trả Góp</a></li>
				<li><a href="BaoHanh.jsp">Bảo Hành</a></li>
				<li><a href="GopY.jsp">Góp Ý</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="KhachHang.jsp"><%=session.getAttribute("TaiKhoan")%></a></li>
				<li><a href="index.jsp">Đăng Xuất</a></li>
			</ul>
		</div>
  </div>
</nav>
<div>
</div>

<div class="container-fluid">
	<div class="col-md-3">
		<h4 class="text-center" style="line-height:40px;color:white;background:black;">Dành Cho Khách Hàng</h4>
		<ul class="list-group">
			<li class="list-group-item "><a href="KhachHang.jsp" style="color:black">Thông Tin Khách Hàng</a></li>
			<li class="list-group-item"><a href="KH_ChinhSua.jsp" style="color:black">Chỉnh Sửa Thông Tin</a></li>
			<li class="list-group-item"><a href="KH_XemGioHang.jsp" style="color:black">Giỏ Hàng</a></li>
			<li class="list-group-item active2"><a href="KH_BaoHanh.jsp"style="color:white">Bảo Hành</a></li>
		</ul>
	</div>
	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:black">Bảo Hành</h4>
			<table class="table table-striped" style="font-size:15px">
				<thead>
				<thead>
					<tr>
						<th>STT</th>
						<th>Máy</th>
						<th>Ngày giao máy</th>
						<th>Ngày trả máy</th>
						<th>Tình trạng</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Dell Inspiron 15 7559</td>
						<td>30/10/2016</td>
						<td>15/11/2016</td>
						<td>Chưa xong</td>
					</tr>
				</tbody>
				</tbody>
			</table>
		</div>
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

