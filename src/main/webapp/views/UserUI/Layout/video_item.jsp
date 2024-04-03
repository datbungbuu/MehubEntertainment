<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row mt-3 mb-3">
	<h1 class="pb-2" style="color: #289d8c">Videos</h1>
	<c:forEach var="item" items="${videos}">
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
							<i class="fa-regular fa-thumbs-up"></i> Like
						</button>
						<button class="btn btn-outline-primary" type="button">
							<i class="fa-solid fa-share"></i> Share
						</button>
					</div> -->
				</div>
			</div>
		</div>
	</c:forEach>
</div>
<%@include file="./button_control.jsp"%>