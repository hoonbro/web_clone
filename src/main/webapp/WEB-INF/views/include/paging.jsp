<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<body>
<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center" id="PageNav">
  
    <li class="page-item" data-page="1">
     	<a class="page-link" href="#">처음</a>
    </li>
  
  	<c:if test="${navigation.startRange eq true}">
  		<li class="page-item" data-page="1">
     		<a class="page-link" href="#">Previous</a>
    	</li>
  	</c:if>
  	<c:if test="${navigation.startRange eq false}">
  		<li class="page-item" data-page="${navigation.startPage-1}">
     		<a class="page-link" href="#">Previous</a>
    	</li>
  	</c:if>
  	
  	<c:forEach var="i" begin="${navigation.startPage}" end="${navigation.endPage}">
  		<c:if test="${navigation.currentPage eq i}">
  			<li class="page-item active" data-page="${i}">
  				<a class="page-link" href="#">${i}</a>
   			</li>
   		</c:if>
   		<c:if test="${navigation.currentPage ne i}">
  			<li class="page-item" data-page="${i}">
  				<a class="page-link" href="#">${i}</a>
   			</li>
  		</c:if>
  	</c:forEach>
  	
    <c:if test="${navigation.endRange eq true}">
  		<li class="page-item" data-page="${navigation.endPage}">
     		<a class="page-link" href="#">Next</a>
    	</li>
  	</c:if>
  	<c:if test="${navigation.endRange eq false}">
  		<li class="page-item" data-page="${navigation.endPage+1}">
     		<a class="page-link" href="#">Next</a>
    	</li>
  	</c:if>
  	
  	<li class="page-item" data-page="${navigation.totalPageCount}">
     	<a class="page-link" href="#">마지막</a>
    </li>
  </ul>
</nav>
</body>