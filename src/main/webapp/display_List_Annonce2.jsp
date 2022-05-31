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
                                            <span class="atbd_meta atbd_listing_price">${annonce.price}</span>
                                            <span class="atbd_meta atbd_badge_open"></span>
                                        </div><!-- End atbd listing meta -->
                                        <div class="atbd_listing_data_list">
                                            <ul>
                                                <li>
                                                    <p><span class="la la-map-marker"></span>Los Angeles, United States</p>
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
<%--For displaying Previous link except for the 1st page --%>
<c:if test="${currentPage != 1}">
    <td><a href="AnnonceList?page=${currentPage - 1}">Previous</a></td>
</c:if>

<%--For displaying Page numbers. The when condition does not display
            a link for the current page--%>

<table border="1" cellpadding="5" cellspacing="5">
    <tr>
        <c:forEach begin="1" end="${noOfPages}" var="i">
            <c:choose>
                <c:when test="${currentPage eq i}">
                    <td>${i}</td>
                </c:when>
                <c:otherwise>
                    <td><a href="AnnonceList?page=${i}">${i}</a></td>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </tr>
</table>

<%--For displaying Next link --%>

<c:if test="${currentPage lt noOfPages}">
    <td><a href="AnnonceList?page=${currentPage + 1}">Next</a></td>
</c:if>

</body>
</html>
