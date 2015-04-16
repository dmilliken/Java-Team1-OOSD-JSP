<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="description" content="SAIT Fall 2014 Object-Oriented Software Development Project #3 (JAVA, JSP Servlets, jQuery)" />
    <meta name="author" content="John Nguyen" />
	
	<title>Travel Experts Inc. | Customer Profile</title>
	
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        
        <!-- JavaScript -->
        <script type='text/javascript' src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        
        <!-- Stylesheets -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/transitions.css" />
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css" />
        <link rel="stylesheet" type="text/css" href="css/responsive.css" />
        
        <!-- Google Font Code -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,400|Ek+Mukta:400,600,700|Sintony:700' rel='stylesheet' type='text/css' />
    </head>
    <body>
        <div class="header_wrap">
            <div class="header">
            <div class="logo"><a href="Index"><img src="Images/logo.png" class="img-responsive" /></a></div>
            <div class="nav" id="dropmenu">
                <ul>
                    <li class="home"><a href="Index"><i class="fa fa-home fa-lg"></i></a></li>
                    <li><a href="#">&nbsp;<i class="fa fa-plane"></i> &nbsp;Vacations&nbsp;</a></li>
                    <li class='logout'><a href='Logout'><i class='fa fa-sign-out'></i> &nbsp;Logout</a></li>
                    <li><a href="#">&nbsp;<i class="fa fa-info-circle"></i> &nbsp;About Us&nbsp;</a></li>
                </ul>
            </div>
            <div class="nav_mobile">
               <i class="fa fa-bars fa-2x"></i>
            </div>
        </div>
        </div>
        <div class="slider" style="background-image: url(Images/slider01.jpg);"> <!-- Slider Image -->
             <div class="welcome">
                 <h1><strong>Profile <i class='fa fa-angle-double-right'></i> ${cust.custFirstName}</strong></h1>
            </div>      
        </div>
		<div class='container-fluid'> <!-- Start of Container -->
            <!-- Main body begins here -->
            <div id='body'>
                    <div class='col-xs-12 col-sm-7 bookings style' style='margin-right: 20px;'>
                    	<span class='print_button' style='float:right; cursor: pointer;'><i class="fa fa-print fa-lg"></i> Print</span>
                        <div class='current_bookings'>
                            <h3><i class='fa fa-bookmark'></i> &nbsp;<strong>Current Bookings</strong></h3>
                            <table class="sort">
                                <thead class='booking_title_main'>
                                <tr>
                                    <th><i class="fa fa-star-o"></i> &nbsp;<strong>Booking No.</strong></th>
                                    <th><i class="fa fa-calendar"></i> &nbsp;<strong>Start Date</strong></th>
                                    <th><i class="fa fa-calendar"></i> &nbsp;<strong>End Date</strong></th>
                                    <th><i class="fa fa-suitcase"></i> &nbsp;<strong>Package</strong></th>
                                </tr>
                                </thead>
                                <tr>
                                <!-- These cells will be dynamically populated with any of the customers current bookings (ie. the start date is later than today's date) //-->
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>    
                        <hr class='style-one' />
                        <div class='previous_bookings'>
                        <h3><i class='fa fa-bookmark-o'></i> &nbsp;<strong>Previous Bookings</strong></h3>
						<table class='sort' id='print'>
                            <thead class='booking_title_main'>
                                <tr>
                                    <th style='width: 19%;'><i class="fa fa-star-o"></i> &nbsp;<strong>Booking No.</strong></th>
                                    <th style='width: 23%;'><i class="fa fa-clock-o"></i> &nbsp;<strong>Booking Date</strong></th>
                                    <th style='width: 46%;'><i class="fa fa-suitcase"></i> &nbsp;<strong>Package</strong></th>
                                    <th style='width: 3%;'></th>
                                </tr>
                            </thead>
                            <tbody id='detail'>
                            <fmt:setLocale value="en_US"/>
                            <c:forEach items="${booking}" var="booking" varStatus="i">
                                <tr>
                                    <td colspan='4' style='border-bottom: 1px solid #ccc;'>
                                    <table class='booking_item' rules='all'>
                                        <thead>
                                          <tr class='booking_title'>
                                             <th style='width: 19%;'><i class="fa fa-star"></i> &nbsp;<c:out value="${booking.bookingNo}" /></th>
                                             <th style='width: 23%;'><i class="fa fa-clock-o"></i> &nbsp;<fmt:formatDate value="${booking.bookingDate}" pattern="MMM dd, yyyy"/></th>
                                             <th style='width: 46%;'><i class="fa fa-suitcase"></i> &nbsp;<c:out value="${pkg[i.index].pkgName}" /></th>
                                             <th style='width: 3%;'><i class='fa fa-ellipsis-v fa-lg'></i></th>
                                          </tr>
                                        </thead>
                                        <tbody class='parent'>
                                          <tr class='booking_details'>
                                              <td colspan='4'>
                                                  <div class='booking_details_trip' style='float: left; margin-bottom: 14px; width: 48%;'>
                                                    <h4><i class="fa fa-calendar"></i> &nbsp;<strong>Trip Start:</strong></h4>
                                                    <div style='font-size: 1.4em; font-weight: 600; color: red; padding-left: 8px;'><fmt:formatDate value="${pkg[i.index].pkgStartDate}" pattern="MMMM dd, yyyy"/></div>
                                                  </div>
                                                  <div class='booking_details_trip' style='float: right; margin-bottom: 14px; width: 48%;'>
                                                    <h4><i class="fa fa-calendar"></i> &nbsp;<strong>Trip End:</strong></h4>
                                                    <div style='font-size: 1.4em; font-weight: 600; color: red; padding-left: 8px;'><fmt:formatDate value="${pkg[i.index].pkgEndDate}" pattern="MMMM dd, yyyy"/></div>
                                                  </div>
                                                  <div style='clear: both;'>
                                                    <h4><i class="fa fa-quote-left"></i> &nbsp;<strong>Description:</strong></h4>
                                                    <div style='padding-left: 8px;'><c:out value="${pkg[i.index].pkgDesc}" /></div>
                                                  </div>
                                                  <div style='width: 48%; float: left;'>
                                                    <span style='padding-right: 6px;'><h4><i class="fa fa-usd"></i> &nbsp;<strong>Price:</strong></h4><div style='padding-left: 8px; font-weight: 600; font-size: 1.2em;'><fmt:formatNumber type="currency" value="${pkg[i.index].pkgBasePrice}" /></div></span>
                                                  </div>
                                                  <div style='width: 48%; float: right;'>
                                                    <span style='padding-right: 6px;'><h4><i class="fa fa-users"></i> &nbsp;<strong>Number of Guests:</strong></h4><div style='padding-left: 8px; font-weight: 600; font-size: 1.2em;'><c:out value="${booking.travelerCount}" /></div></span>
                                                  </div>
                                              </td>
                                          </tr>
                                        </tbody>
                                    </table>
                                    </td>
                                </tr>
                   		    </c:forEach> 
                            </tbody>
						</table>       
                        </div> 
                    </div>
                    <div class='col-xs-12 col-sm-4 customer style'>
                        <h3><i class='fa fa-user'></i> &nbsp;<strong>Customer Details</strong></h3><hr class='style-one' />
                        <img src='Images/customers/${cust.customerId}.jpg' class='img-responsive' style='width: 300px; margin: 0 auto;' /><br>
	                        <table class='book_prof_add'>
	                            <tr>
	                                <td colspan='2'>
	                                    <h3><strong>${cust.custFirstName} ${cust.custLastName}</strong></h3>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td rowspan='3' style='vertical-align: top; text-align: center;'><i class='fa fa-home fa-lg'></i></td>
	                                <td>&nbsp;<strong>${cust.custAddress} </strong></td>
	                            </tr>
	                            <tr>
	                                <td>&nbsp;<strong>${cust.custCity}, ${cust.custProv}, ${cust.custCountry}</strong></td>
	                            </tr>
	                            <tr>
	                                <td>&nbsp;<strong>${cust.custPostal} </strong><br><br></td>
	                            </tr>
	                        </table>
                            <table class='book_prof_num'>
                            <tr>
                                <td style='width: 150px;'><i class="fa fa-envelope-o"></i> &nbsp;<strong>Email:</strong></td>
                                <td>${cust.custEmail}</td>
                            </tr><tr>
                                <td><i class="fa fa-phone"></i> &nbsp;<strong>Home Phone:</strong></td>
                                <td>${cust.custHomePhone}</td>
                            </tr><tr>
                                <td><i class="fa fa-phone"></i> &nbsp;<strong>Business Phone:</strong></td>
                                <td>${cust.custBusPhone}</td>
                            </tr><tr>
                                <td><i class="fa fa-user"></i> &nbsp;<strong>Customer ID:</strong></td>
                                <td>${cust.customerId}</td>
                            </tr>
                        </table>
                    </div>
            </div> <!-- End of body -->
        </div> <!-- End of Container -->
        <div id="footer">
            <p>Copyright &copy; 2014 Travel Experts Inc. All rights reserved.</p>
            <a href="index.php">Home</a> | <a href="#">Privacy Policy</a><br><br>
            <span class="socialmedia"><img src="Images/icons/fb_icon.png" /> <img src="Images/icons/twitter_icon.png" /> <img src="Images/icons/linkedin_icon.png" /> <img src="Images/icons/googleplus_icon.png" /></span>
        </div>
        <a href="#top" class="top"><i class="fa fa-arrow-up fa-lg"></i></a>
    </body>
</html>

