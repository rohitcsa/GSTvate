package gstdemo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public signin() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
	
			
			String pass= request.getParameter("pass");
			
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection com=DriverManager.getConnection("jdbc:mysql://localhost:3306/gstdemo","root","2309");
			Statement stmt=com.createStatement();
			ResultSet rs=stmt.executeQuery("select * from signin where password='"+pass+"'");
		if(rs.next()){
				response.sendRedirect("index.html");
			}
				else{
					response.sendRedirect("index.jsp");
			}
		}catch(Exception e){
	e.printStackTrace();
	}
}
}
