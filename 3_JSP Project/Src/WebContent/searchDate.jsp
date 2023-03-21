<%@ page import="java.sql.*"%>

<%
    String thang = request.getParameter("Thang");    
	String nam = request.getParameter("Nam");
  	
  	   Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
                "root", "12111996");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select mathang.MaHang,mathang.TenHang,sum(mathang.DonGia*cthoadon.SoLuong) as TT,mathang.SoLuong,sum(cthoadon.SoLuong)as SL"
		+" from hoadon join cthoadon on hoadon.MaHD=cthoadon.MaHD"
		+" join mathang on cthoadon.MaHang=mathang.MaHang"
		+" where month(NgayLap)='" +thang+"' and year(NgayLap)='"+nam+"'"
        +" group by mathang.MaHang,mathang.TenHang;");
        
		if (rs.next()) {
			
	    	session.setAttribute("Thang",thang);
	    	session.setAttribute("Nam",nam);
	    	response.sendRedirect("QL_ThongKeBanHang.jsp");
 		}
 		
   
	
%>

        