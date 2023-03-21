<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/SF.ico">
	<title>Trả Góp</title>
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
				<li class="active"><a href="TraGop.jsp">Trả Góp</a></li>
				<li><a href="BaoHanh.jsp">Bảo Hành</a></li>
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
			<h3>1. Thủ Tục Trả Góp</h3>
			<p>- Dành cho khác hàng từ 18 tuổi trở lên.</p>
			<p>- CMND, hộ khẩu, hóa đơn điện nước trong 3 tháng gần nhất.</p>
			<p>- Trả trước 30%</p>
			<p>- Thời gian duyệt hồ sơ: 15-30 phút.</p>
			<h3>2. Quy Trình Mua Trả Góp</h3>
			<h4>Cách 1: Đến trực tiếp cửa hàng</h4>
			<p>- Sẽ có nhân viên hỗ trợ tư vấn trong việc lựa chọn sản phẩm phù hợp và hướng dẫn cách làm thủ tục mua góp.</p>
			<p>- Bạn đợi xét duyệt hồ sơ trong khoản 15 phút trở lên tùy tình trạng hồ sơ và tùy từng nhà tài chính.</p>
			<p>- Nếu hồ sơ được DUYỆT, bạn sẽ thanh toán khoản trả trước như đã chọn ban đầu và nhận ngay sản phẩm.</p>
			<p>- Hàng tháng bạn đến ngân hàng hoặc đến cửa hàng để thanh toán khoản vay theo thỏa thuận trong hợp đồng.</p>
			<h4>Cách 2: Làm hồ sơ bằng cách đăng ký thông tin trên website</h4>
			<p>- Lựa chọn sản phẩm trên website, sau đó click vào phần mua trả góp để đăng ký.</p>
			<p>- Trong vòng 24h sẽ có nhân viên liên hệ bạn để làm hồ sơ.</p>
			<p>- Khi có kết quả DUYỆT, bạn vui lòng đem hồ sơ như đã yêu cầu đến bất kỳ chi nhánh nào của Viễn Thông A để nhận sản phẩm.</p>
			<p>=> Cách này sẽ giúp cho bạn đỡ mất thời gian di chuyển và chờ đợi.</p>
		</form>
	</div>
</div>

<!-- Footer-->
<br>

<footer class="container-fluid text-center">
  <p>Ngô Bảo Ninh</p>
  <p>Nguyễn Hồ  Hồng Đạt</p>
</footer>
</body>
</html>

