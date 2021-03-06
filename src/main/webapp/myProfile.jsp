<%@ page import="dao.impl.AnnonceDaoImp" %>
<%@ page import="models.Message" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<j:if test="${empty currentUser}">
    <j:redirect context="authentification.jsp"></j:redirect>
</j:if>

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
    <style>


        .container1 {
            border: 2px solid #dedede;
            background-color: #f1f1f1;
            border-radius: 5px;
            padding: 10px;
            margin: 10px 0;
        }

        .darker {
            border-color: #8b8282;
            background-color: #ddd;
        }

        .container1::after {
            content: "";
            clear: both;
            display: table;
        }

        .container1 img {
            float: left;
            max-width: 60px;
            width: 100%;
            margin-right: 20px;
            border-radius: 50%;
        }

        .container1 img.right {
            float: right;
            margin-left: 20px;
            margin-right:0;
        }

        .time-right {
            float: right;
            color: #aaa;
        }

        .time-left {
            float: left;
            color: #999;
        }
    </style>
</head>

<body>
<section class="header-breadcrumb bgimage overlay overlay--dark">
    <%@ include file="header.jsp" %>
    <div class="breadcrumb-wrapper content_above">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1 class="page-title">My Profile</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">My Profile</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div><!-- ends: .breadcrumb-wrapper -->
</section>
<section class="author-info-area section-bg">
    <div class="dashboard-nav">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="dashboard-nav-area">
                        <ul class="nav" id="dashboard-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="all-listings" data-toggle="tab" href="#listings" role="tab" aria-controls="listings" aria-selected="true">My Listings</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">My Profile</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="faborite-listings" data-toggle="tab" href="#favorite" role="tab" aria-controls="favorite" aria-selected="false">Favorite Listing</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="incoming-messages-tab" data-toggle="tab" href="#incoming-messages-tab-pane" role="tab" aria-controls="incoming-messages-tab-pane" aria-selected="false">Incoming Messages</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="outgoing-messages-tab" data-toggle="tab" href="#outgoing-messages-tab-pane" role="tab" aria-controls="outgoing-messages-tab-pane" aria-selected="false">Outgoing Messages</a>
                            </li>
                        </ul>
                        <div class="nav_button">
                            <a href="add-listing.jsp" class="btn btn-primary"><span class="la la-plus"></span> Add Listing</a>
                        </div>
                    </div>
                </div><!-- ends: .col-lg-12 -->
            </div>
        </div>
    </div><!-- ends: .dashboard-nav -->
    <div class="tab-content p-top-100" id="dashboard-tabs-content">
        <c:choose>
            <c:when test="${not empty annonceListPerson}">
                <%@include file="listAnnoncePerson.jsp"%>
            </c:when>
            <c:otherwise>
                <c:out value="Vous n'avez  aucun annonce"> </c:out>
            </c:otherwise>
        </c:choose>
        <div class="tab-pane fade p-bottom-30" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="atbd_auhor_profile_area">
                            <div class="atbd_author_avatar">
                                <img src="img/author-profile.jpg" alt="Author Image">
                                <div class="atbd_auth_nd">
                                    <h2>${currentUser.nom} ${currentUser.prenom}</h2>
