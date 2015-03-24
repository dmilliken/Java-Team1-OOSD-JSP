<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%!
   private String message;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
      out.print(application.getInitParameter("driver"));
      if (session.getAttribute("message") != null)
      {
    	  message = session.getAttribute("message").toString();
    	  out.print("<h1>" + message + "</h1>");
    	  session.removeAttribute("message");
    	  
      }
   %> 
   <form method="post" action="/JSP-Day3/Login">
      Username:<input type="text" name="userid" 
         value="<%= (session.getAttribute("userid") != null)? session.getAttribute("userid") : "" %>" />
      Password:<input type="password" name="password" />
      <input type="submit" value="Log In" />
   </form>
</body>
</html>