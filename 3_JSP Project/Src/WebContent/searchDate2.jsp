<%@ page import="java.sql.*"%>

<%
    String thang = request.getParameter("Thang");    
	String nam = request.getParameter("Nam");
  	
  	   Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
                "root", "12111996");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select hoadon.MaHD,hoadon.NgayLap,sum(capnhatcthd.ThanhTien) as TongTien"+
		" from hoadon join capnhatcthd on hoadon.MaHD=capnhatcthd.MaHD"+
		" where month(NgayLap)='"+thang+"'"+
		" and year(NgayLap)='"+nam+"'"+
        " group by hoadon.MaHD;");
        
		if (rs.next()) {
			
	    	session.setAttribute("Thang",thang);
	    	session.setAttribute("Nam",nam);
	    	response.sendRedirect("QL_ThongKeDonHang.jsp");
 		}
 		
   
	
%>

        