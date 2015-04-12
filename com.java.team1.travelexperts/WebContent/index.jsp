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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type='text/css' rel='stylesheet' href='css/bootstrap.min.css'/>
<link type='text/css' rel='stylesheet' href='css/Main.css'/>
<link type='text/css' rel='stylesheet' href='css/jquery-ui.css'/>
<script src="js/jquery-2.1.3.js"></script>
<script src="js/jquery-ui.js"></script>
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
<!--    <header> -->
        <div class="login_panel"><span id="login"><a href="Login.jsp"><u>Login</u></a></span><span id="logout"><a href="#"><u>Logout</u></a></span> | <a href="Customer.jsp"><u>Account</u></a></div>
        <a href="Index.jsp"><img alt="" src="Images/logo2.png"/></a>
        <div class="nav">
          <ul>
            <li class="home"><a href="Index.jsp">Home</a></li>
            <li class="package"><a href="Package.jsp">Packages</a></li>
            <li class="about"><a href="About.jsp">About</a></li>
            <li class="contact"><a href="Contact.jsp">Contact</a></li>
          </ul>
        </div>
<!--     </header> -->
   
   
    <form id="form1" action="" class="auto-style1" style="margin: 0; padding-top: 0;">
        <h1>
            Welcome to the Travel Experts!
        </h1>

        <table>
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
</body>
<!-- <footer> -->
	<div class="footer" id="footer">
        <p><strong>&copy; 2015, Travel Experts Inc.</strong></p>
	</div>
<!-- </footer> -->
</html>