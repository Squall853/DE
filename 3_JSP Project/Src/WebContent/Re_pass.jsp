<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
 <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<%
	String taikhoan=request.getParameter("TaiKhoan");
	session.setAttribute("TaiKhoan",taikhoan);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Bán Laptop</title>
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
	<body>
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/quanlybanlaptop" user="root"
		password="12111996" />

	<sql:query dataSource="${snapshot}" var="result">
		SELECT *
		FROM taikhoan
		 where taikhoan.TaiKhoan='<%=session.getAttribute("TaiKhoan") %>';  
	</sql:query>
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
					<li><a href="#"><%=session.getAttribute("TaiKhoan")%></a></li>
				</ul>
			</div>
	 	 </div>
	</nav>
	
	<div class="col-md-9" align="center">
		<form method="post" action="rpass.jsp">
            <table border="0" style="width:60%;">
                <thead>
                    <tr>
                        <th colspan="2">Đổi Mật Khẩu</th>
                    </tr>
                </thead>
                <tbody>
	                <tr>
	                	<td></td>
	                	<td><input type="hidden" name="uname" value="<%=session.getAttribute("TaiKhoan") %>" /></td>
	                </tr>
                    <tr>
                        <td>Mật khẩu hiện tại: </td>
                        <td><input type="password" name="CPass" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu mới: </td>
                        <td><input type="password" name="NPass" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Nhập lại: </td>
                        <td><input type="password" name="RPass" value="" required/></td>
                    </tr>
                    <tr>
                        <td align="center"><input type="submit" value="Thay Đổi" /></td>
                    </tr>
				</tbody>
			</table>
		</form>
	</div>
	</body>\	<footer class="container-fluid text-center">
  <p>Ngô Bảo Ninh</p>
    <p>Nguyễn Hồ Hồng Đạt</p>
</footer>
</html>