<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	String makh=request.getParameter("MaKH");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	
	int i=st.executeUpdate("delete from khachhang where MaKH='"+makh+"'");
		
		if(i>0)
			 response.sendRedirect("NV_QuanLyKhachHang.jsp");
		else
			response.sendRedirect("NhanVien.jsp");
%>