package gstdemo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class listsalesinvoice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public listsalesinvoice() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gstdemo","root","2309");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from listsalesinvoice");
			
			out.println("<table>");
			while(rs.next())
			
				out.println(" <tr>"
						+" <td>"+rs.getString("invoiceid")+"</td>"
						+" <td>"+rs.getString("customer")+"</td>"
						+" <td>"+rs.getString("created")+"</td>"
					    +" <td>"+rs.getString("duedate")+"</td>"
						+" <td>"+rs.getString("totalamount")+"</td>"
						+" </tr>");
					
			out.println("</table>");
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	

	}

	
	

}
