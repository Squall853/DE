<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	String taikhoan=request.getParameter("TaiKhoan");
	String mahang=request.getParameter("MaHang");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	
	int i=st.executeUpdate("delete from giohang where TaiKhoan='"+taikhoan+"' and MaHang='"+mahang+"';");
		
		if(i>0)
			 response.sendRedirect("NV_QuanLyDatHang.jsp");
		else
			response.sendRedirect("NhanVien.jsp");
%>