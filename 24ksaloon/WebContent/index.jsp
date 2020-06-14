<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home|24K Saloon</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="style.css" rel="stylesheet">
<link rel="stylesheet" href="styleforfooter.css">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
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

<body class="container-fluid"
	style="padding: 0px; width: auto; background: black; margin: 0px;">
	<!-- sticky keys side bar -->
	<style>
.icon-bar {
	position: fixed;
	top: 68%;
	bottom: 5px;
	right: 30px;
	z-index: 99;
	font-size: 18px;
	border: none;
	outline: none;
	background-color: transparent;
	color: white;
	cursor: pointer;
	padding: 0px;
	border-radius: 4px;
	animation: mymove 3s infinite;
}

.icon-bar a {
	display: block;
	text-align: center;
	padding: 16px;
	transition: all 0.3s ease;
	color: white;
	font-size: 20px;
}

.icon-bar a:hover {
	background-color: #000;
}

.facebook {
	background: #3B5998;
	color: white;
}

.bookorder {
	background: #CCA826;
	color: white;
}

.google {
	background: #dd4b39;
	color: white;
}

.linkedin {
	background: #007bb5;
	color: white;
}

.instagram {
	background: #CCA826;
	color: white;
	opacity: 40%;
}

.content {
	margin-left: 75px;
	font-size: 30px;
}
</style>

	<div class="icon-bar" id="">
		<!-- <a href="#" style="opacity:50%;text-decoration:none;"class="facebook">book order</a> 
  <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> 
   <a href="#" class="google"><i class="fa fa-google"></i></a> -->
		<a href="book appoinment.jsp"
			style="opacity: 50%; text-decoration: none;" class="bookorder">book
			order</a> <a href="https://www.instagram.com/24kluxurysalon/?hl=en"
			class="instagram"><i class="fab fa-instagram"></i></a>
	</div>
	<!-- end of sticky keys sidebar -->
	<div>
		<style>
