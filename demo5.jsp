<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border=1 width=100%>
<%
int n=3;
String[] colors={"red","green","blue"};
for(int i=0;i<n;i++)
{
%>
<tr>
<td><%out.print(i); %></td>
<td><% out.print(colors[i]);%></td>
</tr>
<% 
}
%>
</table>
</body>
</html>