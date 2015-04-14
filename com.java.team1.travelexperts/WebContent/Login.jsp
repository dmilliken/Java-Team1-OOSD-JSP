<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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

<!-- Google Font Code -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,400|Ek+Mukta:400,600,700|Sintony:700' rel='stylesheet' type='text/css'>

<title>Travel Experts Inc. | Login</title>

</head>
<body>
    <div class="header_wrap">
       <div class="header">
       <div class="logo"><a href="Index"><img src="Images/logo.png" class="img-responsive"></a></div>
       <div class="nav" id="dropmenu">
           <ul>
               <li class="home"><a href="Index"><i class="fa fa-home fa-lg"></i></a></li>
               <li><a href="packages.php">&nbsp;<i class="fa fa-plane"></i> &nbsp;Vacations&nbsp;</a></li>
                 <li><i class='fa fa-sign-in'></i> &nbsp;Login&nbsp;&nbsp;&nbsp;
                     <ul>
                         <li class='active_nav'><a href='Login'><i class='fa fa-sign-in'></i> &nbsp;Login&nbsp;&nbsp;&nbsp;</a></li>
                         <li class='logout'><a href='logout'><i class='fa fa-sign-out'></i> &nbsp;Logout</a></li>
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
   <div class="slider" style="background-image: url(Images/slider02.jpg);"> <!-- Slider Image -->
        <div class="welcome">
            <h1><strong>Login or Register</strong></h1>
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
   
   <div class="container-fluid"> <!--- Start of Container --->
            <!--- Main Body begins here --->
            <div id="body">
                <div class="row">
                    <div class="style col-xs-11 col-sm-4" style="margin: 5px 10px;">
                        <!-- BEGIN Login Form //-->
                        <h1><i class="fa fa-sign-in"></i> Login</h1><hr class="style-one">
						<!-- this from access from user table -->
                        <form name="login" method="post" class="form-horizontal" action="Login" >
                            <div class="form-group">
                                <label for="login_email" class="col-sm-4 control-label">Email</label>
                                <div class="col-sm-8">
                                    <input type="text" name="userid" class="form-control" id="login_email"  placeholder="Email Address">
									<span id="loginemailError" style="display:none">You must enter your Email address.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="login_password" class="col-sm-4 control-label">Password</label>
                                <div class="col-sm-8">
                                    <input type="password" name="password" class="form-control" id="login_password"  placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12" style="text-align: center;">
                                    <input type="submit" class="btn btn-primary" value="Sign In and Continue" />
                                    <p style="margin: 15px 0 -15px 0; color: rgba(47, 115, 193, 1); text-decoration: underline; "><a href="">Forgot password?</a></p> <!-- href="forgot_pass.php" -->
                                </div>
                            </div>
                        </form><br>
                    </div>
                    <div class="style col-xs-11 col-sm-7" style="margin: 5px 10px;">
                        <h1><i class="fa fa-pencil-square-o"></i> Create an Account</h1>
                        <hr class="style-one">
                        <h4>Please enter your personal information.</h4><br>
                        
                        <!-- BEGIN Registration Form //-->
                        <form name="register" method="post" action="Login" class="form-horizontal" role="form" onsubmit="return formvalidation()">
                        <div class="form-group">
	                       <label for="fname" class="col-sm-4 control-label">First Name</label>
	                       <div class="col-sm-8">
                                <input id="fname" name="CustFirstName" type="text" placeholder="First Name" tabindex="1" size="30" maxlength="30" class="form-control" onblur="validateFname(value)">
								<span id="fnameError" style="display: none;"> <i class='fa fa-exclamation-triangle' style='color: #e35152'></i> You can only use alphabetic characters.</span>
                           </div>
                        </div>
                        <div class="form-group">    
	                       <label for="lname" class="col-sm-4 control-label">Last Name</label>
                            <div class="col-sm-8">
                                <input id="lname" name="CustLastName" type="text" placeholder="Last Name" tabindex="2" size="30" maxlength="30" class="form-control" onblur="validateLname(value)">
                            </div>
                            <div class="col-sm-offset-4 col-sm-6">
                                <span id="lnameError" style="display: none;"> <i class='fa fa-exclamation-triangle' style='color: #e35152'></i> You can only use alphabetic characters.</span>
                            </div>
                        </div> <!-- login information inside registration form -->
                        <div class="form-group"> <!-- this data stored in user information database -->
                            <label for="email" class="col-sm-4 control-label">Email or Username</label> 
                            <div class="col-sm-8"> 
                                <input id="email" name="CustEmail" type="email" placeholder="example: ab@yahoo.com" tabindex="3" size="30" maxlength="30" class="form-control" onblur="validateEmail(value)">
                            </div>
                            <div class="col-sm-offset-4 col-sm-6">
                                <span id="emailError" style="display: none;"> <i class='fa fa-exclamation-triangle' style='color: #e35152'></i>You must enter a valid Email address.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password1" class="col-sm-4 control-label">Create a password</label>
                            <div class="col-sm-8">
                                <input id="password1" type="password" name="password1" tabindex="4" size="30" maxlength="30" class="form-control" onblur="validatePassword1(value)">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password2" class="col-sm-4 control-label">Confirm password</label>
                            <div class="col-sm-8">
                                <input id="password2" type="password" name="password2"  tabindex="5" size="30" maxlength="30" class="form-control" onblur="validatePassword2(value); comparePasswords();">
                                <div id="passwordError" style="font-size: 12px; margin-top: 10px;">Your password must be at least six characters and contain at least one number, one lowercase, one uppercase letter.</div>
                            </div>
                        </div>
                        <hr class="style-one">  <!--this information stored in customer table -->
                        <h4>Please enter your contact information.</h4><br>
                        <div class="form-group">
                            <label for="add1" class="col-sm-4 control-label">Address</label>
                            <div class="col-sm-8">
                                <input id="add1" name="CustAddress" type="text" placeholder="Address" tabindex="6" size="30" maxlength="30" class="form-control" onblur="validateAddress(value)">
                            </div>
                            <div class="col-sm-offset-4 col-sm-6">
                                <span id="addressError" style="display: none;"> <i class='fa fa-exclamation-triangle' style='color: #e35152'></i> You must enter an address.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="city" class="col-sm-4 control-label">City</label>
                            <div class="col-sm-8">
                                <input id="city" name="CustCity" type="text" placeholder="City" tabindex="8" class="form-control" onblur="validateCity(value)">
                            </div>
                            <div class="col-sm-offset-4 col-sm-6">
                                <span id="cityError" style="display: none;"> <i class='fa fa-exclamation-triangle' style='color: #e35152'></i> You must enter a city.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="province" class="col-sm-4 control-label">Province</label>
                            <div class="col-sm-2">
                                <input  id= "province" name="CustProv" type="text" placeholder="Province" tabindex="9" class="form-control" size="2" maxlength="2" onblur="validateProv(value)">
                           </div>
                            <div class="col-sm-offset-4 col-sm-6">
                            <span id="provError" style="display: none;"> <i class='fa fa-exclamation-triangle' style='color: #e35152'></i> You must enter a valid province or state.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="countries" class="col-sm-4 control-label">Country</label>
                            <div class="col-sm-4">
                                <input type="text" name="CustCountry"  size="30" list="countries" tabindex="10" placeholder="Select Country" class="form-control">
                                <datalist id="countries">
                                    <option value="Australia">
                                    <option value="Canada">
                                    <option value="Germany">
                                    <option value="France">
                                    <option value="United Kingdom">
                                    <option value="United States">
                                </datalist>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="postal" class="col-sm-4 control-label">Postal Code</label>
                            <div class="col-sm-4">
                                <input id="postal" name="CustPostal" type="text" placeholder="Postal Code" tabindex="11" class="form-control" maxlength="7" onblur="validatePostal(value)">
                            </div>
                            <div class="col-sm-offset-4 col-sm-6">
                                <span id="postalError" style="display: none;"> <i class='fa fa-exclamation-triangle' style='color: #e35152'></i> You must enter a valid Postal Code.</span>
                            </div>
                        </div>
                        <div class="form-group"> 
                            <label for="homephone" class="col-sm-4 control-label">Home Phone</label>
                            <div class="col-sm-4">
                                <input id="homephone" name="CustHomePhone" type="text" placeholder="(555) 555-5555" tabindex="12" class="form-control" onblur="validateHomePhone(value)">
                            </div>
                            <div class="col-sm-offset-4 col-sm-6">
                                <span id="homephoneError" style="display:none;"> <i class='fa fa-exclamation-triangle' style='color: #e35152'></i> You must enter a valid phone number.</span>
                            </div>
                        </div>
                        <div class="form-group"> 
                            <label for="busphone" class="col-sm-4 control-label">Business Phone</label>
                            <div class="col-sm-4">
                                <input id="busphone" name="CustBusPhone" type="text" placeholder="(555) 555-5555" tabindex="12" class="form-control" onblur="validateBusPhone(value)">
                            </div>
                            <div class="col-sm-offset-4 col-sm-6">
                                <span id="busphoneError" style="display:none;"> <i class='fa fa-exclamation-triangle' style='color: #e35152'></i> You must enter a valid phone number.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-1 col-sm-10">
                                <button type="submit" class="btn btn-primary" name="submit">Submit</button>
                            </div>
                        </div>
                        </form>
                        <!-- END Registration Form //-->
                    </div>
                </div>
            </div> <!--- End of Body --->
        </div> <!-- End of Container --> 
    
</body>
</html>