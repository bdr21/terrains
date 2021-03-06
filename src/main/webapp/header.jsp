<%--
  Created by IntelliJ IDEA.
  User: fouad
  Date: 02/06/2022
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="bg_image_holder"><img src="images/logo.png" alt=""></div>
<div class="mainmenu-wrapper">
    <div class="menu-area menu1 menu--light">
        <div class="top-menu-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="menu-fullwidth">
                            <div class="logo-wrapper order-lg-0 order-sm-1">
                                <div class="logo logo-top">
                                    <a href="index.jsp"><img style="height: 5rem;" src="images/logo-removebg.png" alt="logo image" class="img-fluid"></a>
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
                                                    <a href="index.jsp">Home</a>
                                                </li>
                                                <li>
                                                    <a href="myprofile">
                                                        Mon Profil
                                                    </a>
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
                                        <a href="index.jsp">
                                            <span class="icon-left" id="basic-addon9"><i class="la la-search"></i></span>
                                        </a>
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
                                                <a href="add-listing.jsp" class="btn btn-xs btn-gradient btn-gradient-two">
                                                    <span class="la la-plus"></span> Add Listing
                                                </a>
                                            </li>
                                            <% if (session.getAttribute("currentUser") == null) { %>
                                                <li>
                                                    <a href="authentification.jsp" class="access-link" >Login</a>
                                                    <span>or</span>
                                                    <a href="authentification.jsp" class="access-link" >Register</a>
                                                </li>
                                            <% } %>
                                            <% if (session.getAttribute("currentUser") != null) { %>
                                                <div class="nav_button">
                                                    <a href="signout" class="btn btn-secondary">Log Out</a>
                                                </div>
                                            <% } %>
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
                                            <li><a href="dashboard-listings.jsp">My Profile</a></li>
                                            <li><a href="dashboard-listings.jsp">My Listing</a></li>
                                            <li><a href="dashboard-listings.jsp">Favorite Listing</a></li>
                                            <li><a href="add-listing.jsp">Add Listing</a></li>
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

