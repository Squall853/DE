<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	String sophieunhap=request.getParameter("SoPhieuNhap");
	String ngaynhap=request.getParameter("NgayNhap");
	String lydo=request.getParameter("LyDoNhap");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop?characterEncoding=utf-8		",
	            "root", "12111996");
	Statement st = con.createStatement();
	
	int i=st.executeUpdate("insert into phieunhap values ('"+ sophieunhap+ "','"+ngaynhap+ "','" +lydo+"')");
	if(i>0)
		  response.sendRedirect("QL_QuanLyNhapHang.jsp");
%>