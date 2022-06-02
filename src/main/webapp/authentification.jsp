<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fouad
  Date: 01/06/2022
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Authentification</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css'>
  <link rel="stylesheet" href="css/authentification.css">

</head>
<body>
<img src="/assets/logo.png" alt="Logo Archi-Tech" class="logo" >
<h2> S'AUTHENTIFIER </h2>
<div class="container" id="container">
  <div class="form-container sign-up-container">
    <form  method="POST" action="TraitementInscri">
      <h1>Créer un compte</h1>

      <input type="text" placeholder="Nom" name="nom" required/>
      <input type="text" placeholder="Prenom" name="prenom" required/>
      <input type="email" placeholder="Email" name="email" required/>
      <input type="password" placeholder="Mot de passe" name="password" required />
      <input type="text" placeholder="Adresse" name="adresse" required />
      <button>S'inscrire</button>
      <c:if test="${inscrit=='true'}">
        <c:out value="Vous êtes bien inscrit"></c:out>
      </c:if>
      <c:if test="${inscrit=='false'}">
        <c:out value="Vous n'êtes pas bien inscrit ! email déjà utilisé"></c:out>
      </c:if>
    </form>
  </div>
  <div class="form-container sign-in-container">
    <form method="POST" action="login-traitement">
      <h1>Se connecter</h1>
      <input type="email" placeholder="Email" name="email" />
      <input type="password" placeholder="Mot de passe" name="password" />
      <a href="#" class="forgot-password">Mot de passe oublié ?</a>
      <button>Se connecter</button>
      <c:if test="${connecte=='false'}">
        <c:out value="Vous n'êtes pas bien connecté ! Vérifier les données saisies"></c:out>
      </c:if>
      <c:if test="${inscrit=='false'}">
        <c:out value="Vous n'êtes pas bien inscrit"></c:out>
        <c:remove var="inscrit"/>
      </c:if>
    </form>
  </div>
  <div class="overlay-container">
    <div class="overlay">
      <div class="overlay-panel overlay-left">
        <h1>Content de vous revoir !</h1>
        <p>Pour rester en contact avec nous, veuillez vous connecter avec vos informations personnelles</p>
        <button class="ghost" id="signIn">Se connecter</button>

      </div>
      <div class="overlay-panel overlay-right">
        <h1>Salut, cher dev !</h1>
        <p>Entrez vos données personnelles et commencez votre expérience avec nous</p>
        <button class="ghost" id="signUp">S'inscrire</button>
      </div>
    </div>
  </div>
</div>

<!-- partial -->
<script  src="js/authentification.js"></script>

</body>
</html>