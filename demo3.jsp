<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>for logic&dynamic build tables</title>
</head>
<body>
<table border=5><%--table builds rws and columns,border 1 or 2 or 3 thickness --%>
<%
int n=3;
for(int i=0;i<n;i++){
%>
<tr><%--tr is row --%>
<td><%--td is no. --%>
<td><%=i+1 %></td>
</tr>
<% 
}
%>
</table>
</body>
</html>