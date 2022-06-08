<%@ page import="java.util.Date" %>
<%@ page import="java.util.concurrent.TimeUnit" %>
<%@ page import="models.Annonce" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${empty currentUser}">
    <c:redirect url="authentification.jsp"></c:redirect>
</c:if>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Direo Template</title>
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,600,700" rel="stylesheet">
    <!-- inject:css-->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="vendor_assets/css/brands.css">
    <link rel="stylesheet" href="vendor_assets/css/fontawesome.min.css">
    <link rel="stylesheet" href="vendor_assets/css/jquery-ui.css">
    <link rel="stylesheet" href="vendor_assets/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="vendor_assets/css/line-awesome.min.css">
    <link rel="stylesheet" href="vendor_assets/css/magnific-popup.css">
    <link rel="stylesheet" href="vendor_assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor_assets/css/select2.min.css">
    <link rel="stylesheet" href="vendor_assets/css/slick.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="vendor_assets/js/jquery/jquery-1.12.3.js" defer></script>
    <script src="vendor_assets/js/bootstrap/popper.js" defer></script>
    <script src="vendor_assets/js/bootstrap/bootstrap.min.js" defer></script>
    <script src="vendor_assets/js/jquery-ui.min.js" defer></script>
    <script src="vendor_assets/js/jquery.barrating.min.js" defer></script>
    <script src="vendor_assets/js/jquery.counterup.min.js" defer></script>
    <script src="vendor_assets/js/jquery.magnific-popup.min.js" defer></script>
    <script src="vendor_assets/js/jquery.mCustomScrollbar.concat.min.js" defer></script>
    <script src="vendor_assets/js/jquery.waypoints.min.js" defer></script>
    <script src="vendor_assets/js/masonry.pkgd.min.js" defer></script>
    <script src="vendor_assets/js/owl.carousel.min.js" defer></script>
    <script src="vendor_assets/js/select2.full.min.js" defer></script>
    <script src="vendor_assets/js/slick.min.js" defer></script>
    <script src="theme_assets/js/main.js" defer></script>
    <script src="js/author-profile.js" defer></script>
    <!-- endinject -->
    <link rel="icon" type="image/png" sizes="32x32" href="img/fevicon.png">
</head>

<body>
    <section class="header-breadcrumb bgimage overlay overlay--dark">
        <%@ include file="header.jsp" %>
        <div class="breadcrumb-wrapper content_above">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1 class="page-title">Author Profile</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">All Listings</li>
                            </ol>
                        </nav>
                    </div>
                    <div class="col-lg-12 col-md-5 d-flex align-items-end justify-content-start justify-content-md-end">
                        <div class="atbd_listing_action_area">
                            <div class="atbd_action atbd_save">
                                <div class="action_button">
<%--                                    <c:if test="${currentUser != null}">--%>
                                    <a id="rateBtn" href="#reviewForm" class="btn btn-xs btn-gradient btn-gradient-two">
                                        <span class="la la-star"></span> &#160;Rate
                                    </a>
<%--                                    </c:if>--%>
                                </div>
                            </div>
                        </div><!-- ends: .atbd_listing_action_area -->
                    </div>
                </div>
            </div>
        </div><!-- ends: .breadcrumb-wrapper -->
    </section>
    <section class="author-info-area section-padding-strict section-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="atbd_auhor_profile_area">
                        <div class="atbd_author_avatar">
                            <div class="atbd_auth_nd">
                                <h2>${author.nom} ${author.prenom}</h2>
