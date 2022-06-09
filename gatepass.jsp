<%@page import="pass.StatesCapital" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="max-width:500px">
<%!StatesCapital sc=new StatesCapital(); %>
<table>
<tr class="gradientdown">
<th style="width:400px;"><br></th>
<th style="width:100px;">State and Capital</th>
</tr>
<%!String sANDC; %>
<%
for(int i=0;i<sc.stacap.size();i++){
sANDC=sc.getStateCapital(i);
%>
<tr class="data">
<td style="text-align:center;">
<td><%=sANDC %></td>
</tr>
<%
}
%>
</table>
</div>
</body>
</html>