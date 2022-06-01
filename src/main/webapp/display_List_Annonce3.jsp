<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Annonces</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Direo Template</title>
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,600,700" rel="stylesheet">
    <!-- inject:css-->
    <link rel="stylesheet" href="vendor_assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="vendor_assets/css/brands.css">
    <link rel="stylesheet" href="vendor_assets/css/fontawesome.min.css">
    <link rel="stylesheet" href="vendor_assets/css/jquery-ui.css">
    <link rel="stylesheet" href="vendor_assets/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="vendor_assets/css/line-awesome.min.css">
    <link rel="stylesheet" href="vendor_assets/css/magnific-popup.css">
    <link rel="stylesheet" href="vendor_assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor_assets/css/select2.min.css">
    <link rel="stylesheet" href="vendor_assets/css/slick.css">
    <link rel="stylesheet" href="vendor_assets/css/style.css">
    <!-- endinject -->
    <link rel="icon" type="image/png" sizes="32x32" href="img/fevicon.png">
</head>

<body>
<section class="intro-wrapper bgimage overlay overlay--dark">
    <div class="bg_image_holder"><img src="images/intro.jpg" alt=""></div>
    <div class="mainmenu-wrapper">
        <div class="menu-area menu1 menu--light">
            <div class="top-menu-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="menu-fullwidth">
                                <div class="logo-wrapper order-lg-0 order-sm-1">
                                    <div class="logo logo-top">
                                        <a href="index.html"><img src="img/logo-white.png" alt="logo image" class="img-fluid"></a>
                                    </div>
                                </div><!-- ends: .logo-wrapper -->
                                <div class="menu-container order-lg-1 order-sm-0">
                                    <div class="d_menu">
                                        <nav class="navbar navbar-expand-lg mainmenu__menu">
                                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#direo-navbar-collapse" aria-controls="direo-navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
                                                <span class="navbar-toggler-icon icon-menu"><i class="la la-reorder"></i></span>
                                            </button>
                                            <!-- Collect the nav links, forms, and other content for toggling -->
                                            <div class="collapse navbar-collapse" id="direo-navbar-collapse">
                                                <ul class="navbar-nav">
                                                    <li>
                                                        <a href="index.html">Home</a>
                                                    </li>
                                                    <li class="dropdown has_dropdown">
                                                        <a href="#" class="dropdown-toggle" id="drop3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Listings</a>
                                                        <ul class="dropdown-menu" aria-labelledby="drop3">
                                                            <li><a href="all-listings-grid.html">Listing Grid</a></li>
                                                            <li><a href="all-listings-list.html">Listing List</a></li>
                                                            <li><a href="listing-details.html">Listing Details</a></li>
                                                            <li><a href="add-listing.html">Add Listing</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown has_dropdown">
                                                        <a href="#" class="dropdown-toggle" id="drop4" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</a>
                                                        <ul class="dropdown-menu" aria-labelledby="drop4">
                                                            <li><a href="all-categories.html">All Categories</a></li>
                                                            <li><a href="all-locations.html">All Locations</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown has_dropdown">
                                                        <a class="dropdown-toggle" href="#" id="drop2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            Pages
                                                        </a>
                                                        <ul class="dropdown-menu" aria-labelledby="drop2">
                                                            <li><a href="author-profile.html">Author Profile</a></li>
                                                            <li><a href="dashboard-listings.html">Author Dashboard</a></li>
                                                            <li><a href="pricing-plans.html">Pricing Plans</a></li>
                                                            <li><a href="checkout.html">Checkout</a></li>
                                                            <li><a href="invoice.html">Invoice</a></li>
                                                            <li><a href="faqs.html">FAQ</a></li>
                                                            <li><a href="about.html">About</a></li>
                                                            <li><a href="contact.html">Contact</a></li>
                                                            <li><a href="cards.html">Products Cards</a></li>
                                                            <li><a href="headers.html">Header Styles</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown has_dropdown">
                                                        <a class="dropdown-toggle" href="#" id="drop1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            Blog
                                                        </a>
                                                        <ul class="dropdown-menu" aria-labelledby="drop1">
                                                            <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                                            <li><a href="blog-grid.html">Blog Grid Layout</a></li>
                                                            <li><a href="blog-details-standard.html">Blog Details</a></li>
                                                            <!-- dropdowns example -->
                                                            <li class="dropdown-menu--inner">
                                                                <a href="#">Dropdown Levels</a>
                                                                <ul class="list-unstyled">
                                                                    <li><a href="">Places</a></li>
                                                                    <li><a href="">Shop</a></li>
                                                                    <li><a href="">Business</a></li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- /.navbar-collapse -->
                                        </nav>
                                    </div>
                                </div>
                                <div class="menu-right order-lg-2 order-sm-2">
                                    <div class="search-wrapper">
                                        <div class="nav_right_module search_module">
                                            <span class="icon-left" id="basic-addon9"><i class="la la-search"></i></span>
                                            <div class="search_area">
                                                <form action="/">
                                                    <div class="input-group input-group-light">
                                                        <input type="text" class="form-control search_field top-search-field" placeholder="What are you looking for?" autocomplete="off">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="search-categories">
                                            <ul class="list-unstyled">
                                                <li><a href=""><span class="la la-glass bg-danger"></span> Food & Drinks</a></li>
                                                <li><a href=""><span class="la la-cutlery bg-primary"></span> Restaurants</a></li>
                                                <li><a href=""><span class="la la-map-marker bg-success"></span> Places</a></li>
                                                <li><a href=""><span class="la la-shopping-cart bg-secondary"></span> Shopping & Store</a></li>
                                                <li><a href=""><span class="la la-bed bg-info"></span> Hotels</a></li>
                                                <li><a href=""><span class="la la-bank bg-warning"></span> Art & History</a></li>
                                            </ul>
                                        </div>
                                    </div><!-- ends: .search-wrapper -->
                                    <!-- start .author-area -->
                                    <div class="author-area">
                                        <div class="author__access_area">
                                            <ul class="d-flex list-unstyled align-items-center">
                                                <li>
                                                    <a href="add-listing.html" class="btn btn-xs btn-gradient btn-gradient-two">
                                                        <span class="la la-plus"></span> Add Listing
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="" class="access-link" data-toggle="modal" data-target="#login_modal">Login</a>
                                                    <span>or</span>
                                                    <a href="" class="access-link" data-toggle="modal" data-target="#signup_modal">Register</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- end .author-area -->
                                    <div class="offcanvas-menu d-none">
                                        <a href="" class="offcanvas-menu__user"><i class="la la-user"></i></a>
                                        <div class="offcanvas-menu__contents">
                                            <a href="" class="offcanvas-menu__close"><i class="la la-times-circle"></i></a>
                                            <div class="author-avatar">
                                                <img src="img/author-avatar.png" alt="" class="rounded-circle">
                                            </div>
                                            <ul class="list-unstyled">
                                                <li><a href="dashboard-listings.html">My Profile</a></li>
                                                <li><a href="dashboard-listings.html">My Listing</a></li>
                                                <li><a href="dashboard-listings.html">Favorite Listing</a></li>
                                                <li><a href="add-listing.html">Add Listing</a></li>
                                                <li><a href="">Logout</a></li>
                                            </ul>
                                            <div class="search_area">
                                                <form action="/">
                                                    <div class="input-group input-group-light">
                                                        <input type="text" class="form-control search_field" placeholder="Search here..." autocomplete="off">
                                                    </div>
                                                    <button type="submit" class="btn btn-sm btn-secondary">Search</button>
                                                </form>
                                            </div><!-- ends: .search_area -->
                                        </div><!-- ends: .author-info -->
                                    </div><!-- ends: .offcanvas-menu -->
                                </div><!-- ends: .menu-right -->
                            </div>
                        </div>
                    </div>
                    <!-- end /.row -->
                </div>
                <!-- end /.container -->
            </div>
            <!-- end  -->
        </div>
    </div><!-- ends: .mainmenu-wrapper -->
    <div class="directory_content_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="search_title_area">
                        <h2 class="title">trouvez un terrain agricole</h2>
                        <p class="sub_title">tous les terrains agricoles des douzes régions du Maroc</p>
                    </div><!-- ends: .search_title_area -->
                    <form method="GET" action="AnnonceFilter" class="search_form">
                        <div class="atbd_seach_fields_wrapper">
                            <div class="single_search_field search_query">
                                <input class="form-control search_fields" type="text" placeholder="chercher par titre?" name="title" required>
                            </div>
                            <div class="single_search_field search_category">
                                <select class="search_fields" id="at_biz_dir-category" name="region" required>
                                    <option value="Rabat">Rabat, Salé, Kénitra</option>
                                    <option value="Casablanca">Casablanca, Settat</option>
                                    <option value="Fès">Fès, Meknès</option>
                                    <option value="Errachidia">Drâa, Tafilalet</option>
                                    <option value="Béni Mellal">Béni Mellal, Khénifra </option>
                                    <option value="Tanger">Tanger, Tétouan, Al Hoceïma</option>
                                    <option value="Souss">Souss, Massa</option>
                                    <option value="Marrakech">Marrakech, Safi</option>
                                    <option value="Oriental">Oriental</option>
                                    <option value="Guelmim">Guelmim, Oued Noun</option>
                                    <option value="Laâyoune">Laâyoune, Sakia El Hamra</option>
                                    <option value="Dakhla">Dakhla, Oued Ed Dahab</option>
                                </select>
                            </div>
                            <div class="single_search_field search_query">
                                <input class="form-control search_fields" type="number" placeholder="votre budget" name="price" required>

                            </div>
                            <div class="atbd_submit_btn">
                                <button type="submit" class="btn btn-block btn-gradient btn-gradient-one btn-md btn_search">Search</button>
                            </div>
                        </div>
                    </form><!-- ends: .search_form -->

                </div><!-- ends: .col-lg-10 -->
            </div>
        </div>
    </div><!-- ends: .directory_search_area -->
