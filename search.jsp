<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import ="java.sql.Connection" %>
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
<%@ page import="searchrecord.Searching"%>
<%@page import ="searchrecord.studentdetails" %>
<!DOCTYPE html>
<html>
<head>
 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color:#2193b0">
<form method="post" >

<input type="text" name="rollno"placeholder="Enter student Rollno" required>
<input type="submit" value="submit">
<br>
<br>
 <%String rollno=request.getParameter("rollno"); %>
 <% 
 Searching obj=new Searching();
studentdetails temp=obj.searchbranch(rollno);
 //ArrayList<studentdetails> o=(ArrayList)request.getAttribute("display");
if(temp.number==0&&rollno!=null)
{
	out.println("ROLL NUMBR DOES NOT EXIST");
}
else if(rollno!=null){
	%>
	<font size="+1" color="green">
<TABLE cellpadding="15" border="3" style="background-color: #ffffff">
<tr>
<th><a href="">ROLL NUMBER</a></th>
<th><a href="">FIRST NAME</a></th>
<th><a href="">MIDDLE NAME</a></th>
<th><a href="">LAST NAME</a></th>
<th><a href="">BRANCH</a></th>
<th><a href="">SECTION</a></th>
<th><a href="">CONTACT NUMBER</a></th>
<th><a href="">PIN</a></th>
<th><a href="">MANDAL</a></th>
<th><a href="">DISTRICT</a></th>
<th><a href="">STATE</a></th>
<th><a href="">LOCALITY</a></th>
<th><a href="">HOUSE NUMBER</a></th>
<th><a href="">FATHER NAME</a></th>
<th><a href="">FATHER CONTACT NUMBER</a></th>
</tr>
<TR>
<TD><%=temp.roll_no%></TD>
<TD><%=temp.first_name%></TD>
<TD><%=temp.middle_name%></TD>
<TD><%=temp.last_name%></TD>
<TD><%=temp.branch%></TD>
<TD><%=temp.section%></TD>
<TD><%=temp.contact_no%></TD>
<TD><%=temp.pin%></TD>
<TD><%=temp.mandal%></TD>
<TD><%=temp.district%></TD>
<TD><%=temp.state%></TD>
<TD><%=temp.locality%></TD>
<%--<TD><%=rs.getString(13)%></TD>--%>
<TD><%=temp.house_no%></TD>
<TD><%=temp.father_name%></TD>
<TD><%=temp.father_ph%></TD>
</TR>
	<%
}
 %>
 
 </TABLE>
 </font>
</form>
</body>
</html>