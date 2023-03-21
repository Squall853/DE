<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	String tennhapp=request.getParameter("TenNhaPP");
	String diachi=request.getParameter("DiaChi");
	String sdt=request.getParameter("SDT");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	ResultSet rs;	
	int i=st.executeUpdate("update nhapp set DiaChi='"+diachi+"',SDT='"+sdt+"' where TenNhaPP='"+tennhapp+"'");
	if(i>0)
		 response.sendRedirect("QL_QuanLyNhaCungCap.jsp");
%>