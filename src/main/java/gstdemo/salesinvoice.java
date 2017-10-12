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


public class salesinvoice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public salesinvoice() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gstdemo","root","2309");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from salesinvoice");
			
			out.println("<table>");
			while(rs.next())
			
				out.println(" <tr>"
						+" <td>"+rs.getString("billno")+"</td>"
						+" <td>"+rs.getString("date")+"</td>"
						+" <td>"+rs.getString("partyname")+"</td>"
					    +" <td>"+rs.getString("place")+"</td>"
						+" <td>"+rs.getString("material")+"</td>"
								+" <td>"+rs.getString("qty")+"</td>"
										+" <td>"+rs.getString("uom")+"</td>"
												+" <td>"+rs.getString("rate")+"</td>"
														+" <td>"+rs.getString("amount")+"</td>"
																+" <td>"+rs.getString("gsttype")+"</td>"
																		+" <td>"+rs.getString("cgst")+"</td>"
																				+" <td>"+rs.getString("igst")+"</td>"
																						+" <td>"+rs.getString("sgst")+"</td>"
						+" </tr>");
					
			out.println("</table>");
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	

	}

	
	

}
