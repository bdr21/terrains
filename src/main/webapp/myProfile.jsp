<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fouad
  Date: 01/06/2022
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
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
<%@include file="header.jsp"%>
<section class="author-info-area section-padding-strict section-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="atbd_auhor_profile_area">
                    <div class="atbd_author_avatar">
                        <img src="img/author-profile.jpg" alt="Author Image">
                        <div class="atbd_auth_nd">
                            <h2>${currentUser.nom} ${currentUser.prenom}</h2>
                            <p>Joined in March 2019</p>
                        </div>
                    </div><!-- ends: .atbd_author_avatar -->
                    <div class="atbd_author_meta">
                        <div class="atbd_listing_meta">
                            <span class="atbd_meta atbd_listing_rating">4.5 <i class="la la-star"></i></span>
                            <p class="meta-info"><span>22</span>Reviews</p>
                        </div>
                        <p class="meta-info"><span>15</span>Listings</p>
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
                        <h4><span class="la la-phone"></span>Mes Information</h4>
                    </div><!-- ends: .atbd_widget_title -->
                    <div class="widget-body atbd_author_info_widget">
                        <div class="atbd_widget_contact_info">
                            <form  method="POST" action="UpdateMyInfo" >
                                <input class="form-control search_fields" type="text" placeholder="Nom" name="nom" value="${currentUser.nom}" required/>
                                <input class="form-control search_fields" type="text" placeholder="Prenom" name="prenom" value="${currentUser.prenom}" required/>
                                <input class="form-control search_fields"  type="email" placeholder="Email" name="email" value="${currentUser.email}" required/>
                                <input class="form-control search_fields"  type="password" placeholder="Mot de passe" name="password" required />
                                <input class="form-control search_fields"  type="text" placeholder="Adresse" name="adresse" value="${currentUser.adresse}" required />
                                <button class="btn btn-block btn-gradient btn-gradient-one btn-md btn_search">Modifier</button>
                            </form>
                        </div><!-- ends: .atbd_widget_contact_info -->

                    </div><!-- ends: .widget-body -->
                </div><!-- ends: .widget -->
            </div><!-- ends: .col-lg-4 -->
        </div>
    </div>
</section><!-- ends: .author-info-area -->
<div class="atbd_author_listings_area m-bottom-30">
    <h1>Mes Annonces</h1>
</div><!-- ends: .atbd_author_listings_area -->

<j:choose>
    <j:when test="${not empty annonceListPerson}">
        <%@include file="listAnnoncePerson.jsp"%>
    </j:when>
    <j:otherwise>
        <j:out value="Vous n'avez  aucun annonce"> </j:out>
    </j:otherwise>
</j:choose>

<%@include file="footer.jsp"%>
<div class="modal fade" id="login_modal" tabindex="-1" role="dialog" aria-labelledby="login_modal_label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="login_modal_label"><i class="la la-lock"></i> Sign In</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/" id="login-form">
               /     <input type="text" class="form-control" placeholder="Username or Email" required>
                    <input type="password" class="form-control" placeholder="Password" required>
                    <div class="keep_signed custom-control custom-checkbox checkbox-outline checkbox-outline-primary">
                        <input type="checkbox" class="custom-control-input" name="keep_signed_in" value="1" id="keep_signed_in">
                        <label for="keep_signed_in" class="not_empty custom-control-label">Keep me signed in</label>
                    </div>
                    <button type="submit" class="btn btn-block btn-lg btn-gradient btn-gradient-two">Sign In</button>
                </form>
                <div class="form-excerpts">
                    <ul class="list-unstyled">
                        <li>Not a member? <a href="">Sign up</a></li>
                        <li><a href="">Recover Password</a></li>
                    </ul>
                    <div class="social-login">
                        <span>Or connect with</span>
                        <p><a href="" class="btn btn-outline-secondary"><i class="fab fa-facebook-f"></i> Facebook</a><a href="" class="btn btn-outline-danger"><i class="fab fa-google-plus-g"></i> Google</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="signup_modal" tabindex="-1" role="dialog" aria-labelledby="signup_modal_label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="signup_modal_label"><i class="la la-lock"></i> Sign Up</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/" id="signup-form">
                    <input type="email" class="form-control" placeholder="Email" required>
                    <input type="password" class="form-control" placeholder="Password" required>
                    <button type="submit" class="btn btn-block btn-lg btn-gradient btn-gradient-two">Sign Up</button>
                </form>
                <div class="form-excerpts">
                    <ul class="list-unstyled">
                        <li>Already a member? <a href="">Sign In</a></li>
                        <li><a href="">Recover Password</a></li>
                    </ul>
                    <div class="social-login">
                        <span>Or Signup with</span>
                        <p><a href="" class="btn btn-outline-secondary"><i class="fab fa-facebook-f"></i> Facebook</a><a href="" class="btn btn-outline-danger"><i class="fab fa-google-plus-g"></i> Google</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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
<!-- endinject-->
</body>

</html>
