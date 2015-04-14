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
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Customer Servlet Post Fired");
		Connection conn = TravelExpertsDB.getConnection();
		PreparedStatement stmt;
		Customer c = new Customer();
        Booking b = new Booking();
		Package p = new Package();
		try {
			String user = (String) request.getAttribute("customerId");
			if (user != null) {
				System.out.println(user);
				stmt = conn.prepareStatement("Select * from Customers where CustomerId='"
						+ user + "'");
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
                    b.setBookingId(rs.getInt("BookingId"));
                    b.setBookingDate(rs.getDate("BookingDate"));
                    b.setBookingNo(rs.getString("BookingNo"));
                    b.setTravelerCount(rs.getString("TravelerCount"));
                    b.setCustomerId(rs.getInt("CustomerId"));
                    b.setTripTypeId(rs.getString("TripTypeId"));
                    b.setPackageId(rs.getInt("PackageId"));
                    p.setPkgDesc(rs.getString("PkgDesc"));
                    p.setPkgName(rs.getString("PkgName"));
				}
				request.setAttribute("cust",c);
                request.setAttribute("booking",b);
                request.setAttribute("pkg",p);      
				RequestDispatcher rd = request.getRequestDispatcher("customer.jsp");  
				rd.forward(request, response);
				//response.sendRedirect("customer.jsp");

			}
			else{
				//request.setAttribute("cust",c);
				RequestDispatcher rd = request.getRequestDispatcher("Login");  
				rd.forward(request, response);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		//response.sendRedirect("customer.jsp");
	}

}
