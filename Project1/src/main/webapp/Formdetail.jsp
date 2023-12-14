
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<% 
String ufname = request.getParameter("ufname");
String ulname = request.getParameter("ulname");

%>
<body>
	<h1>
		Welcome Miss. <%= ufname+" "+ulname %>
	</h1>
</body>
</html>