<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/SF.ico">
	<title>Đăng Nhập</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	</SCRIPT>	
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
  .

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
				<li class="active"><a href="index.jsp">Trang Chủ</a></li>
				
				<li><a href="BaoHanh.jsp">Bảo Hành</a></li>
				<li><a href="GopY.jsp">Góp Ý</a></li>
			</ul>
		</div>
  </div>
</nav>


<div class="container-fluid">
	<div class="col-md-offset-3">
	<h3>Đăng Nhập</h3>
	<form method="post" action="login.jsp">
		<div>
			<input type="radio" name="LoaiTK" value="KH" checked/>Khách Hàng
			<input type="radio" name="LoaiTK" value="NV"/>Nhân Viên
			<input type="radio" name="LoaiTK" value="QL"/>Quản Lý  
			
		</div>
		<table>
			<thead>
				
			
				<tr>
					<td><label>Tên Tài Khoản</label></td>
					
					<td><input class="form-control" type="text" name="TaiKhoan" required="required" value="baoninh"/ ></td>
				</tr>
				<tr>
					<td><label>Mật Khẩu</label></td>
					<td><input class="form-control" type="password" name="MatKhau" value="12345"/></td>
				</tr>
				<tr>
				
                     <td><input type="submit" value="Đăng Nhập" /></td>
                     <td colspan="2">Yet Not Registered!! <a href="DangKy.jsp">Đăng Ký</a></td>
                </tr>
                   
			</thead>
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


