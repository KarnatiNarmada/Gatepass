<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.Statement" %>
    <%@ page import ="java.sql.Connection" %>
<%@page import="java.sql.ResultSet"%>
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
  <link rel="stylesheet" href="style.css">

</head>
<body>
<img src="https://cdn.ankurb.net/wp-content/uploads/2009/03/16174137/gyaanin2.jpg" width = "100px" height="100px">
<!-- partial:index.partial.html -->
<div id="bg"></div>
<form>
  <div class="form-field">
    <input type="text" name="un" placeholder="Username" required/>
  </div>
  
  <div class="form-field">
    <input type="password" name="p"placeholder="Password" required/>                         </div>
  
  <div class="form-field">
    <button class="btn" type="submit">Log in</button>
  </div>
</form>
<%
String una=request.getParameter("un");
String pw=request.getParameter("p");%>
<%
if(una!=null&&pw!=null)
{
	String uname="admin123";
	String pwd="0000";
	
	if(una.equals(uname) && pw.equals(pwd))
	{
		response.sendRedirect("adminlogin.jsp");
	}
	else 
	{	
		try
		{
				Connection con=connections.Establish();
				Statement stm=con.createStatement();
				stm=con.createStatement();
				String sql=("select roll_no,contact_no,branch from student_details where roll_no='"+una+"'");
				
				//String sql2="select*from student_address where roll_no='"+rno+"'";
				ResultSet rs=stm.executeQuery(sql);
				
			
		if(rs.next())
		{
			String rn=rs.getString("roll_no");
			String cn=rs.getString("contact_no");
			String branch1=rs.getString("branch");
			if(una.equals(rn)&&pw.equals(cn))
			{
				
				session.setAttribute("roll_no",rn);
				session.setAttribute("branch",branch1);
				response.sendRedirect("studentpage.jsp");
			}
		}
			
		Statement stm1=con.createStatement();
		stm1=con.createStatement();
		String sql1=("select emp_id,contact_no,branch,role,first_name from employee_details where emp_id='"+una+"'");
		ResultSet rs1=stm1.executeQuery(sql1);			
			if(rs1.next())
				{	
					String rn1=rs1.getString("emp_id");
					String cn1=rs1.getString("contact_no");
					String b=rs1.getString("branch");
					String role=rs1.getString("role");
					String nm1=rs1.getString("first_name");
					String hod="HOD";
					String E_block="E-BLOCK";
					if(una.equals(rn1)&&pw.equals(cn1))
					{
						if(role.equals(hod))
						{	session.setAttribute("emp_id",rn1);
							session.setAttribute("branch",b);
							session.setAttribute("first_name",nm1);
							response.sendRedirect("HODpage.jsp");
						}
						else if(role.equals(E_block))
						{	session.setAttribute("emp_id",rn1);
						session.setAttribute("first_name",nm1);
						//session.setAttribute("branch",branch);
							response.sendRedirect("Eblockpage.jsp");
				
						}
					}
				}
		}
		
		catch(SQLException e)
		{
			out.print(e);
		}
	}
}
%>
</body>
</html>