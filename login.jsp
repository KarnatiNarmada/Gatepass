<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.Driver.*" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.Class" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="request.connections" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login Page</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>
<img src="https://cdn.ankurb.net/wp-content/uploads/2009/03/16174137/gyaanin2.jpg" width = "100px" height="100px">
<!-- partial:index.partial.html -->
<div id="bg"></div>
<form action=adminlogin.jsp>
  <div class="form-field">
    <input type="text" name="un" placeholder="Username" required/>
  </div>
  
  <div class="form-field">
    <input type="password" name="p"placeholder="Password" required/>                         </div>
  
  <div class="form-field">
    <button class="btn" type="submit">Log in</button>
  </div>
  <%
  String una=request.getParameter("un");
  String pw=request.getParameter("p");
  String uname="admin123";
	String pwd="0000";
  if(una!=null)
  {
  	if(una.equals(uname) && pw.equals(pwd))
	{%>
	<form action=adminlogin.jsp> </form>
  <% 
	}
  }
  %>
</form>
<%--
String una=request.getParameter("un");
String pw=request.getParameter("p");

--%>
<%--
try
{
	Connection con=connections.Establish();
	Statement stmt=con.createStatement();
	stmt=con.createStatement();
	String sql=" select roll_no,contact_no from student_details where roll_no='"+una+"'";
	//String sql1="select*from student_father where roll_no='"+rno+"'";
	//String sql2="select*from student_address where roll_no='"+rno+"'";
	ResultSet rs=stmt.executeQuery(sql);
if(una!=null)
{
	String uname="admin123";
	String pwd="0000";
	if(una.equals(una) && pw.equals(pwd))
	{
		response.sendRedirect("adminlogin.jsp");
	}
	else if(rs.next())
	{
		String rn=rs.getString("roll_no");
		String cn=rs.getString("contact_no");
		if(una.equals(rn)&&pw.equals(cn))
		{
			//response.sendRedirect("studentpage.jsp");
			session.setAttribute("roll_no",rn);
		}
	}
	else
	{
		out.print("invalid username and password");
	}
}
}
catch(SQLException e)
{
	out.print(e);
}
--%>
</body>
</html>