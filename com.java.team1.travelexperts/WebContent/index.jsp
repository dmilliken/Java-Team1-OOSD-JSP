<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%!
   private String message;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-image:url("Images/main_booking_background.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }
        .auto-style2 {
            width: 50%;
        }
        .auto-style3 {
            height: 570px; 
            width: 90%; 
            display: block; 
            margin: 24px; 
            background-color: rgba(255,255,255,0.4); 
            border: 1px solid #fff;
            padding: 10px;
        }
    </style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<!-- Stylesheets -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/transitions.css">
<link rel="stylesheet" type="text/css" href="css/stylesheet.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">

<meta name="description" content="SAIT Fall 2014 Object-Oriented Software Development Project #3 (HTML, CSS, JavaScript, JSP & MySQL)">
<meta name="author" content="John Nguyen, Justin Gritten">

<!-- Mobile Specific Meta -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- JavaScript -->
<script type="text/javascript" src="js/default.js"></script>
<script src="js/jquery-2.1.3.js"></script>

<!-- Google Font Code -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,400|Ek+Mukta:400,600,700|Sintony:700' rel='stylesheet' type='text/css'>

<title>Travel Experts Inc. | Home</title>



<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type='text/css' rel='stylesheet' href='css/bootstrap.min.css'/>
<link type='text/css' rel='stylesheet' href='css/Main.css'/>
<link type='text/css' rel='stylesheet' href='css/jquery-ui.css'/>

JavaScript
<script language="javascript" type="text/javascript" src="js/default.js"></script>
<script src="js/jquery-2.1.3.js"></script>
<script src="js/jquery-ui.js"></script>

Stylesheets
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome-4.2.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/transitions.css">
<link rel="stylesheet" type="text/css" href="css/stylesheet.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">

Google Font Code
<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,400|Ek+Mukta:400,600,700|Sintony:700' rel='stylesheet' type='text/css'>

 -->
<!-- <script src="js/main.js"></script> -->
<script>
	$(function() {
		$( "#datepicker" ).datepicker();
	});
</script>
<title>Travel Experts</title>


</head>

<body>
<%-- <%
      out.print(application.getInitParameter("driver"));
      if (session.getAttribute("message") != null)
      {
    	  message = session.getAttribute("message").toString();
    	  out.print("<h1>" + message + "</h1>");
    	  session.removeAttribute("message");
      }
   %> 
   <form method="post" action="Login">
      Username:<input type="text" name="userid" 
         value="<%= (session.getAttribute("userid") != null)? session.getAttribute("userid") : "" %>" />
      Password:<input type="password" name="password" />
      <input type="submit" value="Log In" />
   </form> --%>
   
   <div class="header_wrap">
       <div class="header">
       <div class="logo"><a href="Index.jsp"><img src="Images/logo.png" class="img-responsive"></a></div>
       <div class="nav" id="dropmenu">
           <ul>
               <li class="home"><a href="Index.jsp"><i class="fa fa-home fa-lg"></i></a></li>
               <li><a href="packages.php">&nbsp;<i class="fa fa-plane"></i> &nbsp;Vacations&nbsp;</a></li>
                 <li><i class='fa fa-sign-in'></i> &nbsp;Login&nbsp;&nbsp;&nbsp;
                     <ul>
                         <li class='active_nav'><a href='Login.jsp'><i class='fa fa-sign-in'></i> &nbsp;Login&nbsp;&nbsp;&nbsp;</a></li>
                         <li class='logout'><a href='logout.php'><i class='fa fa-sign-out'></i> &nbsp;Logout</a></li>
                     </ul>
                 </li>                    
               <li><a href="contact.php">&nbsp;<i class="fa fa-info-circle"></i> &nbsp;About Us&nbsp;</a></li>
           </ul>
       </div>
       <div class="nav_mobile" onclick="dropMenu('dropmenu');">
          <i class="fa fa-bars fa-2x"></i>
       </div>
   </div>
   </div>
   <div class="slider" style="background-image: url(Images/slider01.jpg);"> <!-- Slider Image -->
        <div class="welcome">
            <h1><strong>Your Dream Vacation Starts Here</strong></h1>
       </div>      
   </div>
   <div>
       <a href="#help" class="help"><i class="fa fa-question-circle fa-lg"></i></a>
   </div>
   <div>
       <a href="#lang" class="lang" onclick="dropMenu('flags');"><img src="Images/flags/Canada.png" style="margin-right: 10px;"><i class="fa fa-caret-down"></i></a>
   </div>
   <div class="lang_menu" id="flags" onClick="document.getElementById('flags').style.display='none';">
       <ul>
           <li><img src="Images/flags/Canada.png"> <strong>EN</strong></li>
           <li><img src="Images/flags/France.png"> <strong>FR</strong></li>
           <li><img src="Images/flags/Germany.png"> <strong>GE</strong></li>
           <li><img src="Images/flags/Japan.png"> <strong>JA</strong></li>
           <li><img src="Images/flags/China.png"> <strong>CN</strong></li>
           <li><img src="Images/flags/Brazil.png"> <strong>BP</strong></li>
           <li><img src="Images/flags/Italy.png"> <strong>IT</strong></li>
           <li><img src="Images/flags/Russia.png"> <strong>RU</strong></li>
       </ul>
   </div>

<div class="container-fluid"> <!-- Start of Container -->
            <!-- Main body begins here -->
            <div id="body">
                <div class="row">
                    <div class="col-md-12 main_booking">
                        <div class="row main_welcome">
                            <h1>Welcome to the Travel Experts &nbsp;<i class="fa fa-globe"></i> <i class="fa fa-plane"></i> <i class="fa fa-suitcase"></i></h1> 
                        </div>
                        <div class="row main_left" style=" background-size: cover; background-repeat: no-repeat;  width: 100%; height: 100%; background-image:url('Images/main_booking_background.jpg')">
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
                                            <input type="text" class="form-control" id="destination" value="Enter address, city, or airport">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="search_title">&nbsp;<i class="fa fa-map-marker fa-lg"></i> &nbsp;Destination</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <input type="text" class="form-control" id="destination" value="Enter address, city, or airport">
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
                                        <td class="search_title" colspan="2">&nbsp;<i class="fa fa-users"></i> &nbsp;Number of Guests</td>
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
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td class="search_title">&nbsp;<i class="fa fa-usd"></i> &nbsp;Price Range (per Package)</td>
                                    </tr>
                                    <tr>
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
                
                <div class="row col-xs-12 col-md-12" >
                    <div class="advertisement">
                        <a href="#"><img src="Images/banner_ad.png" class="img-responsive"></a>
                    </div>
                </div>
                
                <div class="row">
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
                        <p>The Travel Experts aims to be your discount travel package and booking company. Email us at <a href="#"><u>info@travelexperts.com</u></a> for more information.</p>
                    </div>
                    <div class="col-xs-12 col-md-8 main_img">
                        <h3><strong>FEATURED PACKAGES</strong></h3>
                        <div class="row">
                            <div class="col-xs-6 col-md-6 main_img_div">
                                <img src="Images/package5.jpg" class="img-responsive">
                                <span class="main_img_name">Temples of Myanmar</span><span class="main_img_price"><strong>$3400</strong></span><br><a href="packages.php"><span class="main_img_click">Click for more details &nbsp;<i class="fa fa-arrow-circle-right"></i></span></a>
                            </div>
                            <div class="col-xs-6 col-md-6  main_img_div">
                                <img src="Images/package6.jpg" class="img-responsive">
                                <span class="main_img_name">Japanese Culture Tour</span><span class="main_img_price"><strong>$5600</strong></span><br><a href="packages.php"><span class="main_img_click">Click for more details &nbsp;<i class="fa fa-arrow-circle-right"></i></span></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-md-6  main_img_div">
                                <img src="Images/package7.jpg" class="img-responsive">
                                <span class="main_img_name">New York Broadway</span><span class="main_img_price"><strong>$550</strong></span><br><a href="packages.php"><span class="main_img_click">Click for more details &nbsp;<i class="fa fa-arrow-circle-right"></i></span></a>
                            </div>
                            <div class="col-xs-6 col-md-6  main_img_div">
                                <img src="Images/package10.jpg" class="img-responsive">
                                <span class="main_img_name">Castles of Scotland</span><span class="main_img_price"><strong>$3750</strong></span><br><a href="packages.php"><span class="main_img_click">Click for more details &nbsp;<i class="fa fa-arrow-circle-right"></i></span></a>
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



<!-- <div class="container-fluid"> - Start of Container -
            - Main Body begins here -
  <div id="body">
  	<div class="row">
    <form id="form1" action="" class="auto-style1" style="margin: 0; padding-top: 0;">
        <h1>
            Welcome to the Travel Experts!
        </h1>

        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">
                    <div class="auto-style3">
                        <table style="width: 100%;">
                            <tr>
                                <td colspan="2"><h3>Leaving from</h3></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="text" class="textbox" value="Enter address, city, or airport"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="search_title"><h3>Destination</h3></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="text" class="textbox"  value="Enter address, city, or airport"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="search_title"><h3>Departure Date</h3></td> 
                            </tr>
                            <tr>
                                    <td><input type="text" id="datepicker"></td>
                                        
                            </tr>
                            <tr>
                                <td class="search_title"><h3>Duration</h3></td> 
                                </tr><tr>
                                <td><select id="duration" class="dropdown">
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
                                <td class="search_title" colspan="2"><h3>Number of Guests</h3></td>
                            </tr>
                            <tr>
                                <td style="padding: 10px 0px 10px 20px;">
                                    <div style="display: inline-block; width: 120px;">
                                        Adults (18+)
                                        <select id="num_adults" class="dropdown" style="width: 60px;">
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
                                    <div style="display: inline-block; width: 45%;">
                                        Children (0-6)
                                        <select id="num_children" class="dropdown" style="width: 60px;">
                                            <option value="0">0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                        </select>
                                    </div>
                                    <div>
                                        <a href="#" style="color: black;">Click here for bookings of 10 or more</a>
                                    </div>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="search_title"><h3>Price Range (per Package)</h3></td>
                            </tr>
                            <tr>
                                <td>
                                    <select id="pricerange" class="dropdown">
                                        <option value="under1500">Under $1500</option>
                                        <option value="1501-3000">$1501 to $3000</option>
                                        <option value="3001-5000">$3001 to $5000</option>
                                        <option value="5001-7500">$5001 to $7500</option>
                                        <option value="over7500">Over $7500</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="padding-left: 20px; text-align: center;">
                                    <button type="submit" class="button" style="margin-top: 10px; width: 150px;">Search</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td><img src="Images/sidebar.png"/></td>
            </tr>
        </table>
    </form>
    </div>
  </div>
</div>
 -->
</body>
<!-- <footer> -->
	<div class="footer" id="footer">
        <p><strong>&copy; 2015, Travel Experts Inc.</strong></p>
	</div>
<!-- </footer> -->
</html>