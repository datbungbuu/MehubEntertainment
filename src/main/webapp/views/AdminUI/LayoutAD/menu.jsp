<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<div class="tab-menu">
				<div class="row mt-3 mb-3 text-center" style="color: white;">
					<h6 class="ps-3" style="font-size: 40px;" ><i class="fa-brands fa-github"></i> <a href="index" style="text-decoration: none; color: white">MeHub</a>  </h6>
					<h6 class="ps-3" style="font-size: 20px;" > Administrator </h6>
					<hr>
				</div>
				
				<div class="row justify-content-center">
				<a href="admin" class="btn text-start"type="button" style="font-size: 16px; padding-left: 30px; color: white"><i class="fa-solid fa-house"></i> HOME</a>

				<div class="accordion accordion-flush" id="accordionFlushExample">
				  <div class="accordion-item" style="background: #289d8c; color: white;">
				    <h2 class="accordion-header" style="background: #289d8c; color: white;">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" style="background: #289d8c; color: white;">
				        <i class="fa-brands fa-youtube me-1"></i> VIDEOS</li>
				      </button>
				    </h2>
				    <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">
				      	<ul class="list-group p-0" style="cursor: pointer;">					
							 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
							 	<a href="<c:url value='/video?action=add'/>" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-photo-film" ></i> VIDEO EDITION</a>
							 </li>
							 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
							 	<a href="<c:url value='/video?action=view'/>" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-clipboard-list"></i> VIDEO LIST</a>
							 </li>
						 </ul>	
				      </div>
				    </div>
				  </div>
				  <div class="accordion-item" style="background: #289d8c; color: white;">
				    <h2 class="accordion-header" style="background: #289d8c; color: white;">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo" style="background: #289d8c; color: white;">
				        <i class="fa-solid fa-users me-1"></i> USERS</li>
				      </button>
				    </h2>
				    <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">
				      	<ul class="list-group p-0" style="cursor: pointer;">					
							 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
							 	<a href="<c:url value='/user?action=add'/>" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-user-pen"></i> USER EDITION</a>
							 </li>
							 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
							 	<a href="<c:url value='/user?action=view'/>" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-clipboard-list"></i> USER LIST</a>
							 </li>
						 </ul>	
				      </div>
				    </div>
				  </div>
				  <div class="accordion-item" style="background: #289d8c; color: white;">
				    <h2 class="accordion-header" style="background: #289d8c; color: white;">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree" style="background: #289d8c; color: white;">
				        <i class="fa-solid fa-bars me-1"></i> REPORTS</li>
				      </button>
				    </h2>
				    <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">
				      	<ul class="list-group p-0" style="cursor: pointer;">					
							 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
							 	<a href="<c:url value='report_fav'/>" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-regular fa-heart"></i> FAVOURITES</a>
							 </li>
							 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
							 	<a href="<c:url value='report_title'/>" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-regular fa-thumbs-up"></i> FAVOURITE USERS</a>
							 </li>
							 <%-- <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
							 	<a href="<c:url value='/report?action=view'/>" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-share-nodes"></i> SHARED FRIENDS</a>
							 </li> --%>
						 </ul>	
				      </div>
				    </div>
				  </div>
				</div>
									
					<div class="card border-0" style="background: #289d8c;color: white; padding-top: 110px;">
						<hr>
						<h5 class="pt-3 ps-3">FOR HELP <i class="fa-solid fa-question"></i></h5>
					  <div class="card-body pt-2 ms-3" style="color: white">					  	
					    <h6 class="card-title">Email:</h6>
					    <p class="card-text" style="font-size: 12px">dattdtps26949@fpt.edu.vn</p>
					    <h6 class="card-title">Call:</h6>
					    <p class="card-text" style="font-size: 12px">(+84) 123 456 789</p>
					  </div>
					</div>
				</div>
			</div>