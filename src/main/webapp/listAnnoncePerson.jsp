<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fouad
  Date: 02/06/2022
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<c:if test="${empty currentUser}">
    <c:redirect url="authentification.jsp"></c:redirect>
</c:if>
<div class="all-listing-wrapper tab-pane fade show active" id="listings" role="tabpanel" aria-labelledby="all-listings">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="atbd_generic_header">
                    <div class="atbd_generic_header_title">
                        <h4>All Items</h4>
                        <p>Total Listing Found: ${noOfRecords}</p>
                    </div><!-- ends: .atbd_generic_header_title -->
                    <div class="atbd_listing_action_btn btn-toolbar" role="toolbar">
                        <!-- Views dropdown -->
                        <div class="view-mode">
                            <a class="action-btn active" href="brouillon/all-listings-grid.html"><span class="la la-th-large"></span></a><a class="action-btn" href="../../../../direohtml/src/all-listings-list.html"><span class="la la-list"></span></a>
                        </div>
                        <!-- Orderby dropdown -->
                        <div class="dropdown">
                            <a class="action-btn dropdown-toggle" href="" role="button" id="dropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sort by <span class="caret"></span></a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink2">
                                <a class="dropdown-item" href="myprofile?page=${currentPage}&ordre=2">A to Z ( title )</a>
                                <a class="dropdown-item" href="myprofile?page=${currentPage}&ordre=3">Z to A ( title )</a>
                                <a class="dropdown-item active" href="AnnonceFilter?page=${currentPage}&ordre=4">Latest listings</a>
                                <a class="dropdown-item" href="myprofile?page=${currentPage}&ordre=5">Oldest listings</a>
                                <a class="dropdown-item" href="">Popular listings</a>
                                <a class="dropdown-item" href="myprofile?page=${currentPage}&ordre=6">Price ( low to high )</a>
                                <a class="dropdown-item" href="myprofile?page=${currentPage}&ordre=7">Price ( high to low )</a>
                                <a class="dropdown-item" href="myprofile?page=${currentPage}&ordre=1">Random listings</a>
                            </div>
                        </div>
                    </div><!-- ends: .atbd_listing_action_btn -->
                </div><!-- ends: .atbd_generic_header -->
            </div><!-- ends: .col-lg-12 -->
            <div class="col-lg-12 listing-items">
                <div class="row">
                    <div class="col-lg-12 order-lg-1 order-0">
                        <div class="row">
                            <c:forEach var="annonce" items="${annonceListPerson}">
                                <div class="col-lg-4 col-sm-6">
                                    <div class="atbd_single_listing atbd_listing_card">
                                        <article class="atbd_single_listing_wrapper ">
                                            <figure class="atbd_listing_thumbnail_area">
                                                <div class="atbd_listing_image">
                                                    <a href="listing-details-traitement?annonceId=${annonce.id}">
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
                                                        <a href="listing-details-traitement?annonceId=${annonce.id}">${annonce.title}</a>
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
                                        </article>
                                    </div><!-- ends: .atbd_single_listing -->
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">

                <nav class="navigation pagination d-flex justify-content-end" role="navigation">
                    <div class="nav-links">
                        <c:if test="${currentPage != 1}">
                            <a class="prev page-numbers" href="myprofile?page=${currentPage - 1}&ordre=${ordre}#listeAnnFilterSection">
                                <span class="la la-long-arrow-left"></span>
                            </a>
                        </c:if>
                        <c:forEach begin="1" end="${noOfPages}" var="i">
                            <c:choose>
                                <c:when test="${currentPage eq i}">
                                    <span aria-current="page" class="page-numbers current">${i}</span>
                                </c:when>
                                <c:otherwise>
                                    <a class="page-numbers" href="myprofile?page=${i}&ordre=${ordre}#listeAnnFilterSection">${i}</a>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <c:if test="${currentPage lt noOfPages}">
                            <a class="next page-numbers" href="myprofile?page=${currentPage + 1}#listeAnnFilterSection">
                                <span class="la la-long-arrow-right"></span>
                            </a>
                        </c:if>

                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>
















<%--<table border="1" cellpadding="5" cellspacing="5">--%>
<%--  &lt;%&ndash;For displaying Previous link except for the 1st page &ndash;%&gt;--%>
<%--  <c:if test="${currentPage != 1}">--%>
<%--    <td>--%>
<%--      <a href="AnnonceFilter?page=${currentPage - 1}&title=${titre}&price=${price}&region=${region}">Previous</a>--%>
<%--    </td>--%>
<%--  </c:if>--%>

<%--  <tr>--%>
<%--    <c:forEach begin="1" end="${noOfPages}" var="i">--%>
<%--      <c:choose>--%>
<%--        <c:when test="${currentPage eq i}">--%>
<%--          <td>${i}</td>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--          <td>--%>
<%--            <a href="AnnonceFilter?page=${i}&title=${titre}&price=${price}&region=${region}">${i}</a>--%>
<%--          </td>--%>
<%--        </c:otherwise>--%>
<%--      </c:choose>--%>
<%--    </c:forEach>--%>
<%--  </tr>--%>


<%--  &lt;%&ndash;For displaying Next link &ndash;%&gt;--%>

<%--  <c:if test="${currentPage lt noOfPages}">--%>
<%--    <td><a href="AnnonceFilter?page=${currentPage + 1}&title=${titre}&price=${price}&region=${region}">Next</a></td>--%>
<%--  </c:if>--%>
<%--</table>--%>