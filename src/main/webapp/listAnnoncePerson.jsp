<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fouad
  Date: 02/06/2022
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<div class="tab-pane fade show active" id="listings" role="tabpanel" aria-labelledby="all-listings">
    <div class="container">
        <div class="row">
            <c:forEach var="annonce" items="${annonceListPerson}">
                <div class="col-lg-4 col-sm-6">
                    <div class="atbd_single_listing atbd_listing_card">
                        <article class="atbd_single_listing_wrapper ">
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

<%--<table border="1" cellpadding="5" cellspacing="5">--%>
<%--    &lt;%&ndash;For displaying Previous link except for the 1st page &ndash;%&gt;--%>
<%--    <c:if test="${currentPage != 1}">--%>
<%--    <td><a href="myprofile?page=${currentPage - 1}">Previous</a></td>--%>
<%--    </c:if>--%>
<%--&lt;%&ndash;For displaying Page numbers. The when condition does not display--%>
<%--            a link for the current page&ndash;%&gt;--%>


<%--    <tr>--%>
<%--        <c:forEach begin="1" end="${noOfPages}" var="i">--%>
<%--                    <c:choose>--%>
<%--                        <c:when test="${currentPage eq i}">--%>
<%--                            <td>${i}</td>--%>
<%--                        </c:when>--%>
<%--                        <c:otherwise>--%>
<%--                            <td><a href="myprofile?page=${i}">${i}</a></td>--%>
<%--    </c:otherwise>--%>
<%--    </c:choose>--%>
<%--    </c:forEach>--%>
<%--    </tr>--%>


<%--    &lt;%&ndash;For displaying Next link &ndash;%&gt;--%>

<%--    <c:if test="${currentPage lt noOfPages}">--%>
<%--        <td><a href="myprofile?page=${currentPage + 1}">Next</a></td>--%>
<%--    </c:if>--%>
<%--</table>--%>
