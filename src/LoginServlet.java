import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String checkbox=req.getParameter("rememberme");
		model m=new model();
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
			PreparedStatement ps=con.prepareStatement("select * from users where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
		
			resp.setContentType("text/html");
			PrintWriter out=resp.getWriter();
			
			HttpSession hs=req.getSession();
			
			if(rs.next())
			{
				int id=rs.getInt("uid");
				m.setUid(id);
				hs.setAttribute("m",m);
				hs.setAttribute("role", rs.getString("role"));
				hs.setAttribute("uid", rs.getInt("uid"));
				hs.setAttribute("full_name", rs.getString("full_name"));
				
			
				if(checkbox!=null)
				{
					Cookie ck1=new Cookie("un", username);
					Cookie ck2=new Cookie("pwd", password);
					Cookie ck3=new Cookie("check", "rememberme");
				
					ck1.setMaxAge(60*60*60*60);
					ck2.setMaxAge(60*60*60*60);
					ck3.setMaxAge(60*60*60*60);
				
					resp.addCookie(ck1);
					resp.addCookie(ck2);
					resp.addCookie(ck3);
				}
				else
				{
					Cookie ck1=new Cookie("un", "");
					Cookie ck2=new Cookie("pwd", "");
					Cookie ck3=new Cookie("check", "");
					
					ck1.setMaxAge(-1);
					ck2.setMaxAge(-1);
					ck3.setMaxAge(60*60*60*60);
					
					resp.addCookie(ck1);
					resp.addCookie(ck2);
					resp.addCookie(ck3);
				}
				
				hs.setAttribute("msg", "Login Successfully!!!");
				hs.setAttribute("pagename", "products.jsp");
				hs.setAttribute("type", "success");
				resp.sendRedirect("popup.jsp");
			}
			else
			{
				hs.setAttribute("msg", "Incorrect username password");
				hs.setAttribute("pagename", "login.jsp");
				hs.setAttribute("type", "error");
				resp.sendRedirect("popup.jsp");
			}
		}
		
		
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}
}
