<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Other Page</title>
<link href="<c:url value="/resources/form.css" />" rel="stylesheet"
	type="text/css" />
<link
	href="<c:url value="/resources/jqueryui/1.8/themes/base/jquery.ui.core.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/jqueryui/1.8/themes/base/jquery.ui.theme.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/jqueryui/1.8/themes/base/jquery.ui.tabs.css" />"
	rel="stylesheet" type="text/css" />

</head>
<body>
	<h1>Welcome to the Tabbed page!</h1>
	<a href="./"> HomePage</a>
	<p></p>

	<div id="tabs">
		<ul>
			<li><a href="#other">Simple</a></li>
			<li><a href="#more">More</a></li>
			<li><a href="#bikes">Bicycles</a></li>
		</ul>
		<div id="other">
			<P>The time on the server is ${serverTime}.</P>
			<%
				out.println("Your IP address is " + request.getRemoteAddr());
				out.println("User " + request.getRemoteUser());
				out.println("Your method " + request.getMethod());
			%>
		</div>
		<div id="more">
			<h1>Other stuff</h1>
			<h2>Welome to the other spot</h2>
		</div>
		
		<div id="bikes">
			<h1>Table of Bikes</h1>
			<h2>Yeah Bikes</h2>

			<br /> <br />
			<div>
				<table border="1">
					<tr>
						<th>BRAND</th>
						<th>MODEL</th>
						<th>TYPE</th>
					</tr>
					<c:forEach items="${bikeList}" var="bike">
						<tr>
							<td>${bike.brand}</td>
							<td>${bike.model}</td>
							<td>${bike.type}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>









	<a href="./"> HomePage</a>

	<script type="text/javascript"
		src="<c:url value="/resources/jquery/1.6/jquery.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/jqueryform/2.8/jquery.form.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/jqueryui/1.8/jquery.ui.core.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/jqueryui/1.8/jquery.ui.widget.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/jqueryui/1.8/jquery.ui.tabs.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/json2.js" />"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#tabs").tabs();

			// Append '#' to the window location so "Back" returns to the selected tab
			// after a redirect or a full page refresh (e.g. Views tab).

			// However, note this general disclaimer about going back to previous tabs: 
			// http://docs.jquery.com/UI/API/1.8/Tabs#Back_button_and_bookmarking

			$("#tabs").bind("tabsselect", function(event, ui) {
				window.location.hash = ui.tab.hash;
			});

		});
	</script>
</body>
</html>
