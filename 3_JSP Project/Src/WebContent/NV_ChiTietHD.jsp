
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 <!DOCTYPE html>
<html lang="en">
<%
	String mahd=request.getParameter("MaHD");
	session.setAttribute("MaHD", mahd);
%>
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
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/quanlybanlaptop" user="root"
			password="12111996" />
	
			<sql:query dataSource="${snapshot}" var="result">
			SELECT cthoadon.MaHD,mathang.TenHang,mathang.DonGia,cthoadon.MaHang,cthoadon.SoLuong
			from hoadon, cthoadon, mathang
			where hoadon.MaHD=cthoadon.MaHD and 
			cthoadon.MaHang=mathang.MaHang and cthoadon.MaHD='<%=session.getAttribute("MaHD") %>'; 
			
			</sql:query>
			
			<sql:query dataSource="${snapshot}" var="result2">
			SELECT *
			from tonggiatrihoadon
			where MaHD='<%=session.getAttribute("MaHD") %>'; 
			
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
		<h4 class="text-center" style="line-height:40px;color:white;background:black;">Dành Cho Nhân Viên</h4>
		<ul class="list-group">
			<li class="list-group-item "><a href="NhanVien.jsp" style="color:black">Thông Tin Nhân Viên</a></li>
			<li class="list-group-item"><a href="NV_ChinhSua.jsp" style="color:black">Chỉnh Sửa Thông Tin</a></li>
			<li class="list-group-item "><a href="NV_QuanLyMatHang.jsp" style="color:black">Quản Lý Mặt Hàng</a></li>
			<li class="list-group-item active2"><a href="NV_QuanLyDonHang.jsp" style="color:white">Quản Lý Đơn Hàng</a></li>
			<li class="list-group-item"><a href="NV_QuanLyKhachHang.jsp" style="color:black">Quản Lý Khách Hàng</a></li>
			<li class="list-group-item"><a href="NV_QuanLyBaoHanh.jsp" style="color:black">Quản Lý Bảo Hành</a></li>
			<li class="list-group-item"><a href="NV_QuanLyDatHang.jsp" style="color:black">Quản Lý Đặt Hàng</a></li>
		</ul>
	</div>
	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:black">Quản Lý Đơn Hàng</h4>
	</div>

	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:gray">Chi Tiết Đơn Hàng</h4>
	</div>
	<div class="col-md-9">
		<form method="post" action="NV_QuanLyDonHang.jsp">
			
		<table class="table table-bordered table-striped" >
			<thead >
			
				<tr >
				
					<th class="center">Mã HĐ</th>
					<th class="center">Tên Sản Phẩm</th>
					<th class="center">Đơn Gía(VND)</th>
					<th class="center">Số lượng</th>
					<th class="center">Xóa</th>
				</tr>
				
			</thead>
			<tbody>
			<c:forEach var="row" items="${result.rows}">
				<tr align="center">
					
					<td><c:out value="${row.MaHD }"></c:out></td>
					<td><c:out value="${row.TenHang }"></c:out></td>
					<td><c:out value="${row.DonGia }"></c:out></td>
					<td><c:out value="${row.SoLuong }"></c:out></td>
					<td><a href="NV_XoaCTHD.jsp?MaHang=${row.MaHang} MaHD=${row.MaHD}">Xóa</a></td>
				</tr>
			</c:forEach>
			</tbody>
			<tr >
					<th class="center">Tổng Tiền Thanh Toán:</th>
					<th class="center">
						<c:forEach var="row" items="${result2.rows }">
							<c:out value="${row.TongTien } VND" ></c:out>
						</c:forEach>
					</th>
			</tr>
			
		</table>
		</form>
	</div>
	<div class="col-md-9 btn-group">
		<div align="center">
		
			<a href="NV_ThemChiTietHD.jsp?MaHD=<%=session.getAttribute("MaHD") %>" class="btn btn-primary">Thêm Chi Tiết Đơn Hàng</a>
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