</section><!-- ends: .intro-wrapper -->
<div class="col-lg-12 listing-items">
    <div class="row">
        <div class="col-lg-8 order-0 order-lg-1">
            <div class="row">
                <c:forEach var="annonce" items="${annonceList}">
                    <div class="col-lg-12">
                        <div class="atbd_single_listing atbd_listing_list">
                            <article class="atbd_single_listing_wrapper">
                                <figure class="atbd_listing_thumbnail_area">
                                    <div class="atbd_listing_image">
                                        <a href="">
                                            <img src="${annonce.thumbnail}" alt="listing image">
                                        </a>
                                    </div><!-- ends: .atbd_listing_image -->
                                    <div class="atbd_thumbnail_overlay_content">
                                        <ul class="atbd_upper_badge">
                                            <li><span class="atbd_badge atbd_badge_featured">Featured</span></li>
                                        </ul><!-- ends .atbd_upper_badge -->
                                    </div><!-- ends: .atbd_thumbnail_overlay_content -->
                                </figure><!-- ends: .atbd_listing_thumbnail_area -->
                                <div class="atbd_listing_info">
                                    <div class="atbd_content_upper">
                                        <h4 class="atbd_listing_title">
                                            <a href="">${annonce.title}</a>
                                        </h4>
                                        <div class="atbd_listing_meta">
                                            <span class="atbd_meta atbd_listing_rating">4.5<i class="la la-star"></i></span>
                                            <span class="atbd_meta atbd_listing_price">${annonce.price}dhs</span>
                                            <span class="atbd_meta atbd_badge_open"></span>
                                        </div><!-- End atbd listing meta -->
                                        <div class="atbd_listing_data_list">
                                            <ul>
                                                <li>
                                                    <p><span class="la la-map-marker"></span>${annonce.terrain.adresse}</p>
                                                </li>
                                                <li>
                                                    <p><span class="la la-phone"></span>${annonce.telephone_number}</p>
                                                </li>
                                                <li>
                                                    <p><span class="la la-calendar-check-o"></span>${annonce.dateDePub}</p>
                                                </li>
                                            </ul>
                                        </div><!-- End atbd listing meta -->
                                    </div><!-- end .atbd_content_upper -->
                                </div><!-- ends: .atbd_listing_info -->
                            </article><!-- atbd_single_listing_wrapper -->
                        </div>
                    </div><!-- ends: .col-lg-12 -->
                </c:forEach>
            </div><!-- end .atbd_content_upper -->
            </article><!-- atbd_single_listing_wrapper -->
        </div>
    </div><!-- ends: .col-lg-12 -->
