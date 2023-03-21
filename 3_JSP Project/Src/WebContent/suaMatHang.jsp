<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	String mahang=request.getParameter("MaHang");
	String tenhang=request.getParameter("TenHang");
	String chip=request.getParameter("Chip");
	String xung=request.getParameter("Xung");
	String ocung=request.getParameter("OCung");
	String soluong=request.getParameter("SoLuong");
	String ram=request.getParameter("RAM");
	String vga=request.getParameter("VGA");
	String cache=request.getParameter("Cache");
	String tgbh=request.getParameter("ThoiGianBH");
	String dongia=request.getParameter("DonGia");
	String nhapp=request.getParameter("NhaPP");
	String makho=request.getParameter("MaKho");
	String image=request.getParameter("Image");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	ResultSet rs;	
	int i=st.executeUpdate("update mathang set TenHang='"+tenhang+ "',Chip='"+chip+
			"',Xung='"+xung+"',OCung='"+ocung+"',RAM='"+ram+"',VGA='"+vga+"',Cache='"+
			cache+"',ThoiGianBH='"+tgbh+"',DonGia='"+dongia+"',SoLuong='"+soluong+"',NhaPP='"+nhapp+
			"',MaKho='"+makho+"'where MaHang='"+mahang +"'");
	if(i>0)
		 response.sendRedirect("NV_QuanLyMatHang.jsp");
	else
		 response.sendRedirect("NhanVien.jsp");
%>