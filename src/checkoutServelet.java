

import java.io.IOException;
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

/**
 * Servlet implementation class checkoutServelet
 */
@WebServlet("/checkoutServelet")
public class checkoutServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkoutServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		int uid = ((model)session.getAttribute("m")).getUid();
		
		
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
			PreparedStatement ps2=con.prepareStatement("select sum(total_points) as count from cart where status='uncollected' and uid=?");
			ps2.setInt(1, uid);
		
			ResultSet rs=ps2.executeQuery();
			if(rs.next()) {
				HttpSession hs=request.getSession();
				int c=Integer.parseInt(rs.getString("count"));
				hs.setAttribute("count",c);
			}
			
			PreparedStatement ps1=con.prepareStatement("update cart set status='collected' where uid=?");
			ps1.setInt(1, uid);
		
			
			ps1.executeUpdate();
			response.sendRedirect("invoice.jsp");
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