<%--                                <p>Joined in March 2019</p>--%>
                            </div>
                        </div><!-- ends: .atbd_author_avatar -->
                        <div class="atbd_author_meta">
                            <div class="atbd_listing_meta">
                                <span class="atbd_meta atbd_listing_rating">${poster_rating_avg} <i class="la la-star"></i></span>
                                <p class="meta-info"><span>${poster_rating_count}</span>Reviews</p>
                            </div>
                            <p class="meta-info"><span>${noOfRecords}</span>Listings</p>
                        </div><!-- ends: .atbd_author_meta -->
                    </div><!-- ends: .atbd_auhor_profile_area -->
                </div><!-- ends: .col-lg-12 -->
                <div class="col-lg-8 col-md-7 m-bottom-30">
                    <div class="atbd_author_module">
                        <div class="atbd_content_module">
                            <div class="atbd_content_module__tittle_area">
                                <div class="atbd_area_title">
                                    <h4><span class="la la-user"></span>About Seller</h4>
                                </div>
                            </div>
                            <div class="atbdb_content_module_contents">
                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa kequi officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusan tium doloremque laudantium, totam rem aperiam the eaque ipsa quae abillo was inventore veritatis keret quasi aperiam architecto beatae vitae dicta sunt explicabo. Nemo ucxqui officia voluptatem accusantium doloremque laudan tium, totam rem ape dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas.
                                    <br> <br>
                                    Nemo enim ipsam voluptatem quia voluptas cupidatat non proident, sunt culpa qui officia dese runt mollit anim id est laborum. Sedu perspi sunt explicabo. Nemo ucxqui officia voluptatem hscia unde omnis proident.</p>
                            </div>
                        </div>
                    </div><!-- ends: .atbd_author_module -->
                </div><!-- ends: .col-md-8 -->
                <div class="col-lg-4 col-md-5 m-bottom-30">
                    <div class="widget atbd_widget widget-card">
                        <div class="atbd_widget_title">
                            <h4><span class="la la-phone"></span>Contact Info</h4>
                        </div><!-- ends: .atbd_widget_title -->
                        <div class="widget-body atbd_author_info_widget">
                            <div class="atbd_widget_contact_info">
                                <ul>
                                    <li>
                                        <span class="la la-phone"></span>
                                        <span class="atbd_info">${author_annonces.get(1).getTelephone_number()}</span>
                                    </li>
                                    <li>
                                        <span class="la la-envelope"></span>
                                        <span class="atbd_info">${author.email}</span>
                                    </li>
                                </ul>
                            </div><!-- ends: .atbd_widget_contact_info -->
                            <div class="atbd_social_wrap">
                                <p><a href=""><span class="fab fa-facebook-f"></span></a></p>
                                <p><a href=""><span class="fab fa-twitter"></span></a></p>
                                <p><a href=""><span class="fab fa-google-plus-g"></span></a></p>
                                <p><a href=""><span class="fab fa-linkedin-in"></span></a></p>
                                <p><a href=""><span class="fab fa-dribbble"></span></a></p>
                            </div><!-- ends: .atbd_social_wrap -->
                        </div><!-- ends: .widget-body -->
                    </div><!-- ends: .widget -->
                </div><!-- ends: .col-lg-4 -->
                <div class="col-lg-12">
                    <div class="atbd_author_listings_area m-bottom-30">
                        <h1>Author Listings</h1>
                        <div class="atbd_author_filter_area">
                            <div class="dropdown">
                                <a class="btn btn-outline-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Filter by Category <span class="caret"></span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a class="dropdown-item" href="">Restaurant</a>
                                    <a class="dropdown-item" href="">Education</a>
                                    <a class="dropdown-item" href="">Event</a>
                                    <a class="dropdown-item" href="">Food</a>
                                    <a class="dropdown-item" href="">Service</a>
                                    <a class="dropdown-item" href="">Travel</a>
                                    <a class="dropdown-item" href="">Others</a>
                                </div>
                            </div>
                        </div>
                    </div><!-- ends: .atbd_author_listings_area -->
                    <div class="row">
                        <c:forEach items="${author_annonces}" var="annonce" >
                            <div class="col-lg-4 col-sm-6">
                                <div class="atbd_single_listing ">
                                    <article class="atbd_single_listing_wrapper">
                                        <figure class="atbd_listing_thumbnail_area">
                                            <div class="atbd_listing_image">
                                                <a href="">
                                                    <img src="images/annonces_thumbnails/${annonce.thumbnail}" alt="listing image">
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
                                                    <span class="atbd_meta atbd_listing_price">${annonce.price} MAD</span>
                                                </div><!-- End atbd listing meta -->
                                                <div class="atbd_listing_data_list">
                                                    <ul>
                                                        <li>
                                                            <p><span class="la la-map-marker"></span>${annonce.terrain.ville}, ${annonce.terrain.region}</p>
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
                            </div><!-- ends: .col-md-6 -->
                        </c:forEach>

                    </div>
                </div><!-- ends: .col-lg-12 -->
            </div>
        </div>
    </section><!-- ends: .author-info-area -->
    <section class="directory_listiing_detail_area single_area section-bg section-padding-strict" style="padding-top: 0">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div id="reviewForm" class="atbd_content_module atbd_review_form">
                        <div class="atbd_content_module__tittle_area">
                            <div class="atbd_area_title">
                                <h4><span class="la la-star"></span>Add a Review</h4>
                            </div>
                        </div>
                        <div class="atbdb_content_module_contents atbd_give_review_area">
                            <div class="atbd_notice alert alert-info" role="alert">
                                <span class="la la-info" aria-hidden="true"></span>
                                You need to <a href="">Login</a> or <a href="">Register</a> to submit a review
                            </div><!-- ends: .atbd_notice -->
                            <form id="rating_form" method="post">
                                <input type="text" value="${author.id}" name="rated" hidden>
                                <input type="text" value="${sessionScope.currentUser.id}" name="rater" hidden>
                                <div class="atbd_review_rating_area">
                                    <!--It should be displayed on the left side -->
                                    <div class="atbd_review_update_rating">
                                        <span>Rating: </span>
                                        <div class="atbd_rating_stars">
                                            <div class="br-wrapper br-theme-fontawesome-stars m-left-15">
                                                <select class="" name="rating">
                                                    <!-- now hidden -->
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="3.5">3.5</option>
                                                    <option value="4">4</option>
                                                    <option value="4.3">4.3</option>
                                                    <option value="4.5">4.5</option>
                                                    <option value="4.7">4.7</option>
                                                    <option value="4.8">4.8</option>
                                                    <option value="4.9">4.9</option>
                                                    <option value="5">5</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div><!-- ends: .atbd_review_update_rating -->
                                </div><!-- ends: .atbd_review_rating_area -->
                                <div class="form-group">
                                    <textarea name="comment" id="review_content" class="form-control" placeholder="Commentaire" required></textarea>
                                </div>
                                <div class="form-group">
                                    <div id="atbd_up_preview"></div>
                                </div>
                                <!--If current user has a review then show him update and delete button-->
                                <button class="btn btn-gradient btn-gradient-one" type="submit" id="atbdp_review_form_submit">Submit Review</button> <!-- submit button -->
                            </form>
                        </div><!-- ends: .atbd_give_review_area -->
                    </div><!-- ends: .atbd_content_module -->
                </div>
            </div>
        </div>
    </section>
    <%@include file="footer.jsp"%>
    <div id="myModalRating" class="modal fade">
        <div class="modal-dialog modal-confirm">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="icon-box">
                        <i class="material-icons">&#xE876;</i>
                    </div>
                    <h4 class="modal-title">Awesome!</h4>
                </div>
                <div class="modal-body">
                    <p class="text-center">Votre rating a été bien enregistré.
                        (Veuillez noter que ça sera reviewed par notre équipe et peut être retiré par la suite.)</p>
                </div>
                <div class="modal-footer">
                    <button id="myModalOKRating" class="btn btn-success btn-block" data-dismiss="modal">OK</button>
                </div>
            </div>
        </div>
    </div>
</body>

</html>