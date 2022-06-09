<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.Connection" %>
   <%@page import="java.sql.Statement" %>
   <%@page import="java.sql.ResultSet" %>
   <%@page import="java.sql.Driver" %>
   <%@page import="java.sql.DriverManager" %>
   <%@page import="java.sql.SQLException" %>
   <%@page import="javax.sql.*" %>
   <%@page import="java.util.*" %>
   <%@page import="java.lang.Class" %>
   <%@page import="java.lang.*" %>
   <%@page import="java.sql.Statement" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post">
Category<input type="text" name="un"><br><br>
Title   <input type="text" name="p"><br>
<th style="width:400px;"><br></th>
<input type="submit">
</form>
<%String un=request.getParameter("un");
String p=request.getParameter("p");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
//Establish connection to databse server
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/const","root","Narmada07@");
Statement stmt=con.createStatement();
stmt=con.createStatement();
ResultSet rs;
rs=stmt.executeQuery("select category,title from book");
String accn="",tit="";
int flag=0;
if(un!=null){
while(rs.next()){
accn=rs.getString("category");
tit=rs.getString("title");
if(un.equals(accn)&&p.equals(tit)){
	
	response.sendRedirect("Demo13.jsp");
//out.print("record found"+"<a href='Demo13.jsp'>Next level</a>");
flag=1;
break;
}
}
}
if(un!=null&&flag==0){
	out.println("book accno title is incorrect!"+"<a href='Demo12.jsp'>Retry</a>");
	
}
con.close();
}
catch(SQLException e){
	out.println(e);
}
catch(Exception e){
	out.println(e);
}
%>
</body>
</html>