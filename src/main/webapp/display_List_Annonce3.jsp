<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
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
    <%@ include file="header.jsp" %>
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
                                <input value="" class="form-control search_fields" type="text" placeholder="chercher par titre?" name="title" >
                            </div>
                            <div class="single_search_field search_category">
                                <select class="search_fields" id="at_biz_dir-category" name="region" >
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
                                    <option value="" selected="selected">Tout le Maroc</option>
                                </select>
                            </div>
                            <div class="single_search_field search_query">
                                <input value="80000000" class="form-control search_fields" type="number" placeholder="votre budget" name="price" >

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
<%@include file="listAnnonceFilter.jsp" %>
<%@include file="footer.jsp"%>

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