#stickysidebar {
	position: fixed;
	bottom: 5px;
	right: 30px;
	z-index: 99;
	font-size: 18px;
	border: none;
	outline: none;
	background-color: black;
	color: white;
	cursor: pointer;
	padding: 15px;
	border-radius: 4px;
	animation: mymove 3s infinite;
}

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
				<a href="#aboutus" onclick="closeNav()">About</a> <a
					href="#services" onclick="closeNav()">Services</a> <a
					href="#gallery" onclick="closeNav()">Gallery</a> <a href="#contact"
					onclick="closeNav()">Contact</a> <a href="book appoinment.jsp"
					onclick="closeNav()">Book Appointment</a> <a href="myaccount.jsp"
					onclick="closeNav()">My Account</a>
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




		<div class="w3-content w3-section"
			style="height: auto; width: auto; no-gutters; margin-top: 0px;">
			<img class="mySlides" src="massage.jpg" style="width: 100%"> <img
				class="mySlides" src="haircut_spray.jpg" style="width: 100%">
			<img class="mySlides" src="humberto-chavez-5JSkFTXHZvI-unsplash.jpg"
				style="width: 100%">
		</div>

		<script>
			var myIndex = 0;
			carousel();

			function carousel() {
				var i;
				var x = document.getElementsByClassName("mySlides");
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				myIndex++;
				if (myIndex > x.length) {
					myIndex = 1
				}
				x[myIndex - 1].style.display = "block";
				setTimeout(carousel, 2000); // Change image every 2 seconds
			}
		</script>
		<section id="aboutus">
		<h1 style="text-align: center; color: #D4AF37;">
			<br>About Us<br>
		</h1>
		</section>
		<div class="row no-gutters ;" style="margin: 0; padding: 0;">
			<script>
				//read more for about us
				function aboutus() {
					var dots_aboutus = document.getElementById("dotsaboutus");
					var moreText_aboutus = document
							.getElementById("moreaboutus");
					var btnText_aboutus = document
							.getElementById("readmoreaboutus");

					if (dots_aboutus.style.display === "none") {
						dots_aboutus.style.display = "inline";
						btnText_aboutus.innerHTML = "Read more ";
						moreText_aboutus.style.display = "none";
					} else {
						dots_aboutus.style.display = "none";
						btnText_aboutus.innerHTML = "Read less";
						moreText_aboutus.style.display = "inline";
					}
				}
			</script>
			<div
				class="no-gutters justify-content-center align-items-center  . text-center">
				<p
					style="background-color: black; text-align: center; padding: 20px; margin: 10; color: #D4AF37; font-family: Playfair Display; font-size: 30px;"">
					When it comes to your beauty and wellness needs, 24k Luxury Salon
					And Spa! A one-stop solution for all your beauty and wellness needs
					for you. Located in Anna Nagar,<span id="dotsaboutus">...</span><span
						id="moreaboutus" style="display: none;"> Chennai, the salon
						and spa offers a wide range of beauty and wellness services . The
						salon and spa features opulent and trendy interiors and houses the
						latest products and equipment. The staff is well versed with the
						latest trend and techniques and is committed to help you look and
						feel your best.</span>
				</p>
				<button class="readmorebutton"
					style="background: grey; align: center; color: white; font-size: 20px; border-radius: 30px;"
					onclick="aboutus()" id="readmoreaboutus">
					Read more <i class="far fa-arrow-alt-circle-right"></i>
				</button>
				<br> <br>
			</div>





			<div class="row no-gutters ">
				<div class="col-md-6 no-gutters" style="background: black;">
					<div class="leftside   justify-content-center align-items-center">
						<img src="happycustomer5.jpg" alt="Nature"
							class=" responsive img-fluid animation-element slide-left testimonial"
							width="600" height="400">
					</div>
				</div>

				<div class="col-md-6 no-gutters">
					<div class="rightside   justify-content-center align-items-center">
						<img src="about.jpg" alt="Nature"
							class=" responsive img-fluid animation-element slide-left testimonial"
							width="600" height="400">
					</div>
				</div>

			</div>


		</div>
		<section id="services">
		<h1 style="text-align: center; color: #D4AF37;">
			<br>services<br> <br>
		</h1>
		</section>
		<div class="row no-gutters " style="margin: 0; padding: 0;">
			<div class="col-md-6 no-gutters" style="background-color: black;">
				<div
					class="leftside  justify-content-center align-items-center right . text-center "
					style="padding: 10%;">
					<script>
						//read more button
						function myFunction1() {
							var dots = document.getElementById("dots");
							var moreText = document.getElementById("more");
							var btnText = document.getElementById("readmore");

							if (dots.style.display === "none") {
								dots.style.display = "inline";
								btnText.innerHTML = "Read more ";
								moreText.style.display = "none";
							} else {
								dots.style.display = "none";
								btnText.innerHTML = "Read less";
								moreText.style.display = "inline";
							}
						}
					</script>
					<h> <br>
					grooming<br>
					</h>

					<p style="font-family: calibri; color: white; font-size: 30px;">
						Our men's beauty treatments include facial treatments, body
						exfoliating & conditioning treatments, full body waxing <span
							id="dots">...</span><span id="more" style="display: none;">including
							male intimate waxing, manicures and pedicures, eyelash tinting &
							eyebrow shaping/tidying. We offer complete male beautician
							service.</span>
					</p>
					<button class="readmorebutton"
						style="background: grey; align: center; color: white; font-size: 20px; border-radius: 30px;"
						onclick="myFunction1()" id="readmore">
						Read more <i class="far fa-arrow-alt-circle-right"></i>
					</button>

				</div>
			</div>
			<div class="col-md-6 no-gutters">
				<div class="rightside   justify-content-center align-items-center">
					<img src="happycustomer1.jpg" alt="Nature"
						class=" responsive img-fluid animation-element slide-left testimonial"
						width="600" height="400">
				</div>
			</div>
		</div>




		<div class="row no-gutters ">
			<div class="col-md-6 no-gutters">
				<div class="leftside  justify-content-center align-items-center">
					<img src="happycustomer6.jpg" alt="Nature"
						class="responsive img-fluid animation-element slide-left testimonial ">
				</div>
			</div>
			<div class="col-md-6 no-gutters" style="background: black;">
				<div
					class="rightside  justify-content-center align-items-center right . text-center "
					style="padding: 10%;">
					<script>
						//read more button
						function myFunction2() {
							var dots1 = document.getElementById("dots1");
							var moreText1 = document.getElementById("more1");
							var btnText1 = document.getElementById("readmore1");

							if (dots1.style.display === "none") {
								dots1.style.display = "inline";
								btnText1.innerHTML = "Read more ";
								moreText1.style.display = "none";
							} else {
								dots1.style.display = "none";
								btnText1.innerHTML = "Read less";
								moreText1.style.display = "inline";
							}
						}
					</script>
					<h> <br>
					bridal<br>
					<br>
					</h>
					<p style="font-family: calibri; color: white; font-size: 30px;">
						24k is one of the leading makeup artists in the city and alongside
						her team of professionals, 24k highlights your best<span
							id="dots1">...</span><span id="more1" style="display: none;">
							features and enhance your natural beauty with professional
							techniques and proper product application.</span>
					</p>
					<button class="readmorebutton"
						style="background: grey; align: center; color: white; font-size: 20px; border-radius: 30px;"
						onclick="myFunction2()" id="readmore1">
						Read more <i class="far fa-arrow-alt-circle-right"></i>
					</button>

				</div>
			</div>
		</div>
		<div class="row no-gutters ">
			<div class="col-md-6 no-gutters" style="background: black;">
				<div
					class="rightside  justify-content-center align-items-center right . text-center "
					style="padding: 10%;">
					<script>
						//read more button
						function myFunction3() {
							var dots1 = document.getElementById("dots3");
							var moreText1 = document.getElementById("more3");
							var btnText1 = document.getElementById("readmore3");

							if (dots1.style.display === "none") {
								dots1.style.display = "inline";
								btnText1.innerHTML = "Read more ";
								moreText1.style.display = "none";
							} else {
								dots1.style.display = "none";
								btnText1.innerHTML = "Read less";
								moreText1.style.display = "inline";
							}
						}
					</script>
					<h> <br>
					hair care<br>
					</h>


					<p style="font-family: calibri; color: white; font-size: 30px;">
						Our natural hair care treatments use nourishing ingredients to
						provide maximum protection to the hair, while providing<span
							id="dots3">...</span><span id="more3" style="display: none;">
							much needed nutrition. The hair treatments are designed for
							different hair types, and to address specific hair problems.</span>
					</p>
					<button class="readmorebutton"
						style="background: grey; align: center; color: white; font-size: 20px; border-radius: 30px;"
						onclick="myFunction3()" id="readmore3">
						Read more <i class="far fa-arrow-alt-circle-right"></i>
					</button>

				</div>
			</div>
			<div class="col-md-6 no-gutters">
				<div class="rightside   justify-content-center align-items-center">
					<img src="happycustomer2.jpg" alt="Nature"
						class=" responsive img-fluid animation-element slide-left testimonial "
						width="600" height="400">
				</div>
			</div>
		</div>
		<div class="row no-gutters ">
			<div class="col-md-6 no-gutters">
				<div class="leftside  justify-content-center align-items-center">
					<img src="happycustomer4.jpg" alt="Nature"
						class="responsive img-fluid animation-element slide-left testimonial">
				</div>
			</div>

			<div class="col-md-6 no-gutters" style="background: black">
				<div class="rightside   justify-content-center align-items-center">
					<div
						class="rightside  justify-content-center align-items-center right . text-center "
						style="padding: 10%;">
						<script>
							//read more button
							function myFunction4() {
								var dots1 = document.getElementById("dots4");
								var moreText1 = document
										.getElementById("more4");
								var btnText1 = document
										.getElementById("readmore4");

								if (dots1.style.display === "none") {
									dots1.style.display = "inline";
									btnText1.innerHTML = "Read more ";
									moreText1.style.display = "none";
								} else {
									dots1.style.display = "none";
									btnText1.innerHTML = "Read less";
									moreText1.style.display = "inline";
								}
							}
						</script>
						<h> <br>
						offers<br>
						</h>


						<p style="font-family: calibri; color: white; font-size: 30px;">
							Treat yourself to a gorgeous hair cut, style, global hair colour
							or balayage. Pamper your skin with premium facials, wax<span
								id="dots4">...</span><span id="more4" style="display: none;">or
								body treatments. Groom your nails with world class facilities.
								Avail upto 50% Off! Blow dry, styling, wash, Facials at 50%
								off*, other services 35% off.</span>
						</p>
						<button class="readmorebutton"
							style="background: grey; align: center; color: white; font-size: 20px; border-radius: 30px;"
							onclick="myFunction4()" id="readmore4">
							Read more <i class="far fa-arrow-alt-circle-right"></i>
						</button>

					</div>
				</div>
			</div>

		</div>
		<section id="gallery" class="no-gutters">
		<h1 style="text-align: center; color: #D4AF37;">
			<br>gallery<br>
		</h1>

		<style>
