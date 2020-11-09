<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>

</head>
<body>

	<%
			
			//works for HTTP 1.1
			response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
			
			//for older versions of HTTP 1.0
			response.setHeader("Pragma", "no-cache");
				
			//for proxies
			response.setHeader("Expires", "0");
	
	
		//if user is not logged in then redirect to login page
		if(session.getAttribute("username") == null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	
	Welcome ${username}
	
	<br>
	
	<a href="videos.jsp">click her for videos</a>
	
	<form action="Logout">
		<input type="submit" value="logout">
		
	</form>
</body>
</html>