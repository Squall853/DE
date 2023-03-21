<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	String mahang=request.getParameter("MaHang");
	String mahd=request.getParameter("MaHD");	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	ResultSet rs;	
	int i=st.executeUpdate("delete from cthoadon where MaHD='"+mahd+"'and MaHang='"+mahang+"'");
		
		if(i>0)
			 response.sendRedirect("success.jsp");
	
%>