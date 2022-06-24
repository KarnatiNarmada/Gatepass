<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="Searchrecordsbybranch.Searching1" %>
    <%ArrayList obj=(ArrayList)request.getAttribute("obj"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewpoint" content="width=device-width,initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="http://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SF">
><title>Insert title here</title>
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<ul class="navbar-nav mr-auto">
<li class="nav-item">
<a class="nav-link" href="/MyServlet">HOME</a>
</li>
<li class="nav-item active">
<a class="nav-link" href="/MyServlet">RECORDS<span class="sr-only">(current)</span></a>
</li>
<li class="nav-item">
<a class="nav-link" href="/MyServlet">DISABLED5</a>
</li>
</ul>
</nav>

<table>
<% for(int i=0;i<obj.size();i++){ %>
<tr>
	<%Searching1 s=(Searching1)obj.get(i);%>
<td>
	<%=s.getRoll_no() %>
</td>
<td>
	<%=s.getFirst_name() %>
</td>
<td>
	<%=s.getMiddle_name() %>
</td>
<td>
	<%=s.getLast_name() %>
</td>
<td>
	<%=s.getBranch() %>
</td>
<td>
	<%=s.getSection() %>
</td>
<td>
	<%=s.getContact_no() %>
</td>
<td>
	<%=s.getPin() %>
</td>
<td>
	<%=s.getMandal() %>
</td>
<td>
	<%=s.getDistrict() %>
</td>
<td>
	<%=s.getState() %>
</td>
<td>
	<%=s.getLocality() %>
</td>
<td>
	<%=s.getHouse_no() %>
</td>
</tr>

<%} %>
</table>
</div>
</body>
</html>