
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Add Member|24K Saloon</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="style.css" rel="stylesheet">
<link rel="stylesheet" href="styleforfooter.css">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<style>
/*currosel styling*/
.mySlides {
	display: none;
}

/*animation element sliding left*/
.animation-element.slide-left {
	opacity: 0;
	-moz-transition: all 500ms linear;
	-webkit-transition: all 500ms linear;
	-o-transition: all 500ms linear;
	transition: all 500ms linear;
	-moz-transform: translate3d(-100px, 0px, 0px);
	-webkit-transform: translate3d(-100px, 0px, 0px);
	-o-transform: translate(-100px, 0px);
	-ms-transform: translate(-100px, 0px);
	transform: translate3d(-100px, 0px, 0px);
}

.animation-element.slide-left.in-view {
	opacity: 1;
	-moz-transform: translate3d(0px, 0px, 0px);
	-webkit-transform: translate3d(0px, 0px, 0px);
	-o-transform: translate(0px, 0px);
	-ms-transform: translate(0px, 0px);
	transform: translate3d(0px, 0px, 0px);
}
/*animation slide left styled for testimonials*/
.animation-element.slide-left.testimonial {
	float: left;
	width: 47%;
	margin: 0px;
	background: none;
	padding: 0px;
}

.animation-element.slide-left.testimonial:nth-of-type(odd) {
	width: 100%;
}

.animation-element.slide-left.testimonial:nth-of-type(even) {
	width: 48.5%;
}

.animation-element.slide-left.testimonial .header {
	float: left;
	width: 100%;
}

.animation-element.slide-left.testimonial .left {
	float: left;
}

.animation-element.slide-left.testimonial .right {
	float: left;
}

.animation-element.slide-left.testimonial img {
	width: auto;
	height: auto;
	box-shadow: 0px 1px 3px rgba(51, 51, 51, 0.5);
}

.animation-element.slide-left.testimonial h3 {
	
}

.animation-element.slide-left.testimonial h4 {
	margin: 0px 0px 5px 0px;
}

.animation-element.slide-left.testimonial .content {
	float: left;
	width: 100%;
}

.animation-element.slide-left.testimonial .rating {
	
}

.animation-element.slide-left.testimonial i {
	color: #aaa;
	margin-right: 5px;
}

