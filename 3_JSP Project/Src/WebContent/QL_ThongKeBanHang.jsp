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
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/quanlybanlaptop" user="root"
		password="12111996" />
	
	 	<sql:query dataSource="${snapshot}" var="result">
		select mathang.MaHang,mathang.TenHang,sum(mathang.DonGia*cthoadon.SoLuong) as TT,
		 mathang.SoLuong,sum(cthoadon.SoLuong)as SL
		from hoadon join cthoadon on hoadon.MaHD=cthoadon.MaHD
				join mathang on cthoadon.MaHang=mathang.MaHang
				
		where month(NgayLap)='<%=session.getAttribute("Thang")%>%' and year(NgayLap)='<%=session.getAttribute("Nam")%>%'
        group by mathang.MaHang,mathang.TenHang;
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
				<li><a href="QuanLy.jsp"><%=session.getAttribute("TaiKhoan")%></a></li>
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
			<li class="list-group-item"><a href="QL_QuanLyMatHang.jsp" style="color:black">Quản Lý Mặt Hàng</a></li>
			<li class="list-group-item"><a href="QL_QuanLyTaiKhoan.jsp" style="color:black">Quản Lý Tài Khoản</a></li>
			
			<li class="list-group-item"><a href="QL_QuanLyNhanVien.jsp" style="color:black">Quản Lý Nhân Viên</a></li>
			<li class="list-group-item"><a href="QL_ThongKeNhapHang.jsp" style="color:black">Thống Kê Nhập Hàng</a></li>
			<li class="list-group-item"><a href="QL_ThongKeDonHang.jsp" style="color:black">Thống Kê Đơn Hàng</a></li>
			<li class="list-group-item active2 "><a href="QL_ThongKeBanHang.jsp" style="color:white">Thống Kê Bán Hàng</a></li>
		</ul>
	</div>
	
	<div class="col-md-9">
		<h4 class="text-center" style="line-height:40px;color:white; background:black">Thống Kê Bán Hàng</h4>
	</div>
	
	 		<div class="col-sm-4">
	 		</div>
	 		 <div class="col-sm-6">
	 		 <form action="searchDate.jsp" method="post">
	 		 	
	              Nhập tháng: <input type="search" name="Thang" width="2px" min="1" max="12"> Năm: <input type="search" name="Nam" min="2016" value="2016">
	              <input type="submit" value="Thống Kê" />
	          </form>
	      	</div>
	
	<div class="col-md-9">
		<table class="table table-bordered table-striped" >
			<thead >
				<tr >
					<th class="center">Mã sản phẩm</th>
					<th class="center">Tên sản phẩm</th>
				
					<th class="center">Số Lượng Bán</th>
				
					
					<th class="center">Tổng Gía Trị Bán</th>
			
				</tr>
			</thead>
			<tbody>
			<c:forEach var="row" items="${result.rows}">
				<tr align="center">
					
						<td><c:out value="${row.MaHang}"></c:out></td>
						<td><c:out value="${row.TenHang}"></c:out></td>
						<td><c:out value="${row.SL}"></c:out></td>
						<td><c:out value="${row.TT}"></c:out></td>
					
				
				</tr>
			</c:forEach>
			</tbody>
		</table>
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

