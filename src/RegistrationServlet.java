import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String full_name=req.getParameter("full_name");
		String username=req.getParameter("username");
		String email=req.getParameter("email");
		String city=req.getParameter("city");
		String password=req.getParameter("pass");
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
			PreparedStatement ps=con.prepareStatement("insert into users (full_name,username,email,city,password,role) values(?,?,?,?,?,?)");
			ps.setString(1, full_name);
			ps.setString(2, username);
			ps.setString(3, email);
			ps.setString(4, city);
			ps.setString(5, password);
			ps.setString(6, "user");
			ps.executeUpdate();

			Email e=new Email(email, "Registered Sucessfully!!!", "Welcome to E-waste collection");
		e.sendEmail();
			
			PrintWriter out=resp.getWriter();
			out.println("<script>"
					+ "alert('Registered Successfully!!!');"
					+ "window.location='login.jsp'"
					+ "</script>");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}
}
