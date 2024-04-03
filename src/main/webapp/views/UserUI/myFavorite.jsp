<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %> 
<div class="row mt-3 mb-3">
	<h1 class="pb-2" style="color: #289d8c">My Favorites</h1>
	<c:set var="index" value="0" />
	<c:forEach var="item" items="${favVideos}">
		<div class="col-lg-4">
			<div class="card mt-2 mb-2 border-1">
				<a href="<c:url value='/detail?action=watch&id=${item.link}'/>"> 
				<img src="<c:url value='${item.poster}'/>" class="card-img-top">
				</a>
				
				<div class="card-body">
					<h5 class="card-title text-center" style="min-height: 75px">${item.title}</h5>
					<div class="row">
						<div class="col-sm-6 ">
							<p class="card-text float-start">20/11/2023</p>
						</div>
						<div class="col-sm-6 ">
							<p class="card-text float-end">${item.view} views</p>
						</div>
					</div>
					
					<!-- <div class="d-md-flex justify-content-md-end">
						<button class="btn btn-outline-primary me-md-2" type="button">
							<i class="fa-regular fa-thumbs-up"></i> Dislike
						</button>
						<button class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#shareVideoUI" type="button">
							<i class="fa-solid fa-share"></i> Share
						</button>
					</div> -->
				</div>
			</div>
		</div>
		<c:set var="index" value="${index + 1}" />
	</c:forEach>
</div>