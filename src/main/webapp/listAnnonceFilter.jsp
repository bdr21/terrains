<%--
  Created by IntelliJ IDEA.
  User: fouad
  Date: 02/06/2022
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
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
  <td><a href="AnnonceFilter?page=${currentPage - 1}&title=${titre}&price=${price}&region=${region}">Previous</a></td>
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
                            <td><a href="AnnonceFilter?page=${i}&title=${titre}&price=${price}&region=${region}">${i}</a></td>
  </c:otherwise>
  </c:choose>
  </c:forEach>
  </tr>


  <%--For displaying Next link --%>

  <c:if test="${currentPage lt noOfPages}">
    <td><a href="AnnonceFilter?page=${currentPage + 1}&title=${titre}&price=${price}&region=${region}">Next</a></td>
  </c:if>
</table>
