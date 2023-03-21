<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
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
				<li><a href="DatHang.jsp">Đặt Hàng</a></li>
				<!--<li><a href="UuDai.jsp">Ưu Đãi</a></li>-->
				<li><a href="TraGop.jsp">Trả Góp</a></li>
				<li class="active"><a href="BaoHanh.jsp">Bảo Hành</a></li>
				<li><a href="GopY.jsp">Góp Ý</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="DangNhap.jsp">Đăng Nhập</a></li>
				<li><a href="DangKy.jsp">Đăng Ký</a></li>
			</ul>
		</div>
  </div>
</nav>


<div class="container-fluid">
	<div class="col-md-6 col-md-offset-3">
		<form>	
			<h3> 1. Thời gian bảo hành</h3>
				<p>Từ 1-2 năm theo thời gian của sản phẩm</p>
			<h3>2. Thời gian trả bảo hành</h3>
				<p>Đổi máy mới cho khách hàng trong vòng 2 tuần nếu lỗi phần cứng</p>
				<p>Từ 1-2 tuần sau khi nhận máy từ khách hàng</p>
			<h3>3. Điều kiện bảo hành</h3>
				<p>Sản phẩm được bảo hành khi còn thời hạn bảo hành  được tính kể từ ngày mua hàng.</p>
			<h3>4. Những trường hợp không được bảo hành</h3>
				<p>- Thiết bị hết thời gian bảo hành.</p>
				<p>- Tem bảo hành bị rách, không có tem bảo hành, tem bảo hành bị dán đè, hoặc tem bảo hành bị sửa đổi, mờ, không chính xác...</p>
			<h3>5. Liên hệ</h3>
				<p></p>
		</form>
	</div>
</div>

<!-- Footer-->
<br>

<footer class="container-fluid text-center">
  <p>Footer text</p>
</footer>
</body>
</html>