<%--                                    <p>Joined in March 2019</p>--%>
                                </div>
                            </div><!-- ends: .atbd_author_avatar -->
                            <div class="atbd_author_meta">
                                <div class="atbd_listing_meta">
                                    <span class="atbd_meta atbd_listing_rating">${poster_rating_avg} <i class="la la-star"></i></span>
                                    <p class="meta-info"><span>${poster_rating_count}</span>Reviews</p>
                                </div>
                                <p class="meta-info"><span>${nbrAnnonces}</span>Listings</p>
                            </div><!-- ends: .atbd_author_meta -->
                        </div><!-- ends: .atbd_auhor_profile_area -->
                    </div><!-- ends: .col-lg-12 -->
                    <div class="col-lg-3 col-md-4 mb-5 mb-lg-0">
                        <div class="user_pro_img_area">
                            <img src="img/author-profile.jpg" alt="">
                            <div class="image-info">
                                <h6>Profile Image</h6>
                                <span>JPG or PNG 120x120 px</span>
                            </div>
                            <div class="custom-file-upload">
                                <input type="file" id="customFile">
                                <label for="customFile" class="btn btn-sm btn-secondary">Upload New Image</label>
                            </div>
                            <button class="btn btn-sm btn-danger">Delete Image</button>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8">
                        <div class="atbd_author_module">
                            <div class="atbd_content_module">
                                <div class="atbd_content_module__tittle_area">
                                    <div class="atbd_area_title">
                                        <h4><span class="la la-user"></span>My Profile</h4>
                                    </div>
                                </div>
                                <div class="atbdb_content_module_contents">
                                    <div class="user_info_wrap">
                                        <!--Full name-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="first_name" class="not_empty">First Name</label>
                                                    <input class="form-control" id="first_name" type="text" name="user[first_name]" value="${currentUser.prenom}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="last_name" class="not_empty">Last Name</label>
                                                    <input class="form-control" id="last_name" type="text" value="${currentUser.nom}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="req_email" class="not_empty">Email (required)</label>
                                                    <input class="form-control" id="req_email" type="text" value="${currentUser.email}" required="">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="address" class="not_empty">Address</label>
                                                    <input class="form-control" id="address" type="text" value="${currentUser.adresse}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="new_pass" class="not_empty">New Password</label>
                                                    <input id="new_pass" class="form-control" type="password" placeholder="Password">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="confirm_pass" class="not_empty">Confirm New Password</label>
                                                    <input id="confirm_pass" class="form-control" type="password" placeholder="Re-enter Password">
                                                </div>
                                            </div>
                                        </div>
                                        <!--ends social info .row-->
                                        <button type="submit" class="btn btn-primary" id="update_user_profile">Save Changes</button>
                                    </div>
                                </div>
                            </div>
                        </div><!-- ends: .atbd_author_module -->
                    </div>
                </div>
            </div>
        </div><!-- ends: .tab-pane -->
        <div class="tab-pane fade p-bottom-30" id="favorite" role="tabpanel" aria-labelledby="faborite-listings">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="atbd_saved_items_wrapper">
                            <div class="atbd_content_module">
                                <div class="atbd_content_module__tittle_area">
                                    <div class="atbd_area_title">
                                        <h4><span class="la la-list"></span>My Favorite Listings</h4>
                                    </div>
                                </div>
                                <div class="atbdb_content_module_contents">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th scope="col">Listing Name</th>
                                                <th scope="col">Preview</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${favoris}" var="fav">
                                                <tr id="${fav.id}">
                                                    <td><a href="">${fav.annonce.title}</a></td>
                                                    <td>
                                                        <img style="height: 5rem" src="images/annonces_thumbnails/${fav.annonce.thumbnail}"/>
                                                        <c:set var="gallerieArray" value="${fn:split(fav.annonce.gallerie, ',')}"/>
                                                        <c:forEach begin="0" end="3" items="${gallerieArray}" var="gal">
                                                            <img style="height: 5rem" src="images/annonces_galleries/${gal}"/>
                                                        </c:forEach>
                                                    </td>
                                                    <td><a onclick="supprimerFav(this)" data-id="${fav.id}" class="remove-favorite"><span class="la la-times"></span></a></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!-- ends: .atbdb_content_module_contents -->
                            </div>
                        </div><!--  ends: .atbd_saved_items_wrapper -->
                    </div><!-- ends: .col-lg-12 -->
                </div>
            </div>
        </div><!-- ends: .tab-pane -->
        <div class="tab-pane fade p-bottom-30" id="incoming-messages-tab-pane" role="tabpanel" aria-labelledby="incoming-messages">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 m-bottom-30">
                        <div class="checkout-table table-responsive">
                            <table id="" class="table table-bordered">
                                <thead>
                                <tr>
                                    <th colspan="1">Annonce</th>
                                    <th colspan="1">Personne</th>
                                    <th colspan="1"><strong>Content</strong></th>
                                    <th colspan="1"><strong>Actions</strong></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="msg" items="${messages}">
                                    <c:if test="${msg.receiver.id == currentUser.getId()}">
                                        <tr>
                                            <td>
                                                <div class="custom-control custom-checkbox checkbox-outline checkbox-outline-primary custom-control-inline">
                                                        <%--    <input type="checkbox" class="custom-control-input" id="select_one" value="one" checked="">--%>
                                                        <%--    <label class="custom-control-label" for="select_one"></label>--%>
                                                    <img STYLE="height: 5rem;" src="images/annonces_thumbnails/${msg.annonce.thumbnail}">
                                                </div>
                                            </td>
                                            <td>
                                                <h4>???? : ${msg.sender.getNom()} ${msg.sender.getPrenom()}</h4>
                                                <br />
                                                <h4>?????? : ${msg.sender.email}</h4>
                                            </td>
                                            <td>
                                                <p>${msg.getText()}</p>
                                            </td>
                                            <td>
                                                <a onclick="getData(this)" href data-id="${msg.sender.id}" data-currentUser="${currentUser.id}"  class="access-link" data-toggle="modal" data-target="#chat_AvecQui">View conversation</a>
                                            </td>
                                        </tr>
                                    </c:if>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div><!-- ends: .checkout-table -->
                    </div><!-- ends: .col-lg-4 -->
                </div>
            </div>
        </div><!-- ends: .tab-pane -->
        <div class="tab-pane fade p-bottom-30" id="outgoing-messages-tab-pane" role="tabpanel" aria-labelledby="outgoing-messages">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 m-bottom-30">
                        <div class="checkout-table table-responsive">
                            <table id="directorist-checkout-table" class="table table-bordered">
                                <thead>
                                <tr>
                                    <th colspan="1">Annonce</th>
                                    <th colspan="1">Personne</th>
                                    <th colspan="1"><strong>Content</strong></th>
                                    <th colspan="1"><strong>Actions</strong></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="msg" items="${messages}">
                                    <c:if test="${msg.sender.id == currentUser.getId()}">
                                        <tr>
                                            <td>
                                                <div class="custom-control custom-checkbox checkbox-outline checkbox-outline-primary custom-control-inline">
                                                        <%--    <input type="checkbox" class="custom-control-input" id="select_one" value="one" checked="">--%>
                                                        <%--    <label class="custom-control-label" for="select_one"></label>--%>
                                                    <img STYLE="height: 5rem;" src="images/annonces_thumbnails/${msg.annonce.thumbnail}">
                                                </div>
                                            </td>
                                            <td>
                                                <h4>???? : ${msg.receiver.getNom()} ${msg.receiver.getPrenom()}</h4>
                                                <br />
                                                <h4>?????? : ${msg.receiver.email}</h4>
                                            </td>
                                            <td>
                                                <p>${msg.getText()}</p>
                                            </td>
                                            <td>
                                                <a onclick="getData(this)" href data-id="${msg.receiver.getId()}" data-currentUser="${currentUser.id}"  class="access-link" data-toggle="modal" data-target="#chat_AvecQui">View conversation</a>
                                            </td>
                                        </tr>
                                    </c:if>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div><!-- ends: .checkout-table -->
                    </div><!-- ends: .col-lg-4 -->
                </div>
            </div>
        </div><!-- ends: .tab-pane -->

    </div>

