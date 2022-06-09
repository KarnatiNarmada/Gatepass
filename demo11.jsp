<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!int week=7;%>
<%switch(week){
case 1:
out.print("su");
break;
case 2:
out.print("mon");
break;
case 3:
out.print("tu");
break;
case 4:
out.print("wed");
break;
case 5:
out.print("thu");
break;
case 6:
out.print("fri");
break;
case 7:
out.print("sat");
break;
default:
out.print("other");
}
%> 
<%!int day=6;int i=1; %>
<% while(i<=day){
	if(i<=day){
	out.print("its weaknd"+i);
}
	i++;
}
%>
</body>
</html>