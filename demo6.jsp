<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
<%!String f,e,p; %>
<label><b>Registration Form</b></label></form><br><br>
First Name<input type="text" name="Karnati"><br>

 Email ID<input type="text" name="narmada.karnati07@gmail.com"><br>
 
 Password<input type="password"name="Narmada07@"><br>
 Married<input type="radio"name="married"checked>
 Un-married<input type="radio"name="married"><br><br>
 Gender<br>
 <input type="radio"name="gender">male
 <input type="radio"name="gender">female
 <input type="radio"name="gender">others<br>
 Certified in?<br>
 <input type="checkbox"name="c">C&DS<br>
 <input type="checkbox"name="c">java<br>
 <input type="checkbox"name="c">Mysql<br>
 <input type="submit"value="submit"><%--button tag --%>
 <%f=request.getParameter("Karnati");
 e=request.getParameter("narmada.karnati07@gmail.com");
 p=request.getParameter("Narmada07@");%>
  <% if(f!=null&&e!=null&&p!=null) 
	  out.print("Welcome to "+f); %> 

</form>
</body>
</html>