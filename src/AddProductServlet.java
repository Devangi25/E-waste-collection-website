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
import javax.servlet.http.Part;


@MultipartConfig(maxFileSize=99999999999L)
@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productname=request.getParameter("pname");
		float points=Float.parseFloat(request.getParameter("points"));
		Part part=request.getPart("image");
		InputStream is=part.getInputStream();
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
			PreparedStatement ps=con.prepareStatement("insert into products (pname,points,image) values(?,?,?)");
			ps.setString(1, productname);
			ps.setFloat(2, points);
			ps.setBlob(3, is);
			ps.executeUpdate();
			PrintWriter out=response.getWriter();
			out.println("<script>"
					+ "alert('Product Added Successfully!!!');"
					+ "window.location='addproducts.jsp'"
					+ "</script>");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
