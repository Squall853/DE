<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String makh=request.getParameter("MaKH");
	 String hokh=request.getParameter("HoKH");
	 String tenkh=request.getParameter("TenKH");
 	String tk=request.getParameter("TaiKhoan");
 	String sdt=request.getParameter("SDT");
 	String diachi=request.getParameter("DiaChi");
 	
 	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();

		try
		{
			int i = st.executeUpdate("insert into khachang values('" + makh + "','" + hokh + "','" + tenkh + "','" + tk + "','" + sdt +"','"+diachi+"')"); 
			if (i > 0) {
			    //session.setAttribute("userid", user);
			    response.sendRedirect("welcome.jsp");
			    out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
			} else {
			    throw new Exception();
			}
		}				
		catch(Exception e)
		{
			 response.sendRedirect("NV_ThemKhachHang.jsp");
			
		}
	
		
 %>