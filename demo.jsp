<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--given below is jsp script i java code --%>
<%out.print((float)5/10);
//out.print(" Hello Abhishek");%>
<%int count=0; %> <%--scriptlet --%>
page count is <%out.println("<br>page count is"+ ++count); %>
<%!int a=3,b=4; %><%--declaration tag --%>
<%out.println("<br>multiplication of and b is "); %>
<%=a*b %>
<%int n1=10; int n2=20; out.println("<br>sum of n1 and n2="); %><%--to go to next line <br> is used--%>
<%=n1+n2 %>
</body>
</html>