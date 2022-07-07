import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize=99999999999L)
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int productid=Integer.parseInt(req.getParameter("productid"));
		String productname=req.getParameter("productname");
		float points=Float.parseFloat(req.getParameter("points"));
		Part part=req.getPart("image");
		InputStream is=part.getInputStream();
		
		HttpSession hs=req.getSession();
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
			PreparedStatement ps=con.prepareStatement("update products set pname=?,points=?,image=? where pid=?");
			ps.setString(1, productname);
			ps.setFloat(2, points);
			ps.setBlob(3, is);
			ps.setInt(4, productid);
			ps.execute();
			PrintWriter out=resp.getWriter();
			hs.setAttribute("msg", "Product Updated Successfully!!!");
			hs.setAttribute("pagename", "products.jsp");
			hs.setAttribute("type", "success");
			resp.sendRedirect("popup.jsp");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}}
	
	}

