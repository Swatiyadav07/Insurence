<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<%
	if("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit")!=null){
		String user_name = request.getParameter("username");
		String password = request.getParameter("password");
		if("admin".equalsIgnoreCase(user_name) && "admin@123".equalsIgnoreCase(password))
		{
		out.println("Welcome to the page");
		}
		else
			out.println("Username or password incorrect, please try again.");
	}
%>
<body>
<div align="center">
<h1>Login Form</h1>
<form method="post">
	<table style="with: 80%">
		<tr>
		<td>User Name : <input type="text" name="username"><br></td>
		</tr>
		<tr>
		<td>Password  : <input type="password" name="password"><br></td>
		</tr>
	</table>
<button type="submit" name="submit">Submit</button>
<button type="reset">Reset</button>
<h5>New to the platform, then sign in</h5>
<button type="submit">Sign-in</button>
</form>
</div>
</body>
</html>
