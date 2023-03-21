<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String ho=request.getParameter("Ho");
	 String ten=request.getParameter("Ten");
	 String tk=request.getParameter("TaiKhoan");
	 String mk=request.getParameter("MatKhau");
 	String email=request.getParameter("Email");
 	String sdt=request.getParameter("SDT");
 	String gioitinh=request.getParameter("GioiTinh");
 	String ngaysinh=request.getParameter("NgaySinh");
	String ngaydk=request.getParameter("NgayDK");
 	String diachi=request.getParameter("DiaChi");
 	String loaiTK=request.getParameter("LoaiTK");
 	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();

		
			int i = st.executeUpdate("insert into taikhoan values('" + ho + "','" + ten + "','" + tk	
					+ "','" + mk + "','" + email +"','"+sdt+"','"+gioitinh+"','"+ngaysinh+
					"','"+ngaydk+"','"+loaiTK+"','"+diachi+"')"); 
			if (i > 0) {
			    //session.setAttribute("userid", user);
			    response.sendRedirect("QL_QuanLyTaiKhoan.jsp");
			    out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
			}
		
	
		
 %>