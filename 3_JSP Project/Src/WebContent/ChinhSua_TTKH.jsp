<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
	String TaiKhoan=request.getParameter("TaiKhoan");
	String HoNV=request.getParameter("HoNV");
	String TenNV=request.getParameter("TenNV");
	String SDT=request.getParameter("SDT");
	String DiaChi=request.getParameter("DiaChi");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	
	ResultSet rs;	
	int i=st.executeUpdate("update taikhoan set SDT='"+SDT+"', DiaChi = '"+DiaChi+"' where TaiKhoan ='"+TaiKhoan+"'");
	if (i > 0) {
		    //session.setAttribute("userid", user);
		    response.sendRedirect("KhachHang.jsp");
		   // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
		} else {
			 response.sendRedirect("KH_ChinhSua.jsp");
		}
		
%>