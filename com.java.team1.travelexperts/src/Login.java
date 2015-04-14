

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.team1.travelexperts.TravelExpertsDB;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String user = request.getParameter("userid");
			//System.out.println(this.getServletContext().getInitParameter("driver"));
			Class.forName(this.getServletContext().getInitParameter("driver"));
			Connection conn = TravelExpertsDB.getConnection();
			Statement stmt = conn.createStatement();
			String sql = "select CustFirstName, CustLastname, CustomerId FROM Customers where CustFirstName='"
					+ user + "'";
			//System.out.print(sql);
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next())
			{
				if (rs.getString(2).equals(request.getParameter("password")))
				{
					//valid login
					String custId = rs.getString(3);
					request.setAttribute("customerId", custId);
					System.out.println(custId);
					System.out.println("login success");
					RequestDispatcher rd = request.getRequestDispatcher("Customer");  
					rd.forward(request, response);
					//response.sendRedirect("customer.jsp");
				}
				else
				{
					//bad password
					HttpSession session = request.getSession(true);
					session.setAttribute("message", "Invalid Password");
					session.setAttribute("userid", request.getParameter("userid"));
					RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");  
					rd.forward(request, response);
					//response.sendRedirect("Login.jsp");
				}
			}
			else
			{
				//bad userid
				HttpSession session = request.getSession(true);
				session.setAttribute("message", "Invalid UserId");
				System.out.println("Bad login Id");
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");  
				rd.forward(request, response);
				//response.sendRedirect("Login.jsp");
				
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			log("Driver not found", e);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			log("Can't connect to database", e);
		}
	}

}