.img:hover {
	shadow: 10px 10px;
}
</style>
		<script>
			$(document).on("click", '[data-toggle="lightbox"]',
					function(event) {
						event.preventDefault();
						$(this).ekkoLightbox();
					});
		</script>
		<div class="container">
			<div class="row" style="margin: 15px;">
				<a href="https://unsplash.it/1200/768.jpg?image=251"
					data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
					<img src="1.jpg" class="img-fluid rounded">
				</a> <a href="https://unsplash.it/1200/768.jpg?image=252"
					data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
					<img src="2.jpg"
					class="img-fluid rounded animation-element slide-left testimonial">
				</a> <a href="https://unsplash.it/1200/768.jpg?image=253"
					data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
					<img src="3.jpg" class="img-fluid rounded">
				</a>
			</div>
			<div class="row" style="margin: 15px;">
				<a href="https://unsplash.it/1200/768.jpg?image=254"
					data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
					<img src="4.jpg"
					class="img-fluid rounded animation-element slide-left testimonial">
				</a> <a href="https://unsplash.it/1200/768.jpg?image=255"
					data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
					<img src="5.jpg" class="img-fluid rounded">
				</a> <a href="https://unsplash.it/1200/768.jpg?image=256"
					data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
					<img src="6.jpg"
					class="img-fluid rounded animation-element slide-left testimonial">
				</a>
			</div>
			<div class="row" style="margin: 15px;">
				<a href="https://unsplash.it/1200/768.jpg?image=251"
					data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
					<img src="7.jpg" class="img-fluid rounded">
				</a> <a href="https://unsplash.it/1200/768.jpg?image=252"
					data-toggle="lightbox" data-gallery="gallery" class="col-md-4"
					style="height: 200%"> <img src="8.jpg"
					class="img-fluid rounded animation-element slide-left testimonial">
				</a> <a href="https://unsplash.it/1200/768.jpg?image=253"
					data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
					<img src="9.jpg" class="img-fluid rounded">
				</a>
			</div>
		</div>
	</div>
	</section>
	<section class="bg-contact bg-section" id="contact">
	<div class="container-fluid">
		<h1 class="container-h1" style="text-align: center; color: #D4AF37;">
			<br>Contact us<br> <br>
		</h1>
		<div class="row">
			<div class="col-md-6 col-sm-6 contact-left">
				<div class="left-box">
					<address class="contact">
						<span class="span-contact">Call:</span> <br> <a
							href="tel:8637466636"> 8637466636</a> <br> <span
							class="span-contact">Email:</span> <br>
						24kluxurysaloon@gmail.com <br> <span class="span-contact">Visit:</span>
						<br> Q90, 4th Main Road, <br> Annanagar, Chennai,India,
						<br> 600040
					</address>
				</div>
			</div>

			<div class="col-md-6 col-sm-6 contact-right">

				<form novalidate action="mailto:s.logeshkarthik.com" name="frm"
					method="post">
					<div class="form-group has-feedback">
						<label class="sr-only">First name:</label> <input type="text"
							name="name" class="form-control" placeholder=" Name" required>

					</div>
					<!-- <div class="form-group has-feedback">
						<label class="sr-only">Last name:</label> <input type="text"
							name="surname" class="form-control" placeholder="Last name"
							required>

					</div> -->
					<div class="form-group has-feedback">
						<label class="sr-only">Email:</label> <input type="email"
							name="email" class="form-control" placeholder="Email" required>

					</div>
					<div class="form-group">
						<label class="sr-only" name="comment" for="comment">Comment:</label>
						<textarea class="form-control" rows="5" id="comment"
							placeholder="Description"></textarea>
					</div>
					<div class="contact-buttons pull-left">
						<input type="submit" name="submit" value="Send" /> <input
							type="reset" value="Reset" />
					</div>
				</form>

			</div>
		</div>
	</div>
	<style>

