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
<%@ page import="java.time.format.DateTimeFormatter"%>  
<%@ page import="java.time.LocalDateTime"%> 
<%@ page import="java.text.DateFormat"%>  
<%@ page import="java.text.SimpleDateFormat"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String str=(String)session.getAttribute("roll_no");
String b=(String)session.getAttribute("branch");
out.println(str);
Date date = Calendar.getInstance().getTime();  
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");  
String strDate = dateFormat.format(date);
%>
<form method=post>
Reason:<br>
  <textarea rows="4" cols="50" name="comment" value="comment">.</textarea>
 
			<label>TO APPLY FOR GATE PASS CLICK BELOW</label>
			
			<div class="button">
          <input type="submit" value="click">
        </div>
       </form>  
<% 	String pur=request.getParameter("comment"); %>
			
<%
try{
	Connection con=connections.Establish();
	Statement stm=con.createStatement();
	stm=con.createStatement();
	String sql="select * from student_request where roll_no='"+str+"'";
	ResultSet rs=stm.executeQuery(sql);
	
		while(rs.next()){
			String datee=rs.getString("date");
		if(strDate.equals(datee)){
		
		 out.print("you have already applied for the gatepass !plz check the status..");%>
			<table border=1>
			<tr>
			<th>DATE</th>
			<th>ROLL_NO</th>
			<th>PURPOSE</th>
			<th>HOD_STATUS</th>
			<th>E-BLOCK_STATUS</th>
			<th>BRANCH</th>
			<tr><td><%=rs.getString("dates") %></td>
			<td><%=rs.getString("roll_no") %></td>
			<td><%=rs.getString("purpose") %></td>
			<td><%=rs.getString("HOD_status") %></td>
			<td><%=rs.getString("EBlock_status") %></td>
			<td><%=rs.getString("branch") %></td>
			</tr>
			</table>
					
		<%}
		}
		if(pur!=null){
			 String hod="pending";
			   String eblock="pending";
				stm.executeUpdate("insert into student_request(dates,roll_no,purpose,HOD_status,EBlock_status,branch) values('"+strDate+"','"+str+"','"+pur+"','"+hod+"','"+eblock+"','"+b+"')");
				out.print("Gatepass request successfull!");	
		
	}

	/*if(flag==0&&pur!=null){
		
		   String hod="pending";
		   String eblock="pending";
			stm.executeUpdate("insert into student_request(date,roll_no,purpose,hod_status,Eblock_status,branch) values('"+strDate+"','"+str+"','"+pur+"','"+hod+"','"+eblock+"','"+b+"')");
			out.print("Gatepass request successfull!");
	}*/
	
	
	Statement stm1=con.createStatement();
	stm1=con.createStatement();
	String sql1="select * from student_details where roll_no='"+str+"'";
	ResultSet rs1=stm1.executeQuery(sql1);
	out.println(str);
	if(rs1.next()){%>

		<table border="1" align="right" width=35%>
		<caption ><h2>Student Details</h2></caption>
<tr>
		<th>FIRST NAME</th><td><%=rs1.getString("first_name") %></td>
		</tr>
		<tr>
		<th>MIDDLE NAME</th><td><%=rs1.getString("middle_name") %></td>
		</tr>
		<tr>
		<th>LAST NAME</th><td><%=rs1.getString("last_name") %></td>
		</tr>
		<tr>
		<th>ROLL NO</th><td><%=rs1.getString("roll_no") %></td>
		</tr>
		<tr>
		<th>BRANCH</th><td><%=rs1.getString("branch") %></td>
		</tr>
		<tr>
		<th>SECTION</th><td><%=rs1.getString("section") %></td>
		</tr>
		<tr>
		<th>CONTACT_NUMBER</th><td><%=rs1.getString("contact_no") %></td>
		</tr>
		</table>
	<% }
	rs.close();
	rs1.close();
	con.close();
}
catch(SQLException e){
	out.print(e);
}%>
</body>
</html>