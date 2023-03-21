<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
  
  <meta http-equiv="content-type" content="text/html; charset=utf-8">
     
   <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css">
      <script type="text/javascript" src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
      <script type="text/javascript" charset="utf-8">
         $(document).ready(function() {
         	$('#example').DataTable();
         } );
      </script>
</head>
<body style="min-height:650px">
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/quanlybanlaptop" user="root"
		password="12111996" />
	<sql:query dataSource="${snapshot}" var="result">
		SELECT *
		from mathang
		where TenHang like '%<%=session.getAttribute("TenHang")%>%'
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
			<a href="index.html" class="glyphicon glyphicon-home navbar-brand"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp">Trang Chủ</a></li>
				
				<li><a href="BaoHanh.jsp">Bảo Hành</a></li>
				<li><a href="GopY.jsp">Góp Ý</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="DangNhap.jsp">Đăng Nhập</a></li>
				<li><a href="DangKy.jsp">Đăng Ký</a></li>
			</ul>
		</div>
  </div>
</nav>

<!-- Slide -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
	  <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
		    <div class="carousel-inner" role="listbox">
		<div class="item active">
			<img src="img/1.jpg"  alt="avatar"  >
		
		</div>
		<div class="item">
			<img src="img/2.jpg" alt="avatar" >
		
		</div>
		<div class="item">
			<img src="img/3.jpg" alt="avatar">
		
		</div>
    </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
    </a>
</div>
<!-- -->  
<div class="container text-center">
	 
	  	<div class="row">
	 		<div class="col-sm-4">
	 		</div>
	 		 <div class="col-sm-6" >
	 		 <form action="search.jsp" method="post">
	 		 	
	              Search: <input type="search" name="TenHang" >
	              <input type="submit" value="Tìm Kiếm" />
	          	
	          </form>
	      	</div>
	      	
	 	</div>
	<form >
		<table class="table table-bordered table-striped"  style="width:80%" >
			<c:forEach var="row" items="${result.rows}">
				<tr >
					<td  align="left" style="width:40%" ><img  src='<c:out value="${row.Image }"></c:out>' style="width:250px;height:150px;" class="img-responsive" style="width:100%" alt="Image"/>
						<ul>
							<font size="3" color="blue"><a><c:out value="${row.TenHang}"></c:out></a></font><br>
							<b>Gía: <c:out value="${row.DonGia}"></c:out> VND</b>
						</ul>
					</td>
					<td align="left">
						<ul>
							<li>Bảo hành:<c:out value="${row.ThoiGianBH }"></c:out></li>
							<li>Chip: <c:out value="${row.Chip }"></c:out></li>
							<li>Xung: <c:out value="${row.Xung }"></c:out></li>
							<li>Ổ Cứng: <c:out value="${row.OCung }"></c:out></li>
							<li>RAM: <c:out value="${row.RAM}"></c:out></li>
							<li>VGA: <c:out value="${row.VGA}"></c:out></li>
							<li>Cache: <c:out value="${row.Cache }"></c:out></li>
						</ul>
						<button type="submit" class="btn btn-default" formmethod="post" formaction="DatHang.jsp?MaHang=${row.MaHang }">MUA NGAY</button>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
	
</div><br>

<!-- Footer-->
<footer class="container-fluid text-center">
  <p>Ngô Bảo Ninh</p>
   <p>Nguyễn Hồ Hồng Đạt</p>
</footer>
</body>
</html>

