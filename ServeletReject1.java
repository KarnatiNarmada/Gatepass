package EBlock;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import request.connections;

@WebServlet("/ServletReject1")
public class ServeletReject1 extends HttpServlet 
{
    private static final long serialVersionUID = 1L;
    public ServeletReject1() 
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
            stmt.executeUpdate("UPDATE student_request SET EBlock_status='rejected' WHERE roll_no='"+id+"'");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('your submission has been successfully rejected');");
            out.println("location='Eblockpage.jsp';");
            out.println("</script>");                   
        }
        catch (Exception e2) 
        {

        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {

    }
}