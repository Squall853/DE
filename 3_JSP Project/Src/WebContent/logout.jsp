<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("DangNhap.jsp");
%>