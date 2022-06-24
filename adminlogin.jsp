<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
*{
  margin: 20px;
  padding:0px;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(135deg, #02aab0,#00cdac);
}
.header {
  padding: 2px;
  text-align: center;
  background: #1abc9c;
  color: white;
  font-size: 30px;
}
</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style1.css">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="title">Welcome Admin!!</div>
<div class="header">
  <h1>HOME</h1>
  <p><h5>logout</h5></p>
</div>
<form action="studentReg.jsp" method="post">
<div class="button">
          <input type="submit" value="STUDENT REGISTRATION">
        </div>
</form>
<form action="student_modify.jsp" method="post">
<div class="button">
          <input type="submit" value="STUDENT DETAILS MODIFICATION">
        </div>
</form>
<form action="StudentDel.jsp" method="post">
<div class="button">
          <input type="submit" value="STUDENT RECORD DELETION">
        </div>
</form>
<form action="sortbyrollnoandbranch.jsp" method="post">
<div class="button">
          <input type="submit" value="ALL STUDENT RECORDS">
        </div>
</form>
<form action="search.jsp" method="post">
<div class="button">
          <input type="submit" value="SEARCH A STUDENT RECORD">
        </div>
</form>
<form action="empReg.jsp" method="post">
 <div class="button">
          <input type="submit" value="EMPLOYEE REGISTRATION">
        </div>     
</form>
<form action="employee_modify.jsp" method="post">
<div class="button">
          <input type="submit" value="EMPLOYEE DETAILS MODIFICATION">
        </div>
</form>
<form action="EmpDel.jsp" method="post">
<div class="button">
          <input type="submit" value="EMPLOYEE RECORD DELETION">
        </div>
</form>
</div>
</body>
</html>