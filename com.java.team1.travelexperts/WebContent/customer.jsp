<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="description" content="SAIT Fall 2014 Object-Oriented Software Development Project #3 (JAVA, JSP Servlets, jQuery)" />
    <meta name="author" content="John Nguyen" />
    <title>Travel Experts Inc.</title>
	
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        
        <!-- JavaScript -->
        <script language="javascript" type="text/javascript" src="js/default.js"></script>
        <script type='text/javascript' src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        
        <!-- Stylesheets -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/transitions.css" />
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css" />
        <link rel="stylesheet" type="text/css" href="css/responsive.css" />
        
        <!-- Google Font Code -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,400|Ek+Mukta:400,600,700|Sintony:700' rel='stylesheet' type='text/css' />
    </head>
    <body>
        <div class="header_wrap">
            <div class="header">
            <div class="logo"><a href="index.php"><img src="Images/logo.png" class="img-responsive" /></a></div>
            <div class="nav" id="dropmenu">
                <ul>
                    <li class="home"><a href="#"><i class="fa fa-home fa-lg"></i></a></li>
                    <li><a href="#">&nbsp;<i class="fa fa-plane"></i> &nbsp;Vacations&nbsp;</a></li>
                    <li><a href="#">&nbsp;<i class="fa fa-info-circle"></i> &nbsp;About Us&nbsp;</a></li>
                </ul>
            </div>
            <div class="nav_mobile" onclick="dropMenu('dropmenu');">
               <i class="fa fa-bars fa-2x"></i>
            </div>
        </div>
        </div>
        <div class="slider" style="background-image: url(Images/slider01.jpg);"> <!-- Slider Image -->
             <div class="welcome">
                 <h1><strong>Profile <i class='fa fa-angle-double-right'></i> ${cust.custFirstName}</strong></h1>
            </div>      
        </div>
        <div>
            <a href="#help" class="help"><i class="fa fa-question-circle fa-lg"></i></a>
        </div>
        <div>
            <a href="#lang" class="lang" onclick="dropMenu('flags');"><img src="Images/flags/Canada.png" style="margin-right: 10px;" /><i class="fa fa-caret-down" /></a>
        </div>
        <div class="lang_menu" id="flags" onClick="document.getElementById('flags').style.display='none';">
            <ul>
                <li><img src="Images/flags/Canada.png" /> <strong>EN</strong></li>
                <li><img src="Images/flags/France.png" /> <strong>FR</strong></li>
                <li><img src="Images/flags/Germany.png" /> <strong>GE</strong></li>
                <li><img src="Images/flags/Japan.png" /> <strong>JA</strong></li>
                <li><img src="Images/flags/China.png" /> <strong>CN</strong></li>
                <li><img src="Images/flags/Brazil.png" /> <strong>BP</strong></li>
                <li><img src="Images/flags/Italy.png" /> <strong>IT</strong></li>
                <li><img src="Images/flags/Russia.png" /> <strong>RU</strong></li>
            </ul>
        </div>
		<div class='container-fluid'> <!-- Start of Container -->
            <!-- Main body begins here -->
            <div id='body'>
                    <div class='col-xs-12 col-sm-7 bookings style' style='margin-right: 20px;'>
                        <div class='current_bookings'>
                            <h3><i class='fa fa-bookmark'></i> &nbsp;<strong>Current Bookings</strong></h3>
                            <table class="sort">
                                <thead class='booking_title_main'>
                                <tr>
                                    <th><strong>Booking No.</strong></th>
                                    <th><strong>Package</strong></th>
                                    <th><strong>Start Date</strong></th>
                                    <th><strong>End Date</strong></th>
                                    <th><strong>Details</strong></th>
                                </tr>
                                </thead>
                                <tr>
                                <!-- These cells will be dynamically populated with any of the customers current bookings (ie. the start date is later than today's date) //-->
                                    <td>&nbsp;</td>
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
                        <form method="post" name="print" action="Print.jsp">
						<table class='sort'>
                            <thead class='booking_title_main'>
                                <tr>
                                    <th style='width: 30%;'><strong>Booking No.</strong></th>
                                    <th style='width: 65%;'><strong>Package</strong></th>
                                    <th style='width: 5%;'></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${booking}" var="bkng">
                            	<tr>
                            		<td><c:out value="${bkng.bookingNo}" /><td>
		        				</tr>
		      				</c:forEach>    
                                <tr>
                                    <td colspan='3'>
                                    <table class='booking_item' rules='all'>
                                        <thead>
                                          <tr class='booking_title'>
                                             <th style='width: 30%;'>${booking[i].bookingNo}</th>
                                             <th style='width: 65%;'>${pkg[i].pkgName}</th>
                                             <th style='width: 5%;'><i class='fa fa-ellipsis-v fa-lg'></i></th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr class='booking_details'>
                                             <td colspan='3'>Deetails</td>
                                          </tr>
                                        </tbody>
                                    </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan='3'>
                                    <table class='booking_item' rules='all'>
                                        <thead>
                                          <tr class='booking_title'>
                                             <th style='width: 30%;'>${booking[0].bookingNo}</th>
                                             <th style='width: 65%;'>${pkg[0].pkgName}</th>
                                             <th style='width: 5%;'><i class='fa fa-ellipsis-v fa-lg'></i></th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr class='booking_details'>
                                             <td colspan='3'>Deetails</td>
                                          </tr>
                                        </tbody>
                                    </table>
                                    </td>
                                </tr>
                            </tbody>
						</table>   
						</form>     
                        </div> 
                    </div>
                    <div class='col-xs-12 col-sm-4 customer style'>
                        <h3><i class='fa fa-user'></i> &nbsp;<strong>Customer Details</strong></h3><hr class='style-one' />
                        <img src='Images/customer_profile.jpg' class='img-responsive' style='width: 300px; margin: 0 auto;' /><br>
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
                                <td style='width: 130px;'><strong>Email:</strong></td>
                                <td>${cust.custEmail}</td>
                            </tr><tr>
                                <td><strong>Home Phone:</strong></td>
                                <td>${cust.custHomePhone}</td>
                            </tr><tr>
                                <td><strong>Business Phone:</strong></td>
                                <td>${cust.custBusPhone}</td>
                            </tr><tr>
                                <td><strong>Customer ID:</strong></td>
                                <td>${cust.customerId}</td>
                            </tr>
                        </table>
                    </div>
                </div>
                </div>
            </div> <!-- End of body -->
        </div> <!-- End of Container -->
        </div>
        <div id="footer">
            <p>Copyright &copy; 2014 Travel Experts Inc. All rights reserved.</p>
            <a href="index.php">Home</a> | <a href="#">Privacy Policy</a><br><br>
            <span class="socialmedia"><img src="Images/icons/fb_icon.png" /> <img src="Images/icons/twitter_icon.png" /> <img src="Images/icons/linkedin_icon.png" /> <img src="Images/icons/googleplus_icon.png" /></span>
        </div>
        <a href="#top" class="top"><i class="fa fa-arrow-up fa-lg"></i></a>
    </body>
</html>

