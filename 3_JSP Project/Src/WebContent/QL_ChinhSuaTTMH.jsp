<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ page import ="java.sql.*" %>
 <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">
<%
 	String mahang=request.getParameter("MaHang");
 	session.setAttribute("MaHang", mahang);
 %>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/SF.ico">
	<title>Quản Lý</title>
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
	<body>
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/quanlybanlaptop" user="root"
		password="12111996" />

	<sql:query dataSource="${snapshot}" var="result">
		SELECT *
		FROM mathang
		 where MaHang='<%=session.getAttribute("MaHang") %>';  
	</sql:query>
	
	<sql:query dataSource="${snapshot}" var="result2">
		SELECT *
		FROM nhapp;  
	</sql:query>
	<sql:query dataSource="${snapshot}" var="result3">
		SELECT *
		FROM kho;  
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
				<li><a href="NhanVien.jsp"><%=session.getAttribute("TaiKhoan") %></a></li>
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
		<h4 class="text-center" style="line-height:40px;color:white; background:gray">Chỉnh Sửa Thông Tin Mặt Hàng</h4>
	</div>
	<div class="col-md-9">
		<c:forEach var="row" items="${result.rows}">
			<form method="post" action="suaMatHang.jsp">
				<input type="hidden" name="MaHang" value="<%=session.getAttribute("MaHang")%>">
		   	<div class="form-inline">
				<label class="fieldinput col-sm-2">Mã Hàng </label>
				<input type="text" name="MaHang" class="form-control" value="${row.MaHang}" disabled>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">Tên Hàng </label>
				<input type="text" name="TenHang" class="form-control" value="${row.TenHang}" required>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">Chip </label>
				<input type="text" name="Chip" class="form-control" value="${row.Chip}" required>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">Xung </label>
				<input type="text" name="Xung" class="form-control" value="${row.Xung}" required>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">Ổ Cứng </label>
				<input type="text" name="OCung" class="form-control" value="${row.OCung}" required>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">RAM </label>
				<input type="text" name="RAM" class="form-control" value="${row.RAM}" required>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">VGA </label>
				<input type="text" name="VGA" class="form-control" value="${row.VGA}" required>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">Cache </label>
				<input type="text" name="Cache" class="form-control" value="${row.Cache}" required>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">Thời Gian Bảo Hành </label>
				<input type="text" name="ThoiGianBH" class="form-control" value="${row.ThoiGianBH}" required>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">Đơn Gía</label>
				<input type="number" name="DonGia" class="form-control" value="${row.DonGia}" required>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">Số Lượng</label>
				<input type="number" name="SoLuong" class="form-control" value="${row.SoLuong}" required>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">Mã Kho</label>
					<select name="MaKho">
						<c:forEach var="row" items="${result3.rows}">
							 <option><c:out value="${row.MaKho}"></c:out></option>
						</c:forEach>
					</select>
			</div><br>
			<div class="form-inline">
				<label class="fieldinput col-sm-2">Nhà Phân Phối</label>
					<select name="NhaPP" > 
						<c:forEach var="row" items="${result2.rows}">
							  <option><c:out value="${row.TenNhaPP }"></c:out></option>
						</c:forEach>
					</select>
			</div><br>
			<div class="form-inline">
				<input type="submit" value="Xác Nhận"/>
			</div>
			</form>
		</c:forEach>
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

