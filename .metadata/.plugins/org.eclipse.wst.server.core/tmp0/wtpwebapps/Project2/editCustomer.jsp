<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Customer</title>
</head>

<%
		try{
			String uid = request.getParameter("uid");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
			Statement ps = con.createStatement();
			ResultSet rs = ps.executeQuery("select * from `testtable` WHERE uid = "+uid);
			while(rs.next()){
%>
<body>
    <div class="container">
        <div class="row">
            <div class="col m-2 p-2 text-center h1 bg-primary text-white rounded">Create Customer Page</div>
        </div>
        <div class="row">
            <div class="col-4">
                <img src="https://img.freepik.com/free-vector/organic-flat-customer-support-illustration_23-2148899134.jpg?size=626&ext=jpg&ga=GA1.2.1414062718.1679204850&semt=ais" alt="" class="img-fluid">
            </div>
            <div class="col-8">
                <div class="row">
                    <div class="col">
                        <form action="updateCustomer.jsp" method="post">
                        	<div class="m-2">
                                <input class="form-control" type="hidden" name="uid" id="uid" value='<%=  rs.getInt("uid")%>'>
                            </div>
                            <div class="m-2">
                                <input class="form-control" type="text" name="uname" id="uname" value = '<%=  rs.getString("uname")%>'>
                            </div>
                            <div class="m-2">
                                <input class="form-control" type="text" name="uemail" id="uemail" value='<%=  rs.getString("uemail")%>'>
                            </div>
                            <div class="m-2">
                                <input class="form-control" type="text" name="uphone" id="uphone" value='<%=  rs.getString("uphone")%>'>
                            </div>
                            <div class="m-2">
                                <input class="btn btn-outline-primary w-100" type="submit" value="Update Customer">
                            </div>
                        </form>
                        
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> -->
    <jsp:include page="bootstrap.html"/>
    
</body>
</html>

<%
			}	
			
			con.close();
		}catch(Exception e){
			out.print(e);
		}
	%>