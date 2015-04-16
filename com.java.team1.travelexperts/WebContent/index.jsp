<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
	    <meta name="description" content="SAIT Fall 2014 Object-Oriented Software Development Project #3 (JAVA, JSP Servlets, jQuery)" />
    	<meta name="author" content="John Nguyen, Justin Gritten" />

		<title>Travel Experts Inc. | Home</title>

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

		<meta name="description" content="SAIT Fall 2014 Object-Oriented Software Development Project #3 (HTML, CSS, JavaScript, JSP & MySQL)">
		<meta name="author" content="John Nguyen, Justin Gritten">
		
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		
		<!-- JavaScript -->
		<script type="text/javascript" src="js/default.js"></script>
		<script src="js/jquery-2.1.3.js"></script>
		
		<!-- Google Font Code -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,400|Ek+Mukta:400,600,700|Sintony:700' rel='stylesheet' type='text/css'>
		
		<script>
			$(function() {
				$("#datepicker").datepicker();
			});
		</script>
		<title>Travel Experts</title>
		
	</head>
	<body>   
	   <div class="header_wrap">
	       <div class="header">
	       <div class="logo"><a href="Index"><img src="Images/logo.png" class="img-responsive"></a></div>
	       <div class="nav" id="dropmenu">
	           <ul>
	               <li class="home"><a href="Index"><i class="fa fa-home fa-lg"></i></a></li>
	               <li><a href="#">&nbsp;<i class="fa fa-plane"></i> &nbsp;Vacations&nbsp;</a></li>
	               <li><i class='fa fa-sign-in'></i> &nbsp;Login&nbsp;&nbsp;&nbsp;
	                  <ul>
	                    <li class='active_nav'><a href='Login'><i class='fa fa-sign-in'></i> &nbsp;Login&nbsp;&nbsp;&nbsp;</a></li>
	                    <li class='logout'><a href='Logout'><i class='fa fa-sign-out'></i> &nbsp;Logout</a></li>
	                  </ul>
	               </li>                    
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
	            <h1><strong>Your Dream Vacation Starts Here</strong> &nbsp<i class="fa fa-paper-plane"></i></h1>
	       </div>      
	   </div>
	    <div class="container-fluid"> <!-- Start of Container -->            
		<div id="body"> <!-- Main body begins here -->
	        <div class="row">
	            <div class="col-md-12 main_booking" style=" background-size: cover; background-repeat: no-repeat;  width: 100%; height: 100%; background-image:url('Images/main_booking_background.jpg')">
	                <div class="row main_welcome" >
	                    <h1>Welcome to the Travel Experts &nbsp;<i class="fa fa-globe"></i> <i class="fa fa-plane"></i> <i class="fa fa-suitcase"></i></h1> 
	                </div>
	                <div class="row main_left" >
	                    <div class="col-xs-12 col-md-7 search_box" >
	                        <h2><i class="fa fa-search"></i> &nbsp;<strong>Search Vacation Packages</strong></h2>
	                        <hr class="style-three">
	                        <form action="">
	                        <table style="width: 100%;">
	                            <tr>
	                                <td colspan="2" class="search_title">&nbsp;<i class="fa fa-map-marker fa-lg"></i> &nbsp;Leaving from</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2">
	                                    <input type="text" class="form-control" id="destination" placeholder="Enter address, city, or airport">
	                                </td>
	                            </tr>
	                            <tr>
	                                <td colspan="2" class="search_title">&nbsp;<i class="fa fa-map-marker fa-lg"></i> &nbsp;Destination</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2">
	                                    <input type="text" class="form-control" id="destination" placeholder="Enter address, city, or airport">
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="search_title">&nbsp;<i class="fa fa-calendar"></i> &nbsp;Departure Date</td> 
	                                <td class="search_title">&nbsp;<i class="fa fa-clock-o"></i> &nbsp;Duration</td> 
	                            </tr>
	                            <tr>
	                                <td><input type="text" id="datepicker" class="form-control"></td>
	                                <td><select id="duration" class="form-control">
	                                        <option value="under3">Less than 3 nights</option>
	                                        <option value="4to5">4 to 5 nights</option>
	                                        <option value="6to7">6 to 7 nights</option>
	                                        <option value="8to9">8 to 9 nights</option>
	                                        <option value="10to11">10 to 11 nights</option>
	                                        <option value="12to13">12 to 13 nights</option>
	                                        <option value="over14">Over 14 nights</option>
	
	                                    </select>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="search_title">&nbsp;<i class="fa fa-users"></i> &nbsp;Number of Guests</td>
	                                <td class="search_title">&nbsp;<i class="fa fa-usd"></i> &nbsp;Price Range (per Package)</td>
	                            </tr>
	                            <tr>
	                                <td style="text-align: center;">
	                                    <div class="col-sm-6">
	                                        <p>Adults (18+)</p>
	                                        <select id="num_adults" class="form-control">
	                                            <option value="1">1</option>
	                                            <option value="2">2</option>
	                                            <option value="3">3</option>
	                                            <option value="4">4</option>
	                                            <option value="5">5</option>
	                                            <option value="6">6</option>
	                                            <option value="8">8</option>
	                                            <option value="9">9</option>
	                                        </select>
	                                    </div>
	                                    <div class="col-sm-6">
	                                        <p>Children (0-6)</p>
	                                        <select id="num_children" class="form-control">
	                                            <option value="0">0</option>
	                                            <option value="1">1</option>
	                                            <option value="2">2</option>
	                                            <option value="3">3</option>
	                                            <option value="4">4</option>
	                                            <option value="5">5</option>
	                                            <option value="6">6</option>
	                                        </select>
	                                    </div>
	                                    <div class="col-sm-12">
	                                        <a href="#" class="group">Click here for bookings of 10 or more</a>
	                                    </div>
	                                </td>
	                                <td>
	                                <select id="pricerange" class="form-control">
	                                        <option value="under1500">Under $1500</option>
	                                        <option value="1501-3000">$1501 to $3000</option>
	                                        <option value="3001-5000">$3001 to $5000</option>
	                                        <option value="5001-7500">$5001 to $7500</option>
	                                        <option value="over7500">Over $7500</option>
	                                    </select>
                                   	</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2">
	                                    <button type="submit" class="btn btn-primary btn-lg" style="margin-top: 10px;">Search</button>
	                                </td>
	                            </tr>
	                        </table>
	                    </form>
	                    </div>
	                    <div class="col-xs-12 col-md-5">
	                        <div class="main_right">
	                            <div class="col-xs-12 col-sm-12 sidebar">
	                                <img src="Images/sidebar.png" class="img-responsive">
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        
	        <div class="row" style="margin-top: 40px;">
	            <div class="col-xs-12 col-md-4">
	                <div style="text-align: center;"><i class="fa fa-star-o fa-3x" style="color: #edc800;"></i> <i class="fa fa-star-o fa-3x" style="color: #edc800;"></i> <i class="fa fa-star-o fa-3x" style="color: #edc800;"></i> <i class="fa fa-star-o fa-3x" style="color: #edc800;"></i> <i class="fa fa-star-o fa-3x" style="color: #edc800;"></i><br>
	                <h2 style="font-weight: 600; font-family: 'Sintony', sans-serif;"><strong>Five-Star Service</strong></h2></div><br>
	                <strong><i class="fa fa-star"></i> TRIP PLANNING</strong><br>
	                <p>Our experienced agents will provide you with all the trip planning services you require.</p>
	                <strong><i class="fa fa-star"></i> PACKAGE BOOKING</strong><br>
	                <p>Package booking is simple and intuitive with our booking and payment system.</p>
	                <strong><i class="fa fa-star"></i> CHEAP FLIGHTS</strong><br>
	                <p>Prices you won't find anywhere else. If you find a competitor with the same price, we'll price match!</p>
	                <strong><i class="fa fa-star"></i> CARS &amp; HOTELS</strong><br>
	                <p>Car and hotel bookings are included on some packages to give you ease and peace of mind.</p>
	                <strong><i class="fa fa-star"></i> POPULAR DESTINATIONS</strong><br>
	                <p>Popular destinations are added daily so be sure to check back often.</p><br>
	                <p>The Travel Experts aims to be your discount travel package and booking company. Email us at <a href="#">info@travelexperts.com</a> for more information.</p>
	            </div>
	            <div class="col-xs-12 col-md-8 main_img">
	                <h3><strong>FEATURED PACKAGES</strong></h3>
	                <div class="row">
	                    <div class="col-xs-6 col-md-6 main_img_div">
	                        <img src="Images/package5.jpg" class="img-responsive">
	                        <span class="main_img_name">Temples of Myanmar</span><span class="main_img_price"><strong>$3400</strong></span><br><a href="#"><span class="main_img_click">Click for more details &nbsp;<i class="fa fa-arrow-circle-right"></i></span></a>
	                    </div>
	                    <div class="col-xs-6 col-md-6  main_img_div">
	                        <img src="Images/package6.jpg" class="img-responsive">
	                        <span class="main_img_name">Japanese Culture Tour</span><span class="main_img_price"><strong>$5600</strong></span><br><a href="#"><span class="main_img_click">Click for more details &nbsp;<i class="fa fa-arrow-circle-right"></i></span></a>
	                    </div>
	                </div>
	                <div class="row">
	                    <div class="col-xs-6 col-md-6  main_img_div">
	                        <img src="Images/package7.jpg" class="img-responsive">
	                        <span class="main_img_name">New York Broadway</span><span class="main_img_price"><strong>$550</strong></span><br><a href="#"><span class="main_img_click">Click for more details &nbsp;<i class="fa fa-arrow-circle-right"></i></span></a>
	                    </div>
	                    <div class="col-xs-6 col-md-6  main_img_div">
	                        <img src="Images/package10.jpg" class="img-responsive">
	                        <span class="main_img_name">Castles of Scotland</span><span class="main_img_price"><strong>$3750</strong></span><br><a href="#"><span class="main_img_click">Click for more details &nbsp;<i class="fa fa-arrow-circle-right"></i></span></a>
	                    </div>
	                </div>
	            </div>
	        </div>
		</div> <!-- End of body -->
		</div> <!-- End of Container -->
        <div class="email">
            <div class="col-xs-6 col-md-6 text-right" style="display: block;">
            <h2 style="color: #fff;">Sign up for Exclusive Package Deals</h2><h5 style="color: #fff;">Exclusive access to coupons, special offers and promotions.</h5>
            </div>
            <div class="col-xs-6 col-md-6">
                <form class="form-inline">
                    <input type="text" size="39" name="subscribe" class="form-control" style="margin-top: 10px;">
                    <input type="button" value="Sign Up" class="form-control" style="width: 86px; margin-top: 10px;">
                </form>
            </div>
        </div>
        <div id="footer">
            <p>Copyright &copy; 2014 Travel Experts Inc. All rights reserved.</p>
            <a href="index.php">Home</a> | <a href="#">Privacy Policy</a><br><br>
            <span class="socialmedia"><img src="Images/icons/fb_icon.png" /> <img src="Images/icons/twitter_icon.png" /> <img src="Images/icons/linkedin_icon.png" /> <img src="Images/icons/googleplus_icon.png" /></span>
        </div>
        <a href="#top" class="top"><i class="fa fa-arrow-up fa-lg"></i></a>
     	</body>
</html>