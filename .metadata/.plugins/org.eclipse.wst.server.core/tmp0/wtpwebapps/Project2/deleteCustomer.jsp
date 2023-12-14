<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
	<%
		try{
			String uid = request.getParameter("uid");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
			PreparedStatement ps = con.prepareStatement("DELETE FROM `testtable` WHERE uid = ?");
			ps.setInt(1, Integer.parseInt(uid));
			int res = ps.executeUpdate();
			if(res>=1){
 				response.sendRedirect("index.jsp");
			}else{
				out.print("<div class='w-100 bg-danger text-white p-3 rounded'>Some Problem Occurred..</div>");
				request.getRequestDispatcher("index.jsp").include(request,response);
			}
			
		}catch(Exception e){
			out.print(e);
		}
	%>
</body>
</html>