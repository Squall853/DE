<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String maphieu=request.getParameter("MaPhieu");
	String makh=request.getParameter("MaKH");
	String manv=request.getParameter("MaNV");
	String mahang=request.getParameter("MaHang");
	String ngaynhan=request.getParameter("NgayNhan");
	String ngaytra=request.getParameter("NgayTra");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();

		
			int i = st.executeUpdate("insert into baohanh values ('"+maphieu+"','"+makh+"','"+manv+
					"','"+mahang+"','"+ngaynhan+"','"+ngaytra+"')");
			if (i > 0) {
			    //session.setAttribute("userid", user);
			    response.sendRedirect("NV_QuanLyBaoHanh	.jsp");
			    out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
			} else {
			    throw new Exception();
			}
			
	
		
 %>