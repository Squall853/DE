<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	String maphieu=request.getParameter("MaPhieu");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	
	int i=st.executeUpdate("delete from baohanh where MaPhieu='"+maphieu+"';");
		
		if(i>0)
			 response.sendRedirect("NV_QuanLyBaoHanh.jsp");
		else
			response.sendRedirect("NhanVien.jsp");
%>