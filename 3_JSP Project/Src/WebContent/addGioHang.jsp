<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%
 	String taikhoan=request.getParameter("TaiKhoan");
 	String email=request.getParameter("Email");
 	String sdt=request.getParameter("SDT");
 	String diachi=request.getParameter("DiaChi");
 	String mahang=request.getParameter("MaHang");
 	String soluong=request.getParameter("SoLuong");
 	
 	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	
	int i=st.executeUpdate("insert into giohang values('"+taikhoan+"','"+email+"','"+sdt+"','"+diachi
			+ "','"+mahang+"','"+soluong+"',CURDATE())"); 
	
	if(i>0)
	{
		   response.sendRedirect("KH_XemGioHang.jsp");
	}
%>