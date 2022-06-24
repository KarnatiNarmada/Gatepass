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
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  <style type="text/css">
  	select{
  		  height: 45px;
  		width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
  	}
  	
  </style>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <link rel="stylesheet" href="style1.css">
     
     <title>Registration Form</title>
     
   </head>
<body>
  <div class="container">
  
    <div class="title">Employee Registration</div>
    
    <div class="content">
      <form action="#">
        <div class="user-details">
        <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" name="fnm"placeholder="Enter employeee first name" required>
          </div>
          <div class="input-box">
            <span class="details">Middle Name</span>
            <input type="text" name="mnm"placeholder="Enter employee middle name" >
          </div>
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" name="lnm"placeholder="Enter employee last name" required>
          </div>
          <div class="input-box">
            <span class="details">employee Id</span>
            <input type="text" name="eid"placeholder="Enter employee id" required>
          </div>
          <div class="input-box">
            <span class="details">Contact Number</span>
            <input type="text" name="ph"placeholder="Enter employee Contact number" required>
          </div>
          <div class="input-box">
            <span class="details">Branch</span>
            <input type="text" name="b"placeholder="Enter employee branch" required>
          </div>
          <div class="input-box">
            <span class="details">Role</span>
            <input type="text" name="role"placeholder="Enter employee Role" required>
          </div>
          <div class="input-box">
            <span class="details" >HOUSE NUMBER</span>
            <input type="text" name="hno"placeholder="Enter house number" required>
          </div>
          <div class="input-box">
            <span class="details">PIN</span>
            <input type="text" name="pin"placeholder="Enter pin" required>
          </div>
          <div class="input-box">
            <span class="details">STREET/LOCALITY</span>
            <input type="text" name="street"placeholder="Enter street/locality" required>
          </div>
          <div class="input-box">
            <span class="details">MANDAL</span>
            <input type="text" name="mandal"placeholder="Enter mandal" required>
          </div>
          <div class="input-box">
            <span class="details">DISTRICT</span>
            <input type="text" name="dist"placeholder="Enter district" required>
          </div>
          <div class="input-box">
            <span class="details">STATE</span>
            <input type="text" name="state"placeholder="Enter state" required>
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1">
          <input type="radio" name="gender" id="dot-2">
          <input type="radio" name="gender" id="dot-3">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Prefer not to say</span>
            </label>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Register">
        </div>
      </form>
    </div>
  </div>
<%
try{
	String fnm=request.getParameter("fnm");
	String mnm=request.getParameter("mnm");
	String lnm=request.getParameter("lnm");
	String eid=request.getParameter("eid");
	String ph=request.getParameter("ph");
	String b=request.getParameter("b");
	String pin=request.getParameter("pin");
	String hno=request.getParameter("hno");
	String role=request.getParameter("role");
	String street=request.getParameter("street");
	String mandal=request.getParameter("mandal");
	String dist=request.getParameter("dist");
	String state=request.getParameter("state");
	String fname=request.getParameter("fname");
	String fph=request.getParameter("fno");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gatepass","root","Narmada07@");
	Statement stmt=con.createStatement();
	stmt=con.createStatement();
	if(eid!=null){
	stmt.executeUpdate("insert into employee_details(emp_id,first_name,middle_name,last_name,branch,contact_no,role)values('"+eid+"','"+fnm+"','"+mnm+"','"+lnm+"','"+b+"','"+ph+"','"+role+"')");
	stmt.executeUpdate("insert into employee_address(emp_id,house_no,street,pin,mandal,district,state) values('"+eid+"','"+hno+"','"+street+"','"+pin+"','"+mandal+"','"+dist+"','"+state+"')");
	}		
	con.close();
}
catch(SQLException e)
{
	out.println(e);
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>