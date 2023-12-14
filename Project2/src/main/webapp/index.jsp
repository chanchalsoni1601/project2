<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    
  </head>
  <body>	
  
<%
//INSERT INTO `testtable`(`uid`, `uname`, `uphone`, `uemail`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

Connection con = null;
Statement stmt = null;
ResultSet rs = null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
	if(con==null){
		out.print("<h1 class='text-danger'>Connection Problem</h1>");
	}
	else{
		stmt = con.createStatement();
		rs = stmt.executeQuery("select * from testtable");
	}
	
}catch(Exception e){
	out.print("<div class='text-muted'>"+e+"</div>");
	out.print("<h3 class='text-danger'>DB Connectivity Issue</h3>");

}

%>
    <div class="container">
      
      <div class="row">
        <div class="col text-center bg-secondary text-white border border-dark p-2 m-2 rounded">
            <h1>Customer Relationship Management</h1>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <a class="btn btn-outline-success" href="createCustomer.jsp">Create Customer</a>
        </div>
      </div>
      <div class="row">
        <div class="col border border-dark p-2 m-2 rounded">
          <table class="table table-striped table-hover table-bordered">
            <tr>
              <th>Id</th>
              <th>Name</th>
              <th>Email</th>
              <th>Phone Number</th>
              <th>Actions</th>
            </tr>
 <%
 while(rs.next()){
%>     
			
            <tr>
              <td><%= rs.getInt("uid") %></td>
              <td><%= rs.getString("uname") %></td>
              <td><%= rs.getString("uemail") %></td>
              <td><%= rs.getString("uphone") %></td>
              <td><a class="btn btn-outline-success" href='editCustomer.jsp?uid=<%= rs.getInt("uid") %>'>Edit</a>|<a class="btn btn-outline-danger" href='deleteCustomer.jsp?uid=<%= rs.getInt("uid") %>'>Delete</a></td>
            </tr>
 <%
 	}
 con.close();
 %>
             
          </table>
          <div class="text-center text-muted small">
            Information you are viewing can be varied from real time data<br>@SoftgyanTechnologies
          </div>
        </div>
      </div>
    </div>
    
    
    


   
    
    <jsp:include page="bootstrap.html"/>
  </body>
</html>