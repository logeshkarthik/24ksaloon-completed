
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Your Booking|24K Saloon</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="style.css" rel="stylesheet">
<link rel="stylesheet" href="styleforfooter.css">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">




<script>
/*Interactivity to determine when an animated element in in view. In view elements trigger our animation*/
$(document).ready(function() {

  //window and animation items
  var animation_elements = $.find('.animation-element');
  var web_window = $(window);

  //check to see if any animation containers are currently in view
  function check_if_in_view() {
    //get current window information
    var window_height = web_window.height();
    var window_top_position = web_window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    //iterate through elements to see if its in view
    $.each(animation_elements, function() {

      //get the element sinformation
      var element = $(this);
      var element_height = $(element).outerHeight();
      var element_top_position = $(element).offset().top;
      var element_bottom_position = (element_top_position + element_height);

      //check to see if this current container is visible (its viewable if it exists between the viewable space of the viewport)
      if ((element_bottom_position >= window_top_position) && (element_top_position <= window_bottom_position)) {
        element.addClass('in-view');
      } else {
        element.removeClass('in-view');
      }
    });

  }

  //on or scroll, detect elements in view
  $(window).on('scroll resize', function() {
      check_if_in_view()
    })
    //trigger our scroll event on initial load
  $(window).trigger('scroll');

});
</script>
<style>
a:hover {
	text-decoration: none;
}

body {
	font-family: 'Lato', sans-serif;
}

.overlay {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.9);
	overflow-x: hidden;
	transition: 0.5s;
}

.overlay-content {
	position: relative;
	top: 25%;
	width: 100%;
	text-align: center;
	margin-top: 30px;
}

.overlay a {
	padding: 8px;
	text-decoration: none;
	font-size: 36px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
	color: #f1f1f1;
}

.overlay .closebtn {
	position: absolute;
	top: 20px;
	right: 45px;
	font-size: 60px;
}

@media screen and (max-height: 450px) {
	.overlay a {
		font-size: 20px
	}
	.overlay .closebtn {
		font-size: 40px;
		top: 15px;
		right: 35px;
	}
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: white;
}

li {
	font-size: 25px;
	float: left;
}

li a {
	display: block;
	color: black;
	text-align: center;
	padding: 16px;
	text-decoration: none;
}
</style>
</head>

<body style="background: white;">
	<div>
		<style>
.header {
	overflow: hidden;
	background-color: black;
	padding: 10px 10px;
}

.header a {
	float: left;
	color: black;
	text-align: center;
	padding: 5px;
	text-decoration: none;
	font-size: 18px;
	line-height: 15px;
	line-width: 15px;
	border-radius: 4px;
}

.header a.logo {
	font-weight: bold;
}

.header a:hover {
	background-color: #ddd;
	color: black;
}

.header a.active {
	background-color: dodgerblue;
	color: white;
}

.header-right {
	float: right;
}

@media screen and (max-width: 500px) {
	.header a {
		float: none;
		display: block;
		text-align: left;
	}
	.header-right {
		float: right;
	}
}
</style>
		</head>

		<style>
.flex-container {
	display: flex;
	align-items: stretch;
	background-color: black;
}

.flex-container>div {
	background-color: none;
	color: white;
	margin: 0;
	margin: 0;
	text-align: center;
	line-height: 75px;
	font-size: 30px;
}
</style>



		<div class="flex-container">
			<div style="flex-grow: 2">
				<img src="logo.jpg" style="height: auto; width: 100px;">
			</div>
			<div style="flex-grow: 7"></div>
			<div style="flex-grow: 1">
				<span
					style="font-size: 30px; float: right; color: #D4AF37; margin-top: 30px; margin-right: 30px;"
					onclick="openNav()">&#9776;</span>
			</div>
		</div>




	</div>

	<div style="position: relative;">
		<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
		<div id="myNav" class="overlay">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<div class="overlay-content">
				<a href="index.jsp" onclick="closeNav()">Home</a> <a
					href="myaccount.jsp" onclick="closeNav()">Switch Account</a> <a
					href="book appoinment.jsp" onclick="closeNav()">Book
					Appointment</a>

			</div>
		</div>
		<%
		
		
		String PhoneNumber=session.getAttribute("user_phonenumber").toString();
	%>
		<caption style="">
			<h4>YOUR BOOKINGS</h4>
		</caption>
		<!-- _______________________________ -->
		<%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
		<%
									String id = request.getParameter("userid");
									String driver = "com.mysql.jdbc.Driver";
									String connectionUrl = "jdbc:mysql://localhost:3306/";
									String database = "24ksaloon";
									String userid = "root";
									String password = "Karthik_1999";
									try {
										Class.forName(driver);
									} catch (ClassNotFoundException e) {
										e.printStackTrace();
									}
									Connection connection = null;
									Statement statement = null;
									ResultSet resultSet = null;
								%>
		<table>


			<thead>
				<tr>
					<th scope="col">Date</th>
					<th scope="col">Time</th>
					<th scope="col">Purpose</th>

				</tr>
			</thead>
			<%
										try {
											connection = DriverManager.getConnection(connectionUrl + database, userid, password);
											statement = connection.createStatement();
											String sql = "SELECT purpose,time,date FROM bookings WHERE phonenumber = '" + PhoneNumber + "' ;";
											resultSet = statement.executeQuery(sql);
											while (resultSet.next()) {
									%>
			<tbody>
				<tr>
					<td data-label="Date"><%=resultSet.getString("date")%></td>
					<td data-label="Time"><%=resultSet.getString("time")%></td>
					<td data-label="Purpose"><%=resultSet.getString("purpose")%></td>

				</tr>
				<%
										}
											connection.close();
										} catch (Exception e) {
											e.printStackTrace();
										}
									%>
			</tbody>
		</table>
		<style>
body {
	font-family: "Open Sans", sans-serif;
	line-height: 1.25;
}

table {
	border: 1px solid #ccc;
	border-collapse: collapse;
	margin: 0;
	padding: 0;
	width: 100%;
	table-layout: fixed;
}

table caption {
	font-size: 1.5em;
	margin: .5em 0 .75em;
}

table tr {
	background-color: #f8f8f8;
	border: 1px solid #ddd;
	padding: .35em;
}

table th, table td {
	padding: .625em;
	text-align: center;
}

table th {
	font-size: .85em;
	letter-spacing: .1em;
	text-transform: uppercase;
}

@media screen and (max-width: 600px) {
	table {
		border: 0;
	}
	table caption {
		font-size: 1.3em;
	}
	table thead {
		border: none;
		clip: rect(0, 0, 0, 0);
		height: 1px;
		margin: -1px;
		overflow: hidden;
		padding: 0;
		position: absolute;
		width: 1px;
	}
	table tr {
		border-bottom: 3px solid #ddd;
		display: block;
		margin-bottom: .625em;
	}
	table td {
		border-bottom: 1px solid #ddd;
		display: block;
		font-size: .8em;
		text-align: right;
	}
	table td::before {
		/*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
		content: attr(data-label);
		float: left;
		font-weight: bold;
		text-transform: uppercase;
	}
	table td:last-child {
		border-bottom: 0;
	}
}
</style>
		<script>
function openNav() {
  document.getElementById("myNav").style.width = "100%";
}

function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}
//Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>
</body>
</html>
