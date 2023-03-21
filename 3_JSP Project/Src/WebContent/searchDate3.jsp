<%@ page import="java.sql.*"%>

<%
    String thang = request.getParameter("Thang");    
	String nam = request.getParameter("Nam");
  	
  	   Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
                "root", "12111996");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select phieunhap.SoPhieu,sum(SoLuongNhap*DonGia) as TongTien"
        		+" from phieunhap join ctphieunhap on phieunhap.SoPhieu=ctphieunhap.SoPhieu"
        		+" where month(NgayNhap)='"+thang+"'"
        		+" and year(NgayNhap)='"+nam+"'"
        		+" group by phieunhap.SoPhieu;");
        
		if (rs.next()) {
			
	    	session.setAttribute("Thang",thang);
	    	session.setAttribute("Nam",nam);
	    	response.sendRedirect("QL_ThongKeNhapHang.jsp");
 		}
 		
   
	
%>

        