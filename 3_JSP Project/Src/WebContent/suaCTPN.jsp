<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	String sophieu=request.getParameter("SoPhieu");
	String mahang=request.getParameter("MaHang");
	String soluong=request.getParameter("SoLuongNhap");
	String dongia=request.getParameter("DonGia");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	ResultSet rs;	
	int i=st.executeUpdate("update ctphieunhap set SoLuongNhap='"+soluong+"',DonGia='"+dongia+"' where SoPhieu='"+sophieu
			+"' and MaHang='"+mahang+"';");
	if(i>0)
		 response.sendRedirect("QL_QuanLyNhapHang.jsp");
%>