</section><!-- ends: .author-info-area -->

<%@include file="footer.jsp"%>

<div class="modal fade" id="chat_AvecQui" tabindex="-1" role="dialog" aria-labelledby="login_modal_label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="login_modal_label"><i class="la la-lock"></i>Chat Messages</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="comments-area">
                <div class="comment-lists">
                    <ul class="media-list list-unstyled">
                        <c:choose>
                            <c:when test="${not empty messages}">
                                <c:forEach var="msg" items="${messages}">
                                    <c:choose>
                                    <c:when test="${msg.receiver.id == currentUser.getId()}">
                                        <li class="depth-1" style="margin-bottom: 0">
                                            <div class="media">
                                                <div>
                                                    <a href="" class="cmnt_avatar">
                                                        <img src="images/avatar-60x60.jpg" alt="" class="media-object rounded-circle">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <div class="media_top">
                                                        <div class="heading_left">
                                                            <a href="#">
                                                                <h6 class="media-heading">???? : ${msg.sender.nom} ${msg.sender.prenom}</h6>
                                                                <h6 class="media-heading">?????? : ${msg.sender.email}</h6>
                                                            </a>
                                                            <span>??? : ${msg.getCreatedAt()}</span>
                                                        </div>
                                                    </div>
                                                    <p>???? : ${msg.getText()}</p>
                                                </div>
                                            </div><!-- ends: .media -->
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="depth-1" style="margin-bottom: 0; border : '1px solid #e3e6ef'">
                                            <div class="media">
                                                <div style="order : 2">
                                                    <a href="" class="cmnt_avatar">
                                                        <img src="images/avatar-60x60.jpg" alt="" class="media-object rounded-circle">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <div class="media_top">
                                                        <div class="heading_left">
                                                            <a href="#">
                                                                <h6 class="media-heading">???? : ${msg.sender.nom} ${msg.sender.prenom}</h6>
                                                                <h6 class="media-heading">?????? : ${msg.sender.email}</h6>
                                                            </a>
                                                            <span>??? : ${msg.getCreatedAt()}</span>
                                                        </div>
                                                    </div>
                                                    <p>???? : ${msg.getText()}</p>
                                                </div>
                                            </div><!-- ends: .media -->
                                        </li>
                                    </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <li class="depth-1">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_top">
                                            </div>
                                            <p>Pas de messages trouv??s.</p>
                                        </div>
                                    </div><!-- ends: .media -->
                                </li><!-- ends: .depth-1 -->
                            </c:otherwise>
                        </c:choose>
                    </ul><!-- ends: .media-list -->
                </div><!-- ends: .comment-lists -->
                <div class="text-center m-top-50">
                    <a style="cursor: default; color: #903af9" data-dismiss="modal" aria-label="Close" class="m-bottom-15 btn btn-outline-secondary btn-icon icon-left"><i class="la la-lock"></i>Fin</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function getData(e)
    {
        let xmlhttp = new XMLHttpRequest();
        var currentUser = e.getAttribute("data-currentUser")
        var messages
        var modalContent = document.querySelector(".chat")
        xmlhttp.onreadystatechange=function()
        {
            if (this.readyState==4){
                console.log(this);
                messages =JSON.parse(this.response);
                console.log(messages)
                modalContent.innerHTML ="";
                for(let i=0;i<messages.length;i++)
                {
                    console.log(messages[i])
                    if(messages[i].receiver.id == currentUser)
                    {
                        modalContent.innerHTML+="<div class='container1 darker'> <img src='/w3images/avatar_g2.jpg' alt='Avatar' class='right' style='width:100%;'>"+
                            "<p>"+messages[i].text+"</p>"+
                            "<span class='time-left'>"+messages[i].createdAt+"</span>"+
                            "</div>"
                    }
                    else
                    {
                        modalContent.innerHTML+="<div class='container1'> <img src='/w3images/avatar_g2.jpg' alt='Avatar' class='right' style='width:100%;'>"+
                            "<p>"+messages[i].text+"</p>"+
                            "<span class='time-left'>"+messages[i].createdAt+"</span>"+
                            "</div>"
                    }
                }

            }
        }

        xmlhttp.open("GET", "viewConversation?avecQui="+e.getAttribute("data-id"),true);
        xmlhttp.send();
    }
    function supprimerFav(e)
    {
        let xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange=function()
        {
            if (this.readyState==4){
                console.log("bien supprim??")
                document.getElementById(e.getAttribute("data-id")).remove()
            }
        }
        xmlhttp.open("GET", "delete-favori?id-favori="+e.getAttribute("data-id"),true);
        xmlhttp.send();
    }
