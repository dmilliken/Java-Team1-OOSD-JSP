package com.java.team1.travelexperts;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class profile
 */

public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 102831973239L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = TravelExpertsDB.getConnection();
		PreparedStatement stmt;
		Customer c = new Customer();
		try {
			stmt = conn.prepareStatement("Select * from Customers where CustomerId=104");
			//stmt.setInt(1,104);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				c.setCustomerId(rs.getInt("CustomerId"));
				c.setCustFirstName(rs.getString("CustFirstName"));
				c.setCustLastName(rs.getString("CustLastName"));
				c.setCustAddress(rs.getString("CustAddress"));
				c.setCustCity(rs.getString("CustCity"));
				c.setCustProv(rs.getString("CustProv"));
				c.setCustPostal(rs.getString("CustPostal"));
				c.setCustCountry(rs.getString("CustCountry"));
				c.setCustHomePhone(rs.getString("CustHomePhone"));
				c.setCustBusPhone(rs.getString("CustBusPhone"));
				c.setCustEmail(rs.getString("CustEmail"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("cust",c);
		RequestDispatcher rd = request.getRequestDispatcher("customer.jsp");  
		rd.forward(request, response);  
	}

}
