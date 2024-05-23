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
<header>
    <div class="sticky">
        <div class="container">

            <!-- Logo -->
            <div class="logo">
                <a href="/"><img class="img-responsive"
                                     src="images/logo.png" alt=""></a>
            </div>
            <nav class="navbar ownmenu">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed"
                            data-toggle="collapse" data-target="#nav-open-btn"
                            aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span> <span
                            class="icon-bar"><i class="fa fa-navicon"></i></span>
                    </button>
                </div>

                <!-- NAV -->
                <div class="collapse navbar-collapse" id="nav-open-btn">
                    <ul class="nav">
                        <li class="dropdown active"><a href="/"
                                                       class="dropdown-toggle" data-toggle="dropdown">Home</a>
                            </li>
                        <li class="dropdown"><a href="#." class="dropdown-toggle"
                                                data-toggle="dropdown">Category</a>
                            <ul class="dropdown-menu">
                                <c:forEach items="${categoryList}" var="categoryList">
                                <li><a href="productbycategory?categoryId=${categoryList.id}">${categoryList.name}</a></li>
                                </c:forEach>
                            </ul></li>

                        <li class="dropdown"><a href="#." class="dropdown-toggle"
                                                data-toggle="dropdown">Suppliers</a>
                            <ul class="dropdown-menu">
                                <c:forEach items="${supplierList}" var="supplierList">
                                <li><a href="productbysupplier?supplierId=${supplierList.id}">${supplierList.name}</a></li>
                                </c:forEach>
                            </ul></li>

                        <c:if test="${empty customer.id}">
                            <li><a href="/login">Login</a></li>
                            <li><a href="/register">Registration</a></li>
                        </c:if>

                    </ul>
                </div>

                <!-- Nav Right -->
                <div class="nav-right">
                    <ul class="navbar-right">

                        <!-- USER INFO -->
                        <c:if test="${not empty customer.id}">
                        <li class="dropdown user-acc"><a href="#"
                                                         class="dropdown-toggle" data-toggle="dropdown" role="button"><i
                                class="icon-user"></i> </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <h6>${customer.fullname}</h6>
                                </li>
                                <li><a href="/shoppingCart">MY CART</a></li>
                                <li><a href="/logout">LOG OUT</a></li>
                            </ul></li>
                        </c:if>

                        <!-- USER BASKET -->
                        <li class="dropdown user-basket"><a href="#"
                                                            class="dropdown-toggle" data-toggle="dropdown" role="button"
                                                            aria-haspopup="true" aria-expanded="true"><i
                                class="icon-basket-loaded"></i> </a>
                            <ul class="dropdown-menu">
                                <c:if test="${carts != null}">
                                <c:forEach items="${carts}" var="cart">
                                <li>
                                    <div class="media-left">
                                        <div class="cart-img">
                                            <a href="#"> <img class="media-object img-responsive"
                                                              src="/loadImage?imageName=${cart.product.image}" alt="...">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <h6 class="media-heading">${cart.product.name}</h6>
                                        <span class="price">${cart.product.unitPrice}</span> <span class="qty">QTY:
                                            ${cart.quantity}</span>
                                    </div>
                                </li>
                                </c:forEach>

                                <li>
                                    <h5 class="text-center">SUBTOTAL: ${totalPrice} USD</h5>
                                </li>
                                <li class="margin-0">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <a href="shoppingCart" class="btn">VIEW CART</a>
                                        </div>
                                        <div class="col-xs-6 ">
                                            <a href="checkout" class="btn">CHECK OUT</a>
                                        </div>
                                    </div>
                                </li>
                                </c:if>
                                <c:if test="${carts == null}">
                                <li>
                                    <h5 class="text-center">Không có sản phẩm nào trong đơn hàng!</h5>
                                </li>
                                </c:if>

                            </ul></li>

                        <!-- SEARCH BAR -->
                        <li class="dropdown"><a href="javascript:void(0);"
                                                class="search-open"><i class=" icon-magnifier"></i></a>
                            <div class="search-inside animated bounceInUp">
                                <i class="icon-close search-close"></i>
                                <div class="search-overlay"></div>
                                <div class="position-center-center">
                                    <div class="search">
                                        <form action="/header" method="post">
                                            <input type="search" name="name" placeholder="Search Shop">
                                            <button type="submit">
                                                <i class="icon-check"></i>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>