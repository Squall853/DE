<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/SF.ico">
	<title>Trang Chủ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {color:white;
      background:#000000;
      padding: 15px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none;
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
				<li><a href="TraGop.jsp">Trả Góp</a></li>
				<li><a href="BaoHanh.jsp">Bảo Hành</a></li>
				<li class="active"><a href="GopY.jsp">Góp Ý</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="DangNhap.jsp">Đăng Nhập</a></li>
				<li><a href="DangKy.jsp">Đăng Ký</a></li>
			</ul>
		</div>
  </div>
</nav>
<br>
<div class="container-fluid"><strong>
<form class="form-horizontal">
	<div class="col-md-4 col-md-offset-4">
	<h3>Góp ý</h3>
		<table>
			<thead>
				<tr>
					<td>Họ và Tên:<input class="form-control" type="text"/></td>
				</tr>
				<tr>
					<td>SDT:<input class="form-control" type="text"/></td>
				</tr>
				<tr>
					<td>Email:<input class="form-control" type="email"/></td>
				</tr>
				<tr>
					<td><p>Nội dung:<p></td>
				</tr>
			</thead>
		</table>
		<div > 
		  <textarea cols="25" rows="5"></textarea>
		</div>
		<button type="submit" class="btn btn-default">Gửi</button>
	</div>
</form>
</strong></div>

<!-- Footer-->
<br>
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>
<!--Dang Nhap-->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Đăng Nhập</h4>
			</div>

			<div class="modal-body">
				<form>
					<div>
						<input type="radio" name="AccountType" checked>Khách Hàng
						<input type="radio" name="AccountType">Nhân Viên 
						<input type="radio" name="AccountType">Quản Lý
					</div>
					<table>
						<thead>
							<tr>
								<td><label>Tên Tài Khoản</label></td>
								<td><input class="form-control" type="text" placeholder="squall853"/></td>
							</tr>
							<tr>
								<td><label>Mật Khẩu</label></td>
								<td><input class="form-control" type="password" placeholder="*********" maxlength="15"/></td>
							</tr>
						</thead>
					</table>
				</form>
			</div>
			
			<div class="modal-footer">
				<button type="submit" class="btn btn-primary" data-dismiss="modal">Đăng Nhập</button>
			</div>
		</div>      
    </div>
 </div>
 <!--Dang Ky-->
 <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Đăng Nhập</h4>
			</div>

			<div class="modal-body">
				<table>
					<thead>
						<tr>
							<td><label>Họ và Tên </label></td>
							<td><input class="form-control" type="text" placeholder="Nguyen Ho Hong Dat"/></td>
						</tr>
						
						<tr>
							<td><label>Ngày Sinh</label></td>
							<td><input class="form-control" type="date"/></td>
						</tr>
						
						<tr>
							<td><label>Giới Tính</label></td>
							<td><input type="radio" name="GT" checked/>Nam
								<input type="radio" name="GT" />Nữ</td>
						</tr>
						
						<tr>
							<td><label>SDT</label></td>
							<td><input class="form-control" type="number" placeholder="01688180455"/></td>
						</tr>

						<tr>
							<td><label>Tên Tài Khoản</label></td>
							<td><input class="form-control" type="text" placeholder="squall853"/></td>
						</tr>
				
						<tr>
							<td><label>Mật Khẩu</label></td>
							<td><input class="form-control" type="password" placeholder="*********" maxlength="15"/></td>
						</tr>
				
						<tr>	
							<td><label>Nhập lại Mật Khẩu</label></td>
							<td><input class="form-control" type="password" placeholder="*********" maxlength="15"/></td>
						</tr>
						
						<tr>
							<td><label>Email</label></td>
							<td><input class="form-control" type="email" placeholder="squall853@gmail.com"/></td>
						</tr>
					</thead>
				</table>
			</div>
			
			<div class="modal-footer">
				<button type="submit" class="btn btn-primary" data-dismiss="modal">Đăng Ký</button>
			</div>
		</div>      
    </div>
 </div>
</body>
</html>