/*media queries for small devices*/
@media screen and (max-width: 678px) {
	/*testimonials*/
	.animation-element.slide-left.testimonial, .animation-element.slide-left.testimonial:nth-of-type(odd),
		.animation-element.slide-left.testimonial:nth-of-type(even) {
		width: 100%;
		margin: 0px 0px 20px 0px;
	}
	.animation-element.slide-left.testimonial .right, .animation-element.slide-left.testimonial .left,
		.animation-element.slide-left.testimonial .content, .animation-element.slide-left.testimonial .rating
		{
		text-align: center;
		float: none;
	}
	.animation-element.slide-left.testimonial img {
		width: 85px;
		height: 85px;
		margin-bottom: 5px;
	}
}
</style>
<script>
	/*Interactivity to determine when an animated element in in view. In view elements trigger our animation*/
	$(document)
			.ready(
					function() {

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
							$
									.each(
											animation_elements,
											function() {

												//get the element sinformation
												var element = $(this);
												var element_height = $(element)
														.outerHeight();
												var element_top_position = $(
														element).offset().top;
												var element_bottom_position = (element_top_position + element_height);

												//check to see if this current container is visible (its viewable if it exists between the viewable space of the viewport)
												if ((element_bottom_position >= window_top_position)
														&& (element_top_position <= window_bottom_position)) {
													element.addClass('in-view');
												} else {
													element
															.removeClass('in-view');
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
/*-------body section images ------- */
.responsive {
	width: auto;
	height: 100vh;
	position: relative;
}

}
.leftside, .rightside {
	width: 50%;
	height: 100vh;
}

@media screen and (min-width:768px) {
	.leftside, .rightside {
		height: auto
	}
}

.col {
	float: down;
	width: 50%;
	padding: 0px;
	height: auto;
}

* {
	padding: 0;
	margin: 0;
}

body {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 18px;
	background-color: #CCC;
}
/*navbar*/
.abc {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: white;
}

.topnav a {
	float: left;
	color: black;
	text-align: center;
	padding: 16px 16px;
	text-decoration: none;
	font-size: 18px;
}

/*--------scroll to top----------*/
#myBtn {
	display: none;
	position: fixed;
	bottom: 20px;
	right: 30px;
	z-index: 99;
	font-size: 18px;
	border: none;
	outline: none;
	background-color: grey;
	color: white;
	cursor: pointer;
	padding: 15px;
	border-radius: 4px;
	animation: mymove 3s infinite;
}

#myBtn:hover {
	background-color: transparent;
}

@
keyframes mymove { 50% {
	box-shadow: 10px 20px 30px black;
}

}
/*--------scroll behaviour---------*/
html {
	scroll-behavior: smooth;
}
/*--------read more button---------*/
.readmorebutton {
	background-color: #4CAF50; /* Green */
	border: none;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
}

/*----------heading animation --------------------*/
<!--
style for services content-->body {
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #000;
}

h {
	padding: 45px;
	text-align: center;
	position: relative;
	font-family: sans-serif;
	text-transform: uppercase;
	font-size: 2em;
	letter-spacing: 4px;
	overflow: hidden;
	background: linear-gradient(90deg, #000, #fff, #000);
	background-repeat: no-repeat;
	background-size: 80%;
	animation: animate 5s linear infinite;
	-webkit-background-clip: text;
	-webkit-text-fill-color: rgba(255, 255, 255, 0);
}

@
keyframes animate { 0% {
	background-position: -500%;
}
100%
{
background-position












:






 






500%;
}
}
</style>
</head>

<body style="background: black;">
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
			window.onscroll = function() {
				scrollFunction()
			};

			function scrollFunction() {
				if (document.body.scrollTop > 20
						|| document.documentElement.scrollTop > 20) {
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





		<div style="text-align: center;">

			<form action="addmember" method="post">
				<table class="container-fluid" style="width: 360px;">
					<tr>
						<td><label style="color: #CCA826; text-align: center;">User
								Name</label></td>
						<td><input class="login" type="tel" name="username" required
							placeholder="   enter user name"><br> <br></td>
					</tr>
					<tr>
						<td><label style="color: #CCA826; text-align: center;">Mobile
								Number</label></td>
						<td><input class="login" type="tel" name="phonenumber"
							required placeholder="   enter mobile number"><br> <br></td>
					</tr>
					<tr>
						<td><label style="color: #CCA826; text-align: center;">Email/Optional</label></td>
						<td><input class="login" type="tel" name="email"
							placeholder="   enter email"><br> <br></td>
					</tr>
					<tr>
						<td><label style="color: #CCA826; text-align: center;">Role</label></td>
						<td><select style="color: black" class="login" type="tel"
							name="role" required placeholder="   role">
								<option>admin</option>
								<option>user</option>
						</select><br> <br>
					<tr>
						<td></td>
						<td><input class="loginbutton" type="submit" value="submit"></td>
					</tr>
				</table>

			</form>

		</div>

		<style>
.login {
	background: #E7E3E3;
	border-radius: 10px;
	width: 250px;
	height: 47px;
	color: #8D8989;
	font-family: Roboto;
	font-style: normal;
	font-weight: normal;
	font-size: 12px;
}

.loginbutton {
	width: 106px;
	height: 34px;
	background: #D5B02D;
	border-radius: 10px;
}
</style>




		<footer class="footer-distributed no-gutters"
			style="background-color:black;">
		<style>
.footer {
	font left: 0;
	bottom: 0;
	height: 60px;
	width: 100%;
	background-color: red;
	color: white;
	text-align: center;
}
</style>

		<div class="footer-left">

			<img src="logo.jpg" style="height: auto; width: 100px;">
			</h3>

			<p class="footer-links">
				<a href="#">Home</a><br> <a href="#aboutus">About Us</a><br>

				<a href="#services">Services</a><br> <a href="#gallery">Gallery</a><br>

				<a href="#contact">Contact</a><br> <a
					href="book appoinment.jsp">Book Apppointment</a>
			</p>

			<p class="footer-company-name">24kluxurysaloon &copy; 2019</p>
		</div>

		<div class="footer-center">

			<div>
				<i class="fa fa-map-marker"></i>
				<p>
					<span> Q90, 4th Main Road,</span> Annanagar, Chennai,India,600040
				</p>
			</div>

			<div>
				<i class="fa fa-phone"></i>
				<p>8637466636</p>
			</div>

			<div>
				<i class="fa fa-envelope"></i>
				<p>
					<a href="mailto:s.logeshkarthik@gmail.com">24kluxurysaloon@gmail.com</a>
				</p>
			</div>

		</div>

		<div class="footer-right">

			<p class="footer-company-about">
				<span>About 24k lulxury saloon</span> The salon and spa features
				opulent and trendy interiors and houses the latest products and
				equipment
				<!--When it comes to your beauty and wellness needs, treat yourself to pampering session that's golden with a trip to 24k Luxury Salon And Spa! A one-stop solution for all your beauty and wellness needs, 24k Luxury Salon And Spa is just the place for you. Located in Anna Nagar, Chennai, the salon and spa offers a wide range of beauty and wellness services to choose from. The salon and spa features opulent and trendy interiors and houses the latest products and equipment. The staff is well versed with the latest trend and techniques and is committed to helping you look and feel your best. A trip to 24k Luxury Salon And Spa will leave you feeling relaxed, refreshed and beautiful.
	
	bridal
	24k is one of the leading makeup artists in the city and alongside her team of professionals; 24k highlights your best features and enhance your natural beauty with professional techniques and proper product application. Makeup by 24k bridal package consists of a wide range of customized solutions regarding all the bridal makeovers.
	-->
				World Class Service performed in an upscale environment will attract
				clientele. Our prices are very reasonable for the
			</p>

			<div class="footer-icons">

				<a href="https://www.facebook.com/24Luxurysalon/"><i
					class="fab fa-facebook-square"></i></a> <a
					href="https://www.instagram.com/24kluxurysalon/?hl=en"><i
					class="fab fa-instagram"></i></a> <a
					href="https://www.justdial.com/Chennai/24k-Luxury-Salon-Spa-Above-Pink-Gym-Near-Yesesi-Super-Market-Anna-Nagar/044PXX44-XX44-181222143717-M4E9_BZDET"><i
					class="fab fa-google"></i></a>


			</div>

		</div>

		</footer>
</body>
</html>
