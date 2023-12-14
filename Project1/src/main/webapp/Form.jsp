
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
 <h1><b>ACME CITY</b></h1>
 <p>UNIVERSTY</p>
 <h3>CLASS REGISTRATION</h3>
 FILL OUT THE FORM CAREFULLY FORM REGISTRATION
 
 <hr>
	<form action="Formdetail.jsp" method="post">
		<table>
			<tr>
				<td>
					STUDENT NAME : 
			</td>
			<td>
			</tr>
			<tr>
			<td>
					<input type="text" name="ufname">
					first name
					</td>
					
			
				<td>
					<input type="text" name="umname">
					middle name
				</td>
				<td>
					<input type="text" name="ulname">
					last name
				</td>
			</tr>
			
			
			<tr>
			
				<td>
					GENDER:
				</td>
				<tr></tr>
				<td>
					<select name="city "id="city">
					<option value="male">MALE</option>
					<option value="male">FEMALE</option>
					<option value="male">TRANSEGENDER</option>
					
					</select>
				</td>
				
				
			</tr>
		
			<tr>
			
				<td colspan="2">
				
				
					Email Address:
				
				
					<input type="text" name="ename">
				</td>
			
				<td >
					phone number : 
				
					<input type="text" name="uphone">
				</td>
				</tr>
				<tr>
			<td>
					<input type="Submit" value="Submit">
				</td>
			</tr>
			
		</table>
	</form>
	</div>
</center>
</body>
</html>