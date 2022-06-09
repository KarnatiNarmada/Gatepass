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
<form method="getS"> <%--form tag --%>
<h1><label>Enter a text and click Submit</label></h1><%--label and header h1,h2,h3tag --%>
<input type="text"name="karnati" ><%--input tag --%>
<br>
<%--input type="text"name="Narmada"> --%>
<br>
<input type="submit"value="click"><%--button tag --%>
<% str =request.getParameter("karnati");
if(str!=null) out.print("<br>Welcome to "+str);%> <%--expression tag --%>
</form>
</body>
</html>