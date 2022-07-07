
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

/**
 * Servlet implementation class forgotServelet
 */
@WebServlet("/forgotServelet")
public class forgotServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgotServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
String email = request.getParameter("email");
        
        PrintWriter out = response.getWriter();
        boolean isEmailValid=false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
            PreparedStatement pst = conn.prepareStatement("Select password from users where email=? ");
            pst.setString(1, email);
          
            ResultSet rs = pst.executeQuery();
            HttpSession session = request.getSession(false);
           
            if (rs.next()) {
                if (rs.getString("email").equals(email)) {
                    isEmailValid=true;
                                     }
                            }if(isEmailValid){
                session.setAttribute("Email", email);
                response.sendRedirect("Password.jsp");
            
            }else 
              response.sendRedirect("ErrorPage.jsp");
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
