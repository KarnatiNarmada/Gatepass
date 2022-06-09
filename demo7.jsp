<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<
<form>
<label><b>Registration Form</b></label></form><br><br>
First Name<input type="text" name="Karnati"><br>

 Email ID<input type="text" name="narmada.karnati07@gmail.com"><br>
 
 Password<input type="password"name="Narmada07@"><br>
 Married<input type="radio"name="married"checked>
 Un-married<input type="radio"name="married"><br><br>
 Gender<br>
 <input type="radio"name="gender" value="male">male
 <input type="radio"name="gender" value="female">female
 <input type="radio"name="gender"value="others">others<br>
 <button type="button" onclick="dispalyRadioValue()">Submit</button>
 <br>
 <div id="result"></div>
 <script>
 function dispalyRadioValue(){
	 var ele=document.getElementsByName('gender');
	 for(ele[i].checked){
		 document.getElementById("result").InnerHTML="Gender:"+ele[i].Value;
	 }
 }
</script><br>
Certified in?<br>
 <input type="checkbox"name="c">C&DS<br>
 <input type="checkbox"name="c">java<br>
 <input type="checkbox"name="c">Mysql<br>
 <form>
</body>
</html>