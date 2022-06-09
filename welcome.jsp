<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
<%!String str; %>
<input type="text"name="un">
<input type="submit"value="go"><br/>
<%
str=request.getParameter("un");
out.print("welcome "+str);
%><br>
current time<%=java.util.Calendar.getInstance().getTime() %>
</form>
</body>
</html>