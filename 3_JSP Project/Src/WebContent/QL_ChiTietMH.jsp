<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 <!DOCTYPE html>
 <%
 	String mahang=request.getParameter("MaHang");
 	session.setAttribute("MaHang", mahang);
 %>
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
  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width:600px) {
    .carousel-caption {
      display:none;
    }
  }
  </style>
</head>
<body style="min-height:650px">
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/quanlybanlaptop" user="root"
			password="12111996" />
	
			<sql:query dataSource="${snapshot}" var="result">
			SELECT *
			from mathang
			where  MaHang='<%=session.getAttribute("MaHang") %>'; 
			
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
		<h4 class="text-center" style="line-height:40px;color:white;background:black;">Dành Cho Quản Lý</h4>
	<ul class="list-group">
			<li class="list-group-item"><a href="QuanLy.jsp" style="color:black">Thông Tin Quản Lý</a></li>
			<li class="list-group-item"><a href="QL_ChinhSua.jsp" style="color:black">Chỉnh Sửa Thông Tin</a></li>
			
			<!--<li class="list-group-item"><a href="QL_ThemNhomHang.jsp" style="color:black">Thêm Nhóm Hàng</a></li>-->
			<li class="list-group-item"><a href="QL_QuanLyNhaCungCap.jsp" style="color:black">Quản Lý Nhà Cung Cấp</a></li>
			<li class="list-group-item"><a href="QL_QuanLyNhapHang.jsp" style="color:black">Quản Lý Nhập Hàng</a></li>
			<li class="list-group-item active2"><a href="QL_QuanLyMatHang.jsp" style="color:white">Quản Lý Mặt Hàng</a></li>
			<li class="list-group-item"><a href="QL_QuanLyTaiKhoan.jsp" style="color:black">Quản Lý Tài Khoản</a></li>
			
			<li class="list-group-item"><a href="QL_QuanLyNhanVien.jsp" style="color:black">Quản Lý Nhân Viên</a></li>
			<li class="list-group-item"><a href="QL_ThongKeNhapHang.jsp" style="color:black">Thống Kê Nhập Hàng</a></li>
			<li class="list-group-item"><a href="QL_ThongKeDonHang.jsp" style="color:black">Thống Kê Đơn Hàng</a></li>
			<li class="list-group-item"><a href="QL_ThongKeBanHang.jsp" style="color:black">Thống Kê Bán Hàng</a></li>
		</ul>
	</div>
	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:black">Mô Tả Mặt Hàng</h4>
		<div class="col-md-7" style="margin-left:20px">
			<table class="table table-striped" style="font-size:15px">
				<thead>
					<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>Mã Hàng: </strong></span>
								<c:out value="${row.MaHang}"></c:out>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>Tên Hàng: </strong></span>
								<c:out value="${row.TenHang}"></c:out>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>Chip: </strong></span>
								<c:out value="${row.Chip}"></c:out>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>Xung: </strong></span>
								<c:out value="${row.Xung}"></c:out>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>Ổ Cứng: </strong></span>
								<c:out value="${row.OCung}"></c:out>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>RAM: </strong></span>
								<c:out value="${row.RAM}"></c:out>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>VGA: </strong></span>
								<c:out value="${row.VGA}"></c:out>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>Cache: </strong></span>
								<c:out value="${row.Cache}"></c:out>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>Thời gian BH: </strong></span>
								<c:out value="${row.ThoiGianBH}"></c:out>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<td><span><strong>Hình Ảnh</strong></span>
						<img src="http://phongvu.vn/gallery/avatar_upload/products/storage/16646_800_laptop-asus-x455la-wx443d-600x6000.jpg" style="width:100px;height:100px;" class="img-responsive" style="width:100%" >	
						</td>
					</tr>
						<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>Đơn Gía: </strong></span>
								<c:out value="${row.DonGia}"></c:out>
							</td>
						</c:forEach>
					</tr>
						<tr>
						<c:forEach var="row" items="${result.rows}">
							<td ><span><strong>Số Lượng: </strong></span>
								<c:out value="${row.SoLuong}"></c:out>
							</td>
						</c:forEach>
					</tr>
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

