<%@ page import ="java.sql.*" %>

<%
    String userid = request.getParameter("TaiKhoan");    
    String pwd = request.getParameter("MatKhau");
    String loaiTK = request.getParameter("LoaiTK");;
  

    try
    {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlybanlaptop",
                "root", "12111996");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from taikhoan where TaiKhoan='" + userid + "' and MatKhau='" + pwd +
        	"'and LoaiTK='"+loaiTK +"'" );
     
   
	    if (rs.next()) {
			
	    	session.setAttribute("TaiKhoan", userid);
	    	if(loaiTK.equals("NV"))
	    	    response.sendRedirect("NhanVien.jsp");
			if(loaiTK.equals("KH"))
				response.sendRedirect("KhachHang.jsp");
			if(loaiTK.equals("QL"))
				response.sendRedirect("QuanLy.jsp");
	        //out.println("<a href='logout.jsp'>Log out</a>");
	        
	        
	    } else {
	    
	    	 	throw new Exception();
	    }
    
    }
    catch(Exception e){
    	 response.sendRedirect("DangNhap.jsp");
    }
%>
