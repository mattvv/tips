<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Footy Tipping" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css" />
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.teal-red.min.css" />
    <link rel="stylesheet" href="/tips.css" />
    <style>
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 40px;
      z-index: 900;
    }
    </style>
    <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  </head>
  <body>
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

  <div class="tips-header mdl-layout__header mdl-layout__header--waterfall">
      <div class="mdl-layout__header-row">
          <span class="tips-title mdl-layout-title">
            Tips
          </span>
          <!-- Add spacer, to align navigation to the right in desktop -->
          <div class="tips-header-spacer mdl-layout-spacer"></div>
          <!-- Navigation -->
          <div class="tips-navigation-container">
              <nav class="tips-navigation mdl-navigation">
                <c:choose>
                <c:when test="${not empty token}">
                    <!-- using pageContext requires jsp-api artifact in pom.xml -->
                    <a class="mdl-navigation__link mdl-typography--text-uppercase" href="/logout">
                        <c:if test="${not empty userImageUrl}">
                            <img class="img-circle" src="${fn:escapeXml(userImageUrl)}" width="24">
                        </c:if>
                        ${fn:escapeXml(userEmail)}
                    </a>
                </c:when>
	            <c:when test="${empty token}">
                    <a class="mdl-navigation__link mdl-typography--text-uppercase" href="/login">Login</a>
                </c:when>
                </c:choose>
              </nav>
          </div>
          <span class="tips-mobile-title mdl-layout-title">
            Tips
          </span>
      </div>
  </div>
  <div class="tips-content mdl-layout__content">
  <c:import url="/${page}.jsp" />
  </div>
  </body>
</html>