<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 01/17/18
  Time: 7:12 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="M_Adnan">
<title>PAVSHOP - Multipurpose eCommerce HTML5 Template</title>

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css"
	media="screen" />

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/ionicons.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

<!-- JavaScripts -->
<script src="js/modernizr.js"></script>

<!-- Online Fonts -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900'
	rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>

	<!-- LOADER -->
	<div id="loader">
		<div class="position-center-center">
			<div class="ldr"></div>
		</div>
	</div>

	<!-- Wrap -->
	<div id="wrap">

		<!-- header -->
		<jsp:include page="header.jsp"></jsp:include>

		<!--======= HOME MAIN SLIDER =========-->
		<section class="home-slider">

			<!-- SLIDE Start -->
			<div class="tp-banner-container">
				<div class="tp-banner">
					<ul>
						<!-- SLIDE  -->
						<li data-transition="random" data-slotamount="7"
							data-masterspeed="300" data-saveperformance="off">
							<!-- MAIN IMAGE --> <img src="images/Main-Banner1.jpg" alt="slider"
							data-bgposition="center center" data-bgfit="cover"
							data-bgrepeat="no-repeat"> <!-- LAYERS --> <!-- LAYER NR. 1 -->
						</li>

						<!-- SLIDE  -->
						<li data-transition="random" data-slotamount="7"
							data-masterspeed="300" data-saveperformance="off">
							<!-- MAIN IMAGE --> <img src="images/Main-Banner3.jpg" alt="slider"
							data-bgposition="center center" data-bgfit="cover"
							data-bgrepeat="no-repeat"> <!-- LAYERS --> <!-- LAYER NR. 1 -->
						</li>
					</ul>
				</div>
			</div>
		</section>

		<!-- Content -->
		<div id="content">

			<!-- New Arrival -->
			<section class="padding-top-100 padding-bottom-100">
				<div class="container">

					<!-- Main Heading -->
					<div class="heading text-center">
						<h4>new arrival</h4>
						<span>Lorem ipsum dolor sit amet, consectetur adipiscing
							elit. Donec faucibus maximus vehicula. Sed feugiat, tellus vel
							tristique posuere, diam</span>
					</div>
				</div>

				<!-- New Arrival -->
				<div class="arrival-block">
					<!-- Item -->
					<c:forEach items="${listproduct6}" var="u">
					<div class="item">
						<!-- Images -->
						<img class="img-1" src="/loadImage?imageName=${u.image}" alt=""> <img
							class="img-2" src="/loadImage?imageName=${u.image}" alt="">
						<!-- Overlay  -->
						<div class="overlay">
							<!-- Price -->
							<span class="price"><small>$</small>${u.unitPrice}</span>
							<div class="position-center-center">
								<a href="/loadImage?imageName=${u.image}" data-lighter><i
									class="icon-magnifier"></i></a>
							</div>
						</div>
						<!-- Item Name -->
						<div class="item-name">
							<a href="/productDetail?id=${u.id}">${u.name}</a>
<%--							<p>Lorem ipsum dolor sit amet</p>--%>
						</div>
					</div>
					</c:forEach>
				</div>
			</section>

			<!-- Popular Products -->
			<section class="padding-top-50 padding-bottom-150">
				<div class="container">

					<!-- Main Heading -->
					<div class="heading text-center">
						<h4>popular products</h4>
						<span>Lorem ipsum dolor sit amet, consectetur adipiscing
							elit. Donec faucibus maximus vehicula. Sed feugiat, tellus vel
							tristique posuere, diam</span>
					</div>

					<!-- Popular Item Slide -->
					<div class="papular-block block-slide">

						<c:forEach items="${listTest1}" var="u">
						<!-- Item -->
						<div class="item">
							<!-- Item img -->
							<div class="item-img">
								<img class="img-1" src="/loadImage?imageName=${u[1]}" alt=""> <img
									class="img-2" src="/loadImage?imageName=${u[1]}" alt="">
								<!-- Overlay -->
								<div class="overlay">
									<div class="position-center-center">
										<div class="inn">
											<a href="/loadImage?imageName=${u[1]}" data-lighter><i
												class="icon-magnifier"></i></a> <a href="/addToCart?id=${u[2]}"
												data-toggle="tooltip" data-placement="top"
												title="Add To Cart"><i class="icon-basket"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!-- Item Name -->
							<div class="item-name">
								<a href="/productDetail?id=${u[2]}">${u[0]}</a>
