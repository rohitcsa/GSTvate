package gstdemo;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
try{
	String a=request.getParameter("uname");
	String b=request.getParameter("email");
	String c=request.getParameter("pass");
	String d=request.getParameter("phone");
	String e=request.getParameter("city");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/gstdemo","root","2309");
	PreparedStatement pst=con.prepareStatement("insert into signin(name,email,password,phone,image)value(?,?,?,?,?)");
	pst.setString(1, a);
	pst.setString(2, b);
	pst.setString(3, c);
	pst.setString(4, d);
	pst.setString(5, e);
	pst.executeUpdate();
	response.sendRedirect("index.jsp");
	
}catch(Exception e)
{
	e.printStackTrace();
}
	}
}
