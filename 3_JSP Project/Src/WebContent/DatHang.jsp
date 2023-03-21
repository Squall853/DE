<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html lang="en">
<%
	String mahang=request.getParameter("MaHang");
	session.setAttribute("MaHang", mahang);
%>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/SF.ico">
	<title>Đặt Hàng</title>
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
			<a href="index.jsp" class="glyphicon glyphicon-home navbar-brand"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">Trang Chủ</a></li>
				<!--<li><a href="UuDai.jsp">Ưu Đãi</a></li>-->
			
				<li><a href="BaoHanh.jsp">Bảo Hành</a></li>
				<li><a href="GopY.jsp">Góp Ý</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="KhachHang.jsp"></a></li>
				<li><a href="index.jsp">Đăng Xuất</a></li>
			</ul>
		</div>
  </div>
</nav>
<div>
</div>

<div class="container-fluid">
	<div class="col-md-offset-2">
		<h4 class="text-center" style="line-height:40px;color:white; background:black; width: 500px;">Nhập Thông Tin</h4>
			<form method="post" action="addGioHang.jsp">
				<input type="hidden" name="MaHang" value="<%=session.getAttribute("MaHang")%>">
				<table >
					<tbody>
							<td><input type="hidden" name="MaHang" value="<%=session.getAttribute("MaHang")%>"></td>
							<tr >
								<td><label>Tài Khoản: </label> </td>
								<td><input class="form-control" type="text" name="TaiKhoan" size="40"/></td>
							</tr>
							<tr >
								<td><label>Email: </label> </td>
								<td><input class="form-control" type="email" name="Email" size="40"/></td>
							</tr>
							<tr >
								<td><label>SDT: </label> </td>
								<td><input class="form-control" type="number" name="SDT" size="40"/></td>
							</tr>
							<tr>
								<td><label>Địa Chỉ Giao Hàng: </label> </td>
								<td><input class="form-control" type="text" name="DiaChi" size="40"/></td>
							</tr>
							<tr >
								<td><label>Số Lượng: </label> </td>
								<td><input class="form-control" type="number" name="SoLuong" size="40"/></td>
							</tr>
							<tr>
					<td></td>
					<td align="left">
							<button type="submit" class="btn btn-default" >Thêm</button>
							<button type="reset" class="btn btn-default">Nhập Lại</button>
					</td>
					
				</tr>	
					</tbody>
				</table>
				
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

