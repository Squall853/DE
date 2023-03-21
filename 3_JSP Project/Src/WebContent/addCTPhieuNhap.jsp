<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%
 	String sopbhieu=request.getParameter("SoPhieu");
 	String mahang=request.getParameter("MaHang");
 	String sl=request.getParameter("SoLuongNhap");
 	String dongia=request.getParameter("DonGia");
 	
 	
 	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	
	int i=st.executeUpdate("insert into ctphieunhap values('"+sopbhieu+"','"+mahang+"','"+sl+"','"+dongia+ "'"); 
	
	if(i>0)
	{
		   response.sendRedirect("QL_ChiTietNhap.jsp");
	}
%>