package com.java.team1.travelexperts;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.team1.travelexperts.TravelExpertsDB;

/**
 * Servlet implementation class Login
 */
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
		
		// Check if the user is already logged in
		if (request.getAttribute("customerId") != null) {
			request.getRequestDispatcher("Customer");  
		}
		
		String user = request.getParameter("userid");
		PreparedStatement stmt;
		try {
			Class.forName(this.getServletContext().getInitParameter("driver"));
			Connection conn = TravelExpertsDB.getConnection();
			stmt = conn.prepareStatement("SELECT CustFirstName, CustLastname, CustomerId FROM Customers WHERE CustFirstName='" + user + "'");
			ResultSet rs = stmt.executeQuery();
			if (rs.next())
			{
				if (rs.getString(2).equals(request.getParameter("password")))
				{
					// Valid login
					String custId = rs.getString(3);
					request.setAttribute("customerId", custId);
					RequestDispatcher rd = request.getRequestDispatcher("Customer");  
					rd.forward(request, response);
				}
				else
				{
					// Bad password
					HttpSession session = request.getSession(true);
					session.setAttribute("message", "Invalid Password");
					session.setAttribute("userid", request.getParameter("userid"));
					RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");  
					rd.forward(request, response);
				}
			}
			else
			{
				// No User ID
				HttpSession session = request.getSession(true);
				session.setAttribute("message", "Invalid UserId");
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");  
				rd.forward(request, response);
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
