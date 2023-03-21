<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String manv=request.getParameter("MaNV");
	 String honv=request.getParameter("HoNV");
	 String tennv=request.getParameter("TenNV");
 	String tk=request.getParameter("TaiKhoan");
 	String diachi=request.getParameter("DiaChi");
 	String sdt=request.getParameter("SDT");
 	String cv=request.getParameter("CongViec");
 	String ngayvaolam=request.getParameter("NgayVaoLam");
 	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();

		
			int i = st.executeUpdate("insert into nhanvien values('" + manv + "','" + honv + "','" + tennv	
					+ "','" + tk + "','" + diachi +"','"+sdt+"','"+cv+"','"+ngayvaolam+"')"); 
			if (i > 0) {
			    //session.setAttribute("userid", user);
			    response.sendRedirect("QL_QuanLyNhanVien.jsp");
			    out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
			}
		
	
		
 %>