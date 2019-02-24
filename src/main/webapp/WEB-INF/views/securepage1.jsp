<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Secure Page</title>
</head>
<body>
<h1>
	Secure Page you're a trusted User  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<%
         out.println("Your IP address is " + request.getRemoteAddr());
         out.println("User " + request.getRemoteUser());
         out.println("Your method " + request.getMethod());
      %>

<a href="./home"> Other Page</a>

</body>
</html>
