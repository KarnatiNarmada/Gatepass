package hod;
import java.sql.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import request.connections;
@WebServlet("/ServletApprove")
public class ServeletApprove extends HttpServlet 
{
    private static final long serialVersionUID = 1L;
    public ServeletApprove() 
    {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        PrintWriter out=response.getWriter();
        //jdbc code for connectivity with oracle database.
        try
        {  
        	Connection con=connections.Establish();
            Statement stmt=con.createStatement();  
            String id = request.getParameter("ID");
            stmt.executeUpdate("UPDATE student_request SET HOD_status='approved' WHERE roll_no='"+id+"'");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('your submission has been successfully approved');");
            out.println("location='HODpage.jsp';");
            out.println("</script>"); 
            //String sql = "UPDATE APPROVAL SET STATUS='approved' WHERE EMAIL='"+EMAIL+"'";
            //stmt.executeUpdate(sql);
            //out.close();
            //stmt.executeUpdate("UPDATE APPROVAL SET STATUS='approved' WHERE EMAIL='e'");                  
        }
        catch (Exception e2) 
        {

        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {

    }
}