<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world Ho Ho!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<%
         out.println("Your IP address is " + request.getRemoteAddr());
         out.println("User " + request.getRemoteUser());
         out.println("Your method " + request.getMethod());
      %>

<a href="./otherpage"> Other Page</a>
<a href="./securepage1"> Secure Page</a>

</body>
</html>
