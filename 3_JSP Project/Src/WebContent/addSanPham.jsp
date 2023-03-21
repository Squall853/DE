<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

		try
		{
			int i = st.executeUpdate("insert into mathang values('" + mahang + "','" + tenhang + "','" + chip + "','" + xung + "','" + ocung +"','"+ram+ "','"+ vga+ "','"+cache+" Cache', '" +tgbh + "', '"+dongia+"', '"+soluong+"','"+nhapp+"', '"+ makho + "','" +image+"')"); 
			if (i > 0) {
			    //session.setAttribute("userid", user);
			    response.sendRedirect("QL_QuanLyMatHang.jsp");
			    out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
			} else {
			    throw new Exception();
			}
		}				
		catch(Exception e)
		{
			 response.sendRedirect("NV_ThemSanPham.jsp");
			
		}
	
		
 %>