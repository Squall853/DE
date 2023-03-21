<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
 	String tennhapp=request.getParameter("TenNhaPP");
	String diachi=request.getParameter("DiaChi");
	String sdt=request.getParameter("SDT");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	
	int i=st.executeUpdate("insert into nhapp values ('"+ tennhapp+ "','"+diachi+ "','" +sdt+"')");
	if(i>0)
		  response.sendRedirect("QL_QuanLyNhaCungCap.jsp");
%>