<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
div{
border:1px solid black;
box-sizing:border-box;
box-shadow:0px 0px 5px 3px;
width:70%;
border-radius:5px;
}
 table{
 width:60%;

 padding: 20px;
 margin:10px;
 
 }
 h1{
 color:navy-blue;
 }
 p{
 color:yellow;
 }
 
</style>
</head>
<body>
 <center>
 <div>
 <h1><b>LOGIN PAGE</b></h1>

 <h3>LOGIN PAGE</h3>
 FILL OUT THE FORM CAREFULLY FORM REGISTRATION
 
 <hr>
	<form action="Form2.jsp" method="post">
		<table>
			<tr>
				<td>
					STUDENT NAME : 
					
			</td>
			<td>
			<input type="text" ></td>
					
			
				
			</tr>
			
			
			<tr>
			
				<td>
					GENDER:
				</td>
				
				<td>
					<select name=" "id="">
					<option value="male">MALE</option>
					<option value="male">FEMALE</option>
					<option value="male">TRANSEGENDER</option>
					
					</select>
				</td>
				
				
			</tr>
		
			<tr>
			
				<td >
				
				
					Email Address:
				
				
					
				</td>
			<td><input type="text" ></td>
			</tr>
			<tr>
				<td >
					phone number : 
				
					
				</td>
				<td><input type="text" ></td>
				</tr>
				<tr>
			<td>
					<a href="Form2.jsp">register</a>
				</td>
			</tr>
			
		</table>
	</form>
	</div>
</center>
</body>
</html>