</script>

</script>
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


<%--<div class="chat">--%>
<%--    <c:choose>--%>
<%--        <c:when test="${not empty messages}">--%>
<%--            <c:forEach var="msg" items="${messages}">--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${msg.receiver.id == currentUser.getId()}">--%>
<%--                        <div class="container1 darker">--%>
<%--                            <img src="/w3images/avatar_g2.jpg" alt="Avatar" class="right" style="width:100%;">--%>
<%--                            <p>${msg.getText()}</p>--%>
<%--                            <span class="time-left">${msg.getCreatedAt()}</span>--%>
<%--                        </div>--%>
<%--                    </c:when>--%>
<%--                    <c:otherwise>--%>
<%--                        <div class="container1">--%>
<%--                            <img src="/w3images/bandmember.jpg" alt="Avatar" style="width:100%;">--%>
<%--                            <p>${msg.getText()}</p>--%>
<%--                            <span class="time-left">${msg.getCreatedAt()}</span>--%>
<%--                        </div>--%>
<%--                    </c:otherwise>--%>
<%--                </c:choose>--%>
<%--            </c:forEach>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--            <section class="about-contents section-padding">--%>
<%--                <div class="container">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-lg-12 contents-wrapper">--%>
<%--                            <div class="contents">--%>
<%--                                <div class="row align-items-center">--%>
<%--                                    <div class="col-lg-5 col-sm-6">--%>
<%--                                        <img src="images/oups-image.png" alt="404">--%>
<%--                                    </div>--%>
<%--                                    <div class="col-lg-6 offset-lg-1 col-sm-6 mt-5 mt-md-0">--%>
<%--                                        <h1>Oups ! rien n'est trouv??</h1>--%>
<%--                                        <p>Essayer de rafraichir la page </p>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </section>--%>
<%--        </c:otherwise>--%>
<%--    </c:choose>--%>
<%--</div>--%>
