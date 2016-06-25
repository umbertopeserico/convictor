<%-- 
    Document   : index
    Created on : May 15, 2016, 10:32:00 AM
    Author     : Federica Balliana

    Variabili che arrivano dal controller
    - user (già settata con c:set da requestScope)
    - user.notices (riferirsi alla interfaccia Notice dei beans)

--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="l" tagdir="/WEB-INF/tags/layouts/" %>
<%@taglib prefix="partials" tagdir="/WEB-INF/tags/partials/" %>

<c:set var="user" scope="request" value="${requestScope.user}" />

<l:main>
	
	<jsp:attribute name="title">Accedi</jsp:attribute>
	
	<jsp:attribute name="body">
            <div class="ui container">

                <div class="text"> <h2> Il mio profilo </h2> </div>

                </br>

                <div class="text"> Nome: </div> 
                <div class="ui segment"> Nome </div>
                <div class="text"> Cognome: </div> 
                <div class="ui segment"> Cognome </div>
                <div class="text"> Email: </div> 
                <div class="ui segment"> Email </div>
                </br>
                <a href="${pageContext.request.contextPath}/userProfile/edit" class="fluid basic black ui button">Modifica le informazioni del profilo</a>
            </div>
            <div class="ui divider"></div>
            
            <!--restaurant_owner-->
            <c:if test="${user.getClass().name == 'it.unitn.disi.webprog2016.convictor.app.beans.RestaurantOwner'}" >
               <partials:restaurant_notices />
            </c:if>
            
            <!--admin-->           
            <c:if test="${user.getClass().name == 'it.unitn.disi.webprog2016.convictor.app.beans.Administrator'}" >
               <partials:admin_notices />
            </c:if>

	</jsp:attribute>        
		
</l:main>

