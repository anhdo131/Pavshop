<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 01/21/18
  Time: 9:56 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

		<!--======= SUB BANNER =========-->
		<section class="sub-bnr" data-stellar-background-ratio="0.5">
			<div class="position-center-center">
				<div class="container">
					<h4>SHOPPING CART</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec faucibus maximus vehicula. Sed feugiat, tellus vel tristique
						posuere, diam</p>
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">SHOP</a></li>
						<li class="active">SHOPPING CART</li>
					</ol>
				</div>
			</div>
		</section>

		<!-- Content -->
		<div id="content">

			<!--======= PAGES INNER =========-->
			<section
				class="padding-top-100 padding-bottom-100 pages-in chart-page">
				<div class="container">

					<!-- Payments Steps -->
					<div class="shopping-cart text-center">
						<div class="cart-head">
							<ul class="row">
								<!-- PRODUCTS -->
								<li class="col-sm-2 text-left">
									<h6>PRODUCTS</h6>
								</li>
								<!-- NAME -->
								<li class="col-sm-4 text-left">
									<h6>NAME</h6>
								</li>
								<!-- PRICE -->
								<li class="col-sm-2">
									<h6>PRICE</h6>
								</li>
								<!-- QTY -->
								<li class="col-sm-1">
									<h6>QTY</h6>
								</li>
								<li class="col-sm-1"></li>
							</ul>
						</div>

						<!-- Cart Details -->
						<c:forEach items="${carts}" var="cart">
						<ul class="row cart-details">
							<li class="col-sm-6">
								<div class="media">
									<!-- Media Image -->
									<div class="media-left media-middle">
										<a href="#." class="item-img"> <img class="media-object"
											src="/loadImage?imageName=${cart.product.image}" alt="">
										</a>
									</div>

									<!-- Item Name -->
									<div class="media-body">
										<div class="position-center-center">
											<h5>${cart.product.name}</h5>
										</div>
									</div>
								</div>
							</li>

							<!-- PRICE -->
							<li class="col-sm-2">
								<div class="position-center-center">
									<span class="price"><small>$</small>${cart.product.unitPrice}</span>
								</div>
							</li>

							<!-- QTY -->
							<li class="col-sm-1">
								<div class="position-center-center">
									<div class="quinty">
										<!-- QTY -->
										<select class="selectpicker">
											<option>${cart.quantity}</option>
										</select>
									</div>
								</div>
							</li>

							<!-- REMOVE -->
							<li class="col-sm-1">
								<div class="position-center-center">
									<a href="#."><i class="icon-close"></i></a>
								</div>
							</li>
						</ul>
						</c:forEach>


					</div>
				</div>
			</section>

			<!--======= PAGES INNER =========-->
			<section
				class="padding-top-100 padding-bottom-100 light-gray-bg shopping-cart small-cart">
				<div class="container">

					<!-- SHOPPING INFORMATION -->
					<div class="cart-ship-info margin-top-0">
						<div class="row">

							<!-- DISCOUNT CODE -->
							<div class="col-sm-7">

								<div class="coupn-btn">
									<a href="checkout" class="btn">Checkout</a>
								</div>
							</div>

							<!-- SUB TOTAL -->
							<div class="col-sm-5">
								<h6>grand total</h6>
								<div class="grand-total">
									<div class="order-detail">
										<!-- SUB TOTAL -->
										<p class="all-total">
											TOTAL COST <span> $${totalPrice}</span>
										</p>
									</div>
								</div>
							</div>
						</div>
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

			<!-- News Letter -->
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