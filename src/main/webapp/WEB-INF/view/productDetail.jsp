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

		<!--======= SUB BANNER =========-->
		<section class="sub-bnr" data-stellar-background-ratio="0.5">
			<div class="position-center-center">
				<div class="container">
					<h4>WOOD CHAIR</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec faucibus maximus vehicula. Sed feugiat, tellus vel tristique
						posuere, diam</p>
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li class="active">Data</li>
					</ol>
				</div>
			</div>
		</section>

		<!-- Content -->
		<div id="content">

			<!-- Popular Products -->
			<section class="padding-top-100 padding-bottom-100">
				<div class="container">

					<!-- SHOP DETAIL -->
					<div class="shop-detail">
						<div class="row">

							<!-- Popular Images Slider -->
							<div class="col-md-7">

								<!-- Images Slider -->
								<div class="images-slider">
									<ul class="slides">
										<li data-thumb="/loadImage?imageName=${product.image}"><img
											class="img-responsive" src="/loadImage?imageName=${product.image}" alt="">
										</li>
										<li data-thumb="/loadImage?imageName=${product.image}"><img
											class="img-responsive" src="/loadImage?imageName=${product.image}" alt="">
										</li>
										<li data-thumb="/loadImage?imageName=${product.image}"><img
											class="img-responsive" src="/loadImage?imageName=${product.image}" alt="">
										</li>
									</ul>
								</div>
							</div>

							<!-- COntent -->
							<div class="col-md-5">
								<h4>${product.name}</h4>
								<span class="price"><small>$</small>${product.unitPrice}</span>

								<!-- Sale Tags -->
								<div class="on-sale">
									10% <span>OFF</span>
								</div>
								<ul class="item-owner">
									<li>Designer :<span> ${product.category.name}</span></li>
									<li>Brand:<span> ${product.supplier.name}</span></li>
								</ul>

								<!-- Item Detail -->
								<p>${product.description}</p>

								<!-- Short By -->
								<div class="some-info">
									<ul class="row margin-top-30">
										<!-- ADD TO CART -->
										<li class="col-xs-6"><a href="/addToCart?id=${product.id}" class="btn">ADD TO
												CART</a></li>

										<!-- LIKE -->
										<li class="col-xs-6"><a href="#." class="like-us"><i
												class="icon-heart"></i></a></li>
									</ul>

									<!-- INFOMATION -->
									<div class="inner-info">
										<h6>DELIVERY INFORMATION</h6>
										<p>${product.description}</p>
										<h6>SHIPPING & RETURNS</h6>
										<h6>SHARE THIS PRODUCT</h6>

										<!-- Social Icons -->
										<ul class="social_icons">
											<li><a href="#."><i class="icon-social-facebook"></i></a></li>
											<li><a href="#."><i class="icon-social-twitter"></i></a></li>
											<li><a href="#."><i class="icon-social-tumblr"></i></a></li>
											<li><a href="#."><i class="icon-social-youtube"></i></a></li>
											<li><a href="#."><i class="icon-social-dribbble"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--======= PRODUCT DESCRIPTION =========-->
					<div class="item-decribe">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs animate fadeInUp" data-wow-delay="0.4s"
							role="tablist">
							<li role="presentation" class="active"><a href="#descr"
								role="tab" data-toggle="tab">DESCRIPTION</a></li>
							<li role="presentation"><a href="#review" role="tab"
								data-toggle="tab">REVIEW (03)</a></li>
							<li role="presentation"><a href="#tags" role="tab"
								data-toggle="tab">INFORMATION</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content animate fadeInUp" data-wow-delay="0.4s">
							<!-- DESCRIPTION -->
							<div role="tabpanel" class="tab-pane fade in active" id="descr">
								<p>
									${product.description} <br>
								</p>
							</div>

							<!-- REVIEW -->
							<div role="tabpanel" class="tab-pane fade" id="review">
								<h6>3 REVIEWS FOR SHIP YOUR IDEA</h6>

								<!-- REVIEW PEOPLE 1 -->
								<div class="media">
									<div class="media-left">
										<!--  Image -->
										<div class="avatar">
											<a href="#"> <img class="media-object"
												src="images/avatar-1.jpg" alt="">
											</a>
										</div>
									</div>
									<!--  Details -->
									<div class="media-body">
										<p class="font-playfair">“Lorem ipsum dolor sit amet,
											consectetur adipisicing elit, sed do eiusmod tempor
											incididunt ut labore et dolore magna aliqua.”</p>
										<h6>
											TYRION LANNISTER <span class="pull-right">MAY 10, 2016</span>
										</h6>
									</div>
								</div>

								<!-- REVIEW PEOPLE 1 -->

								<div class="media">
									<div class="media-left">
										<!--  Image -->
										<div class="avatar">
											<a href="#"> <img class="media-object"
												src="images/avatar-2.jpg" alt="">
											</a>
										</div>
									</div>
									<!--  Details -->
									<div class="media-body">
										<p class="font-playfair">“Lorem ipsum dolor sit amet,
											consectetur adipisicing elit, sed do eiusmod tempor
											incididunt ut labore et dolore magna aliqua.”</p>
										<h6>
											TYRION LANNISTER <span class="pull-right">MAY 10, 2016</span>
										</h6>
									</div>
								</div>

								<!-- ADD REVIEW -->
								<h6 class="margin-t-40">ADD REVIEW</h6>
								<form>
									<ul class="row">
										<li class="col-sm-6"><label> *NAME <input
												type="text" value="" placeholder="">
										</label></li>
										<li class="col-sm-6"><label> *EMAIL <input
												type="email" value="" placeholder="">
										</label></li>
										<li class="col-sm-12"><label> *YOUR REVIEW <textarea></textarea>
										</label></li>
										<li class="col-sm-6">
											<!-- Rating Stars -->
											<div class="stars">
												<span>YOUR RATING</span> <i class="fa fa-star"></i><i
													class="fa fa-star"></i><i class="fa fa-star"></i><i
													class="fa fa-star"></i><i class="fa fa-star"></i>
											</div>
										</li>
										<li class="col-sm-6">
											<button type="submit"
												class="btn btn-dark btn-small pull-right no-margin">POST
												REVIEW</button>
										</li>
									</ul>
								</form>
							</div>

							<!-- TAGS -->
							<div role="tabpanel" class="tab-pane fade" id="tags"></div>
						</div>
					</div>
				</div>
			</section>

			<!-- Popular Products -->
			<section class="light-gray-bg padding-top-150 padding-bottom-150">
				<div class="container">

					<!-- Main Heading -->
					<div class="heading text-center">
						<h4>YOU MAY LIKE IT</h4>
						<span>Lorem ipsum dolor sit amet, consectetur adipiscing
							elit. Donec faucibus maximus vehicula. Sed feugiat, tellus vel
							tristique posuere, diam</span>
					</div>

					<!-- Popular Item Slide -->
					<div class="papular-block block-slide">

						<c:forEach items="${listProductByCategory}" var="u">
						<!-- Item -->
						<div class="item">
							<!-- Item img -->
							<div class="item-img">
								<img class="img-1" src="/loadImage?imageName=${u.image}" alt=""> <img
									class="img-2" src="/loadImage?imageName=${u.image}" alt="">
								<!-- Overlay -->
								<div class="overlay">
									<div class="position-center-center">
										<div class="inn">
											<a href="/loadImage?imageName=${u.image}" data-lighter><i
												class="icon-magnifier"></i></a> <a href="/addToCart?id=${u.id}"><i
												class="icon-basket"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!-- Item Name -->
							<div class="item-name">
								<a href="#.">${u.name}</a>
<%--								<p>Lorem ipsum dolor sit amet</p>--%>
							</div>
							<!-- Price -->
							<span class="price"><small>$</small>${u.unitPrice}</span>
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