</div>
</div><!-- ends: .col-lg-8 -->
</div>
</div><!-- ends: .listing-items -->
<table border="1" cellpadding="5" cellspacing="5">
<%--For displaying Previous link except for the 1st page --%>
<c:if test="${currentPage != 1}">
    <td><a href="AnnonceList?page=${currentPage - 1}&title=${titre}&price=${price}&region=${region}>Previous</a></td>
</c:if>
<%--For displaying Page numbers. The when condition does not display
            a link for the current page--%>


    <tr>
        <c:forEach begin="1" end="${noOfPages}" var="i">
                    <c:choose>
                        <c:when test="${currentPage eq i}">
                            <td>${i}</td>
                        </c:when>
                        <c:otherwise>
                            <td><a href="AnnonceList?page=${i}&title=${titre}&price=${price}&region=${region}">${i}</a></td>
                        </c:otherwise>
                    </c:choose>
        </c:forEach>
    </tr>


<%--For displaying Next link --%>

<c:if test="${currentPage lt noOfPages}">
<td><a href="AnnonceList?page=${currentPage + 1}&title=${titre}&price=${price}&region=${region}">Next</a></td>
</c:if>
</table>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0C5etf1GVmL_ldVAichWwFFVcDfa1y_c"></script>
<!-- inject:js-->
<script src="vendor_assets/js/jquery/jquery-1.12.3.js"></script>
<script src="vendor_assets/js/bootstrap/popper.js"></script>
<script src="vendor_assets/js/bootstrap/bootstrap.min.js"></script>
<script src="vendor_assets/js/jquery-ui.min.js"></script>
<script src="vendor_assets/js/jquery.barrating.min.js"></script>
<script src="vendor_assets/js/jquery.counterup.min.js"></script>
<script src="vendor_assets/js/jquery.magnific-popup.min.js"></script>
<script src="vendor_assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="vendor_assets/js/jquery.waypoints.min.js"></script>
<script src="vendor_assets/js/masonry.pkgd.min.js"></script>
<script src="vendor_assets/js/owl.carousel.min.js"></script>
<script src="vendor_assets/js/select2.full.min.js"></script>
<script src="vendor_assets/js/slick.min.js"></script>
<script src="theme_assets/js/locator.js"></script>
<script src="theme_assets/js/main.js"></script>
<script src="theme_assets/js/map.js"></script>
</body>
</html>
