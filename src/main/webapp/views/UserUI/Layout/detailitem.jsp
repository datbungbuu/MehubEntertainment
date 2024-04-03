<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row">
	    	<div class="col-lg-9">
			    <div class="card border-2">
					<iframe width="auto" height="400px"
						src="https://www.youtube.com/embed/${videos.link}"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen></iframe>
					<div class="card-body">			
						<h5 class="card-title">${videos.title}</h5>					
						<hr>
						<div class="row">
							<h6 class="card-text float-end">${videos.description}</h6>
							<div class="row">
								<div class="col-sm-6 ">
									<p class="card-text float-start">${videos.view}</p>
								</div>
								<div class="col-sm-6 ">
									<p class="card-text float-end">20/11/2023</p>
								</div>				
							</div>
						</div>
						<c:if test = "${not empty sessionScope.currentUser }"> 
							<hr>
							<div class="row">
								<!-- <div class="col-lg-6">
									<div class="d-md-flex justify-content-md-start">
										<button class="btn btn-outline-primary me-md-2" type="button"><i class="fa-solid fa-heart"></i> Favorite</button>
									</div>
								</div> -->						
								<div class="d-md-flex justify-content-md-end">
									  <button id="LikeAUnlike" class="btn btn-outline-primary me-md-2" type="button"><i class="fa-regular fa-thumbs-up"></i>
									  		<c:choose >
									  			<c:when test="${flagLikeBtn == true }">
									  				Unlike
									  			</c:when>
									  			<c:otherwise>Like</c:otherwise>
									  		</c:choose>
									  </button>
									  <button class="btn btn-outline-primary"><i class="fa-solid fa-share"></i>Share</button>
								</div>					
							</div>
						</c:if>												
					</div>
				</div>
	    	</div>
	    	<div class="col-lg-3">
	    		<c:forEach var="item" items="${videos_p}">
		    		<div class="row mb-2">
		    			<div class="col-sm-6">
		    				<img src="<c:url value='${item.poster}'/>" class="card-img-top">
		    			</div>
		    			<div class="col-sm-6">
		    				<div style="container-type: inline-size;">
		    					<h6 class="card-title" style="min-height: 70px; font-size: 12px">${item.title}</h6>
		    				</div>
		    				<div class="row">
								<div class="col-sm-6 ">
									<p class="card-text float-start" style="font-size: 12px">SINGER</p>
								</div>
								<div class="col-sm-6 ">
									<p class="card-text float-end" style="font-size: 12px">${item.view }</p>
								</div>				
							</div>
		    			</div>
		    		</div>
	    		</c:forEach>
	    	</div>
	    	<input id="videoDetailHref" type="hidden" value="${videos.link }">
    	</div>	  
    	