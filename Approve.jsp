
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link href="empcss.css" type="text/css" rel="stylesheet"/>
<style>
* {
  box-sizing: border-box;
  }
body 
{
  font-family: Arial, Helvetica, sans-serif;
}

.form-popup {
  display: none;
}


/* Style the header */
header 
{
  background-color: #666;
  /*opacity:0.7;*/
  background: rgba(0, 0, 0, 0.4);
  padding: 30px;
  text-align: center;
  font-size: 45px;
  color: white;
}

/* Container for flexboxes */
section 
{
background: rgba(0, 0, 0, 0.1);
  display: -webkit-flex;
  text-align: center;
  display: flex;
}

/* Style the navigation menu */
nav 
{
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 0.5;
  background: #ccc;
  padding: 20px;
  background: rgba(0, 0, 0, 0.2);
}

/* Style the list inside the menu */
nav ul 
{

  list-style-type: none;
  padding: 0;
}

/* Style the content */
article 
{
  -webkit-flex: 3;
  -ms-flex: 3;
  flex: 3;
  background-color: #f1f1f1;
  /*opacity:0.7;*/
  background: rgba(0, 0, 0, 0.1);
  padding: 50px;
}

.button1 {
  background-color: #4CAF50; /* Green */
}
.button2 {background-color: #f44336;} /* Red */ 

/* Responsive layout - makes the menu and the content (inside the section) sit on top of each other instead of next to each other */
@media (max-width: 600px) 
{
  section 
  {
    -webkit-flex-direction: column;
    flex-direction: column;
  }
}

</style>
</head>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<body>
<%
response.setHeader("Cache-control","no-cache");
response.setHeader("Cache-control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expire", 0);
String appemails=(String)session.getAttribute("emails");
/*if(emails==null)
{
    System.out.println(emails);
    response.sendRedirect("logout.jsp");
}
*/
%>
 <form action="./ServletApprove">

    <a href="logout.jsp"><img src="licon.jpg" height="35" width="35" align="right"></a>

             <p class="form_label"><h2>Welcome:<%out.println(appemails);%></h2></p>

                    <header>
                        <h3>Approval Authority Corner</h3>
                    </header>
                    <section>
                        <nav>
                            <ul>
                                <li>
                                    <button type="button" value="Get All Record"  class="open-button" onclick="openForm()" style="width:70px;
                                     height:40px;
                                     margin:5px; 
                                     border:none; 
                                     border-radius:2px; 
                                     font-size:17px; 
                                     font-weight:bold;">View</button>

                                     <button type="button" class="btn cancel" onclick="closeForm()" style="width:70px;
                                     height:40px; 
                                     margin:5px; 
                                     border:none; 
                                     border-radius:2px; 
                                     font-size:17px; 
                                     font-weight:bold;">Close</button>
                                </li>
                            </ul>
                        </nav>
                        <article>
                            <h1 style="color:white; font-size: 20px;">Travel Records</h1>
                            <div class="form-popup" id="myForm" style="height:200px;width:1180px;overflow:scroll;overflow-y:scroll;overflow-x:hidden;">

                            <table  style="border:black;color:white; font-family: Arial, Helvetica, sans-serif; font-size:10px; font-weight:bold;" border="5" cellpadding="5" cellspacing="1" >
                            <tr>
                            <td>ID</td>
                            <td>NAME</td> 
                            <td>FUNC</td> 
                            <td>MANAGER</td> 
                            <td>PURPOSE</td> 
                            <td>PNAME</td> 
                            <td>MEETING</td> 
                            <td>REQDATE</td> 
                            <td>STARTDATE</td> 
                            <td>ENDDATE</td> 
                            <td>SOURCE</td> 
                            <td>DEST</td> 
                            <td>CDATE</td>
                            <td>CID</td> 
                            <td>REMARKS</td>
                            <td>STATUS</td>
                            <td>CHECK</td> 
                            </tr>
                            <% 
                            try
                            {
                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","up78cp5317");
                                //String url="jdbc:oracle:thin:@localhost:1521:xe";
                                //String username="system";
                                //String password="up78cp5317";
                                String query="select * from APPROVAL";

                                Statement stmt=con.createStatement();

                                ResultSet rs=stmt.executeQuery(query);

                                while(rs.next())
                                {
                            %>
                                <tr>
                                <td><%=rs.getString("ID") %></td>
                                <td><%=rs.getString("FULLNAME") %></td>
                                <td><%=rs.getString("FUNCTION") %></td>
                                <td><%=rs.getString("RESOURCEMANAGER") %></td>
                                <td><%=rs.getString("PURPOSEOFTRAVEL") %></td>
                                <td><%=rs.getString("PROJECTNAME") %></td>
                                <td><%=rs.getString("MEETINGDETAILS") %></td>
                                <td><%=rs.getString("REQUESTDATE") %></td>
                                <td><%=rs.getString("TRAVELSTARTDATE") %></td>
                                <td><%=rs.getString("TRAVELENDDATE") %></td>
                                <td><%=rs.getString("TRAVELSOURCE") %></td>
                                <td><%=rs.getString("TRAVELDESTINATION") %></td>
                                <td><%=rs.getString("CONCURDATE") %></td>
                                <td><%=rs.getString("CONCURID") %></td>
                                <td><%=rs.getString("ANYREMARKS") %></td>
                                <td><%=rs.getString("STATUS") %></td>
                                <td><button type="button" class="button1" value="approve" onclick="location.href='ServletApprove'" style="width:60px;
                                     height:20px; 
                                     border:none; 
                                     border-radius:6px; 
                                     font-size:10px; 
                                     font-weight:bold;">Approve</button> 


                                     <button type="button" class="button2" value="reject"  onclick="location.href='ServletReject'" style="width:60px;
                                     height:20px; 
                                     border:none; 
                                     border-radius:6px; 
                                     font-size:10px; 
                                     font-weight:bold;">Reject</button>

                                </td>   

                                </tr>

                            <%
                                }
                            %>
                            <%
                            rs.close();
                            stmt.close();
                            con.close();
                            }
                            catch(Exception e)
                            {
                                 e.printStackTrace();
                            }
                            %>          
                            </table>        
                            </div>
                            </article>

                <script>
                    function openForm() 
                    {
                        document.getElementById("myForm").style.display = "block";
                    }

                    function closeForm() 
                    {
                        document.getElementById("myForm").style.display = "none";
                    }

                </script>                           
            </section>
        </form>
    </body>
</html>