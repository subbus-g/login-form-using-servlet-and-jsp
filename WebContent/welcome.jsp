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
		//if user is not logged in then redirect to login page
		if(session.getAttribute("username") == null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	Welcome ${username}
	<br>
	<a href="videos.jsp">click her for videos</a>
</body>
</html>