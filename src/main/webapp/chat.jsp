<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
  <style>
    body {
      margin: 0 auto;
      max-width: 800px;
      padding: 0 20px;
    }

    .container1 {
      border: 2px solid #dedede;
      background-color: #f1f1f1;
      border-radius: 5px;
      padding: 10px;
      margin: 10px 0;
    }

    .darker {
      border-color: #ccc;
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
<h2>Chat Messages</h2>
<c:choose>
  <c:when test="${not empty messages}">
  <c:forEach var="msg" items="${messages}">
    <c:choose>
    <c:when test="${msg.receiver.id == currentUser.getId()}">
      <div class="container1 darker">
        <img src="/w3images/avatar_g2.jpg" alt="Avatar" class="right" style="width:100%;">
        <p>${msg.getText()}</p>
        <span class="time-left">${msg.getCreatedAt()}</span>
      </div>
    </c:when>
    <c:otherwise>
      <div class="container1">
        <img src="/w3images/bandmember.jpg" alt="Avatar" style="width:100%;">
        <p>${msg.getText()}</p>
        <span class="time-left">${msg.getCreatedAt()}</span>
      </div>
    </c:otherwise>
  </c:choose>
</c:forEach>
  </c:when>
  <c:otherwise>
<section class="about-contents section-padding">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 contents-wrapper">
        <div class="contents">
          <div class="row align-items-center">
            <div class="col-lg-5 col-sm-6">
              <img src="images/oups-image.png" alt="404">
            </div>
            <div class="col-lg-6 offset-lg-1 col-sm-6 mt-5 mt-md-0">
              <h1>Oups ! rien n'est trouvé</h1>
              <p>Essayer de rafraichir la page </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </c:otherwise>
</c:choose>
<script>
  function koko()
  {
    console.log("heelo");
    let xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange=function(){
      if (this.readyState==4){
        console.log(this);
      }
    }
    xmlhttp.open("GET", "iewConversation?avecQui=88250",true);
    xmlhttp.send();
  }
</script>
</body>
</html>
