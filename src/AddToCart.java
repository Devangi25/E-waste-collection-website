import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddToCart() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		int pid=Integer.parseInt(request.getParameter("pid"));
		float points=Float.parseFloat(request.getParameter("points"));
		int uid = ((model)session.getAttribute("m")).getUid();
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
			PreparedStatement ps1=con.prepareStatement("select *from cart where uid=? and pid=? and status='uncollected'");
			ps1.setInt(1, uid);
			ps1.setInt(2,pid);
			
			ResultSet rs=ps1.executeQuery();
			if(rs.next()) {
				int qty=rs.getInt("qty")+1;
				PreparedStatement pst=con.prepareStatement("update cart set qty=? where uid=? and pid=? and status='uncollected'");
				pst.setInt(1,qty);
				pst.setInt(2, uid);
				pst.setInt(3,pid);
				pst.executeUpdate();
				PrintWriter out=response.getWriter();
				out.println("<script>"
						+ "alert('Product Updated Successfully!!!');"
						+ "window.location='cart.jsp'"
						+ "</script>");
				
			}
			else {
			PreparedStatement ps=con.prepareStatement("insert into cart (pid,product_points,qty,uid,status) values(?,?,?,?,?)");
			ps.setFloat(1, pid);
			ps.setFloat(2, points);
			ps.setInt(3, 1);
			ps.setInt(4, uid);
			ps.setNString(5,"uncollected");
			ps.executeUpdate();
			PrintWriter out=response.getWriter();
			out.println("<script>"
					+ "alert('Product Added Successfully!!!');"
					+ "window.location='cart.jsp'"
					+ "</script>");
			}
			
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
