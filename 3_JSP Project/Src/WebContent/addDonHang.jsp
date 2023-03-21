<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
 	String mahd=request.getParameter("MaHD");
	String ngaylap=request.getParameter("NgayLap");
	String makh=request.getParameter("MaKH");
	String manv=request.getParameter("MaNV");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	
	int i=st.executeUpdate("insert into hoadon values ('"+mahd+"','"+ngaylap+"','"+makh+
			"','"+manv+"')");
	if(i>0)
		  response.sendRedirect("NV_QuanLyDonHang.jsp");
%>