package sortrollno;
import request.connections;
import searchrecord.studentdetails;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;

public class Sorting {
			public int   sort() {
				Connection con= connections.Establish();
				if(con!=null) {
					Statement st=con.createStatement();
					ResultSet rs;
			try {
				rs=st.executeQuery("call sortbyrollno()");
			}
			catch(SQLException e) {
				System.out.print(e);
			}
			
			}
					else {
						System.out.println("Connection not established");
						
					}
	}
			}