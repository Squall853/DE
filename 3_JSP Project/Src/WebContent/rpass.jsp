<%@ page import ="java.sql.*" %>
<%
	String uname = request.getParameter("uname"); 
	String CPass = request.getParameter("CPass");    
	String NPass = request.getParameter("NPass");
	String RPass = request.getParameter("RPass");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
	        "root", "12111996");
	Statement st = con.createStatement();
	ResultSet rs;
	if(NPass.equals(RPass))
	{
		int i = st.executeUpdate("Update taikhoan set MatKhau= '" + RPass + "' where TaiKhoan = '" + uname + "' and MatKhau ='"+CPass+"'");
		if (i > 0) {	
		    //session.setAttribute("uname", uname);
		    response.sendRedirect("welcome.jsp");
		   // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
		} else {
		    response.sendRedirect("index.jsp");
		}
	}else{
		 response.sendRedirect("index.jsp");
	}
%>