/* ******* Contact ******* */
#contact .form-group input, #contact .form-group textarea {
	border: 1px solid #000;
	border-radius: 0;
	font-family: 'Leckerli One', cursive;
}

#contact .form-group input:hover, #contact .form-group textarea:hover {
	border-color: #ababee;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, .2);
}

#contact .contact-buttons input, #contact .contact-buttons input:focus {
	color: #fff;
	background-color: black;
	margin: 20px auto 40px auto;
	border-radius: 0;
	font-weight: 500;
	padding: 10px;
	border: 1px solid #182c39;
	cursor: pointer;
	font-family: Calibri;
}

#contact .contact-buttons input:hover {
	color: #182c39;
	background-color: #fff;
}

#contact .left-box {
	background-color: black;
	margin: 0 20px;
	font-size: 15px;
	text-transform: none;
	line-height: 1.8em;
	font-weight: 500;
	padding: 30px 50px;
	color: #fff;
	font-family: Calibri;
}

#contact .left-box .span-contact {
	color: #fff;
	font-weight: 700;
	padding-right: 20px;
	font-size: 17px;
}
</style>

	</section>






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

			<a href="#contact">Contact</a><br> <a href="book appoinment.jsp">Book
				Apppointment</a><br> <a href="myaccount.jsp">My Account</a>
		</p>

		<p class="footer-company-name">24kluxurysaloon &copy; 2019</p>
	</div>

	<div class="footer-center">

		<div><a href="https://g.page/24k-luxury-salon?share">
			<i class="fa fa-map-marker"></i></a>
			<p>
				<span> Q90, 4th Main Road,</span> Annanagar, Chennai,India,600040
			</p>
		</div>

		<div>
			<i class="fa fa-phone"></i>
			<p><a href="tel:8637466636">8637466636</a></p>
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
