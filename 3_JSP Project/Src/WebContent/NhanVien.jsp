<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import ="java.sql.*" %>
 <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/SF.ico">
	<title>Nhân Viên </title>
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
  </style>a
</head>
<body style="min-height:650px">

			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/quanlybanlaptop" user="root"
		password="12111996" />

	<sql:query dataSource="${snapshot}" var="result">
		SELECT nhanvien.HoNV,nhanvien.TenNV,taikhoan.Email,nhanvien.SDT,taikhoan.NgaySinh,
		nhanvien.DiaChi,nhanvien.CongViec,nhanvien.NgayVaoLam
		 from nhanvien inner join
		 taikhoan on nhanvien.TaiKhoan=taikhoan.TaiKhoan 
		 where taikhoan.TaiKhoan='<%=session.getAttribute("TaiKhoan") %>';  
	</sql:query>
	

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
			<c:forEach var="row" items="${result.rows}">
				<li><a href="NhanVien.jsp"><%=session.getAttribute("TaiKhoan")%></a></li>
			</c:forEach>
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
			<li class="list-group-item active2"><a href="NhanVien.jsp" style="color:white">Thông Tin Nhân Viên</a></li>
			<li class="list-group-item"><a href="NV_ChinhSua.jsp" style="color:black">Chỉnh Sửa Thông Tin</a></li>
			<li class="list-group-item"><a href="NV_QuanLyMatHang.jsp" style="color:black">Quản Lý Mặt Hàng</a></li>
			<li class="list-group-item"><a href="NV_QuanLyDonHang.jsp" style="color:black">Quản Lý Đơn Hàng</a></li>
			<li class="list-group-item"><a href="NV_QuanLyKhachHang.jsp" style="color:black">Quản Lý Khách Hàng</a></li>
			<li class="list-group-item"><a href="NV_QuanLyBaoHanh.jsp" style="color:black">Quản Lý Bảo Hành</a></li>
			<li class="list-group-item"><a href="NV_QuanLyDatHang.jsp" style="color:black">Quản Lý Đặt Hàng</a></li>
		</ul>
	</div>
	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:black">Thông Tin Nhân Viên</h4>
		<div class="col-md-2">
		
		</div>
		<div class="col-md-7" style="margin-left:20px">
			<table class="table table-striped" style="font-size:15px">
				<thead>
				<c:forEach var="row" items="${result.rows}">
					<tr>
						<td>
							<span><strong>Họ và tên lót:</strong></span>
							<c:out value="${row.HoNV} ${row.TenNV}"/>
						</td>
						
					</tr>
					<tr>
						<td>
							<span><strong>Email:</strong></span>
							<c:out value="${row.Email}"/>
						</td>
					</tr>
					<tr>
						<td >
							<span><strong>Số Điện Thoại:</strong></span>
							<c:out value="${row.SDT}"/>
						</td>
					</tr>
						<tr>
						<td>
							<span><strong>Ngày Sinh:</strong></span>
							<c:out value="${row.NgaySinh}"/>
						</td>
					</tr>
					<tr>
						<td>
							<span><strong>Địa Chỉ:</strong></span>
							<c:out value="${row.DiaChi}"/>
						</td>
					</tr>
					<tr>
						<td>
							<span><strong>Ngày vào làm:</strong></span>
							<c:out value="${row.NgayVaoLam}"/>
						</td>
					</tr>
					<tr>
						<td>
							<span><strong>Loại Công Việc:</strong></span>
							<c:out value="${row.CongViec}"/>
						</td>
						
					</tr>
				</c:forEach>
				</thead>
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

