package com.java.team1.travelexperts;
import java.util.Date;

public class Booking {
	private int bookingId;
	private Date bookingDate;
	private String bookingNo;
	private String travelerCount;
	private int customerId;
	private String tripTypeId;
	private int packageId;
	
	public int getBookingId() {
		return bookingId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public Date getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}
	public String getBookingNo() {
		return bookingNo;
	}
	public void setBookingNo(String bookingNo) {
		this.bookingNo = bookingNo;
	}
	public String getTravelerCount() {
		return travelerCount;
	}
	public void setTravelerCount(String travelerCount) {
		this.travelerCount = travelerCount;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getTripTypeId() {
		return tripTypeId;
	}
	public void setTripTypeId(String tripTypeId) {
		this.tripTypeId = tripTypeId;
	}
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
}
