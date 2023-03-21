<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<title>Nhân Viên</title>
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
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/quanlybanlaptop" user="root"
		password="12111996" />
		
<sql:query dataSource="${snapshot}" var="result">
select	nhanvien.manv, khachhang.makh, mathang.mahang, mathang.tenhang,
		baohanh.ngaynhanmay, baohanh.NgayTraMay,baohanh.MaPhieu
from	nhanvien
		inner join baohanh on nhanvien.manv = baohanh.manv
        inner join khachhang on baohanh.makh = khachhang.MaKH
        inner join mathang on baohanh.mahang = mathang.mahang;  
</sql:query>
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
				<li><a href="NhanVien.jsp"><%=session.getAttribute("TaiKhoan")%></a></li>
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
			<li class="list-group-item "><a href="NhanVien.jsp" style="color:black">Thông Tin Nhân Viên</a></li>
			<li class="list-group-item"><a href="NV_ChinhSua.jsp" style="color:black">Chỉnh Sửa Thông Tin</a></li>
			<li class="list-group-item"><a href="NV_QuanLyMatHang.jsp" style="color:black">Quản Lý Mặt Hàng</a></li>
			<li class="list-group-item"><a href="NV_QuanLyDonHang.jsp" style="color:black">Quản Lý Đơn Hàng</a></li>
			<li class="list-group-item"><a href="NV_QuanLyKhachHang.jsp" style="color:black">Quản Lý Khách Hàng</a></li>
			<li class="list-group-item active2"><a href="NV_QuanLyBaoHanh.jsp" style="color:white">Quản Lý Bảo Hành</a></li>
			<li class="list-group-item"><a href="NV_QuanLyDatHang.jsp" style="color:black">Quản Lý Đặt Hàng</a></li>
		</ul>
	</div>
	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:black">Quản Lý Bảo Hành</h4>
	</div>
	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:gray">Danh Sách Sản Phẩm Bảo Hành</h4>
	</div>
	<div class="col-md-9">
		<table class="table table-bordered table-striped" >
			<thead >
				<tr>
					<th class="center">Mã phiếu</th>
					<th class="center">Mã khách hàng</th>
					<th class="center">Mã sản phẩm</th>
					<th class="center">Tên sản phẩm</th>
					<th class="center">Ngày nhận máy</th>
					<th class="center">Ngày trả máy</th>
					
					<th class="center">Xóa</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="row" items="${result.rows}">
				<tr align="center">
					<td><c:out value="${row.maphieu}"></c:out></td>
					<td><c:out value="${row.makh}"></c:out></td>
					<td><c:out value="${row.mahang}"></c:out></td>
					<td><c:out value="${row.tenhang}"></c:out></td>
					<td><c:out value="${row.ngaynhanmay}"></c:out></td>
					<td><c:out value="${row.ngaytramay}"></c:out></td>
					
					<td><a href="NV_XoaBaoHanh.jsp?MaPhieu=${row.MaPhieu}">Xóa</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="col-md-9 btn-group">
		<div align="center">
			<a href="NV_ThemSanPhamBH.jsp" class="btn btn-primary">Thêm Sản Phẩm</a>
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

