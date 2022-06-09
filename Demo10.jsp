<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!String str; %>
<form method="get">
	<input type="text" name="narmada" ><br>
	<input type="text"password="pswd"><br>
	<input type="submit">
	<%=str="hi "+request.getParameter("narmada") %>
	
</form>
</body>
</html>