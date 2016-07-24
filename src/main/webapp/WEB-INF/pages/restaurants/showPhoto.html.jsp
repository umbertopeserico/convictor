<%-- 
    Document   : showPhoto.html
    Created on : Jul 24, 2016, 2:48:06 PM
    Author     : uriel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="l" tagdir="/WEB-INF/tags/layouts/" %>
<%@taglib prefix="p" tagdir="/WEB-INF/tags/partials//" %>
<c:set var="photo" value="${requestScope.photo}" scope="request" />

<l:main>
  <jsp:attribute name="title">Foto ristorante</jsp:attribute>
    <jsp:attribute name="body">
		<div class="row">
              <div class="column">
                  <div class="ui comments">
					<!-- Reviews List -->
                      <div class="comment">
						<div class="content">
							<img class="ui centered image" src="${photo.url}">
						</div>
					  </div>
                    </div>
						<c:choose>
							<c:when test="${sessionScope.user.getClass().name == 'it.unitn.disi.webprog2016.convictor.app.beans.Administrator'}" >
								<a href="${pageContext.servletContext.contextPath}/restaurants/show?id=${photo.restaurantId}">
									Rimuovi foto
								</a>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.servletContext.contextPath}/restaurants/show?id=${photo.restaurantId}">
									Segnala fotografia
								</a>
							</c:otherwise>
						</c:choose>
						<div class="button black">
							
						</div>
						<div class="button black">
							<a href="${pageContext.servletContext.contextPath}/restaurants/show?id=${photo.restaurantId}">
								Vai alla pagina del ristorante
							</a>
						</div>
						<div class="button black">
							<a href="${pageContext.servletContext.contextPath}/userProfile/show">
								Torna al profilo
							</a>
						</div>
                </div>
                  
              </div>
      
    </jsp:attribute>
</l:main>