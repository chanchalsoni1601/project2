<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<%
	String uid = request.getParameter("uid");
	String uname = request.getParameter("uname");
	String uemail = request.getParameter("uemail");
	
	String uphone = request.getParameter("uphone");
	
	System.out.println(uid);
	System.out.println(uname);
	System.out.println(uemail);
	System.out.println(uphone);
	
	
	Connection con = null;
	PreparedStatement stmt = null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
		if(con==null){
			out.print("<h1 class='text-danger'>Connection Problem</h1>");
		}
		else{
			stmt = con.prepareStatement("UPDATE `testtable` SET `uname`= ?,`uphone`= ?,`uemail`= ? WHERE `uid` = ?");
			stmt.setString(1, uname);
			stmt.setString(2, uphone);
			stmt.setString(3, uemail);
			stmt.setInt(4,Integer.parseInt(uid));
			
			int x = stmt.executeUpdate(); // Here x will hold number of database effected rows
			if(x>0){
				response.sendRedirect("index.jsp");
			}
			else{
				out.print("<div class='w-100 bg-danger text-white p-3 rounded'>Some Problem Occurred..</div>");
			}
		}
		con.close();
		
	}catch(Exception e){
		out.print("<div class='text-muted'>"+e+"</div>");
		out.print("<h3 class='text-danger'>DB Connectivity Issue</h3>");

	}
	
%>