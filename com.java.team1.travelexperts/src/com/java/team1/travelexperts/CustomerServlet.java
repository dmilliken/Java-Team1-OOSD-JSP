package com.java.team1.travelexperts;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
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
		String user = (String) request.getAttribute("customerId");
		if (user == null)
			user = "143";
		
		// To do: Split into two try statements so the customer object is not overwritten with the same information multiple times
		try {
			stmt = conn.prepareStatement("SELECT * FROM customers WHERE CustomerId='" + user + "'");
			//stmt.setInt(1,143);
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
		
		List<Booking> bookingList = new ArrayList<Booking>();
		List<Package> packageList = new ArrayList<Package>();
		try {
			stmt = conn.prepareStatement("SELECT * FROM packages,bookings b,bookingdetails bd WHERE b.BookingId=bd.BookingId AND b.CustomerId='" + user + "'");
			//stmt.setInt(1,143);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				Booking b = new Booking();
				Package p = new Package();
				b.setBookingId(rs.getInt("BookingId"));
				b.setBookingDate(rs.getDate("BookingDate"));
				b.setBookingNo(rs.getString("BookingNo"));
				b.setTravelerCount(rs.getString("TravelerCount"));
				b.setCustomerId(rs.getInt("CustomerId"));
				b.setTripTypeId(rs.getString("TripTypeId"));
				b.setPackageId(rs.getInt("PackageId"));
				p.setPkgDesc(rs.getString("PkgDesc"));
				p.setPkgName(rs.getString("PkgName"));
				p.setPkgStartDate(rs.getDate("PkgStartDate"));
				p.setPkgEndDate(rs.getDate("PkgStartDate"));
				p.setPkgName(rs.getString("PkgName"));
				bookingList.add(b);
				packageList.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("cust",c);
		request.setAttribute("booking",bookingList);
		request.setAttribute("pkg",packageList);
		RequestDispatcher rd = request.getRequestDispatcher("customer.jsp");  
		rd.forward(request, response);  
	}
	
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
