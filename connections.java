package request;
import  java.sql.Connection;
import  java.sql.Statement; 
import  java.sql.ResultSet;
import java.sql.DriverManager;
 import java.sql.Driver.*;
import  java.sql.SQLException;
import  javax.sql.*;
import  java.util.*; 
import  java.lang.*;
import java.lang.Class;
public class connections {
	public  static Connection Establish() throws SQLException {
		Connection conn=null; 
		try
		 {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gatepass","root","Narmada07@");
			
		 }
		catch(SQLException e)
		 {
			 System.out.println("connection not established");	
			
		 }
		 catch(ClassNotFoundException ex)
		 {

			 	System.out.println(ex);
			 	ex.printStackTrace();
		 }
		 return conn;
		 	
	 }
	public static boolean closeConnection(Connection obj) {
		try
	      {
	        if(obj != null)
	         obj.close();  
	      } 
		catch (SQLException e)
		{
	        return false;
		}
		return true;
	}
}
