<%@ page import="java.sql.*"%>

<%
    String tenhang = request.getParameter("TenHang");    
  

  

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
                "root", "12111996");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from mathang where TenHang like '%" +tenhang +"%'" );
     	
 		if (rs.next()) {
			
	    	session.setAttribute("TenHang",tenhang);
	    	response.sendRedirect("index2.jsp");
 		}
 		else{
 			response.sendRedirect("thongbao.jsp");
		}
   
	
%>
