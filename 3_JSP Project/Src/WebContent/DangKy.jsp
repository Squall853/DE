<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/SF.ico">
	<title>Đăng Ký</title>
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
				
				
			
				<li><a href="BaoHanh.jsp">Bảo Hành</a></li>
				<li><a href="GopY.jsp">Góp Ý</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="DangNhap.jsp">Đăng Nhập</a></li>
				<li class="active"><a href="DangKy.jsp">Đăng Ký</a></li>
			</ul>
		</div>
  </div>
</nav>


<div class="container-fluid">
	<div class="col-md-offset-3">
	<h3>Đăng Ký Tài Khoản </h3>
	<form method="post" action="registration.jsp">	
		<table>
			<tbody>
			
				<tr>
					<td><label>Họ và Tên Lót</label></td>
					<td><input class="form-control" type="text" name="Ho" value=""/></td>
				</tr>
				<tr>
					<td><label>Tên </label></td>
					<td><input class="form-control" type="text" name="Ten" value=""/></td>
				</tr>
				<tr>
					<td><label>Tên Tài Khoản</label></td>
					<td><input class="form-control" type="text" name="TaiKhoan"/></td>
				</tr>		
				<tr>
					<td><label>Mật Khẩu</label></td>
					<td><input class="form-control" type="password" name="MatKhau" maxlength="15"/></td>
				</tr>
				<tr>
					<td><label>Email</label></td>
					<td><input class="form-control" type="email" name="Email"/></td>
				</tr>
				<tr>
					<td><label>SDT</label></td>
					<td><input class="form-control" type="number" name="SDT"/></td>
				</tr>
				<tr>
				<td><label>Giới Tính</label></td>
					<td><input type="radio" name="GioiTinh" value="Nam" checked/>Nam
						<input type="radio" name="GioiTinh" value="Nữ" />Nữ</td>
				</tr>
				<tr>
					<td><label>Ngày Sinh</label></td>
					<td><input class="form-control" type="date" name="NgaySinh"/></td>
				</tr>
				<tr>
					<td><label>Địa Chỉ</label></td>
					<td><input class="form-control" type="text" name="DiaChi"/></td>
				</tr>
				<tr>
					<td><button type="submit" class="btn btn-default">Đăng Ký</button></td>
					<td><button type="reset"class="btn btn-default">Nhập Lại</button></td>
				</tr>
				<tr>
                        <td colspan="2">Already registered!! <a href="DangNhap.jsp">Login Here</a></td>
                    </tr>
			</tbody>
		</table>
		
	</form>
	</div>
</div>

<!-- Footer-->
<br>
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>
</body>
</html>