<%--								<p>Lorem ipsum dolor sit amet</p>--%>
							</div>
							<!-- Price -->
							<span class="price"><small>$</small>${u[4]}</span>
						</div>
						</c:forEach>

					</div>
				</div>
			</section>

			<!-- About -->
			<section class="small-about padding-top-150 padding-bottom-150">
				<div class="container">

					<!-- Main Heading -->
					<div class="heading text-center">
						<h4>about PAVSHOP</h4>
						<p>Phasellus lacinia fermentum bibendum. Interdum et malesuada
							fames ac ante ipsumien lacus, eu posuere odio luctus non. Nulla
							lacinia, eros vel fermentum consectetur, risus purus tempc, et
							iaculis odio dolor in ex.</p>
					</div>

					<!-- Social Icons -->
					<ul class="social_icons">
						<li><a href="#."><i class="icon-social-facebook"></i></a></li>
						<li><a href="#."><i class="icon-social-twitter"></i></a></li>
						<li><a href="#."><i class="icon-social-tumblr"></i></a></li>
						<li><a href="#."><i class="icon-social-youtube"></i></a></li>
						<li><a href="#."><i class="icon-social-dribbble"></i></a></li>
					</ul>
				</div>
			</section>
			<section class="news-letter padding-top-150 padding-bottom-150">
				<div class="container">
					<div class="heading light-head text-center margin-bottom-30">
						<h4>NEWSLETTER</h4>
						<span>Phasellus lacinia fermentum bibendum. Interdum et
							malesuada fames ac ante ipsumien lacus, eu posuere odi </span>
					</div>
					<form>
						<input type="email" placeholder="Enter your email address"
							required>
						<button type="submit">SEND ME</button>
					</form>
				</div>
			</section>
		</div>

		<!--======= FOOTER =========-->
		<footer>
			<div class="container">

				<!-- ABOUT Location -->
				<div class="col-md-3">
					<div class="about-footer">
						<img class="margin-bottom-30" src="images/logo-foot.png" alt="">
						<p>
							<i class="icon-pointer"></i> Street No. 12, Newyork 12, <br>
							MD - 123, USA.
						</p>
						<p>
							<i class="icon-call-end"></i> 1.800.123.456789
						</p>
						<p>
							<i class="icon-envelope"></i> info@PAVSHOP.com
						</p>
					</div>
				</div>

				<!-- HELPFUL LINKS -->
				<div class="col-md-3">
					<h6>HELPFUL LINKS</h6>
					<ul class="link">
						<li><a href="#."> Products</a></li>
						<li><a href="#."> Find a Store</a></li>
						<li><a href="#."> Features</a></li>
						<li><a href="#."> Privacy Policy</a></li>
						<li><a href="#."> Blog</a></li>
						<li><a href="#."> Press Kit </a></li>
					</ul>
				</div>

				<!-- SHOP -->
				<div class="col-md-3">
					<h6>SHOP</h6>
					<ul class="link">
						<li><a href="#."> About Us</a></li>
						<li><a href="#."> Career</a></li>
						<li><a href="#."> Shipping Methods</a></li>
						<li><a href="#."> Contact</a></li>
						<li><a href="#."> Support</a></li>
						<li><a href="#."> Retailer</a></li>
					</ul>
				</div>

				<!-- MY ACCOUNT -->
				<div class="col-md-3">
					<h6>MY ACCOUNT</h6>
					<ul class="link">
						<li><a href="#."> Login</a></li>
						<li><a href="#."> My Account</a></li>
						<li><a href="#."> My Cart</a></li>
						<li><a href="#."> Wishlist</a></li>
						<li><a href="#."> Checkout</a></li>
					</ul>
				</div>

				<!-- Rights -->

				<div class="rights">
					<p>© 2017 PAVSHOP All right reserved.</p>
					<div class="scroll">
						<a href="#wrap" class="go-up"><i class="lnr lnr-arrow-up"></i></a>
					</div>
				</div>
			</div>
		</footer>

		<!--======= RIGHTS =========-->

	</div>
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/own-menu.js"></script>
	<script src="js/jquery.lighter.js"></script>
	<script src="js/owl.carousel.min.js"></script>

	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script type="text/javascript" src="rs-plugin/js/jquery.tp.t.min.js"></script>
	<script type="text/javascript" src="rs-plugin/js/jquery.tp.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/main.js"></script>
</body>
</html>