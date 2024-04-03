<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <div class="container-fluid" style="max-width: 800px">
    	<div class="modal fade" id="shareVideo" tabindex="-1"  aria-hidden="true">
    		<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					  <div class="modal-header">
						  	<h3 class="float-start" style="color: #289d8c"><i class="fa-solid fa-share-nodes"></i> SHARE VIDEO</h3>
						  	<button type="button" class="btn btn-outline-danger float-end" data-bs-dismiss="modal" style="font-size: 15px"><i class="fa-solid fa-xmark"></i></button>
					  </div>
					  <div class="modal-body">
						  <div class="row">
						  		<div class="mb-3">
								   <img src="<c:url value='${video_detail.poster}'/>" class="card-img-top">
								   <h5 class="card-title mt-3 text-center" style="min-height: 75px">${video_detail.title}</h5>
							  	</div>	
							  	<hr>						  	
						  </div>
							<div class="row">
						  		<div class="mb-3">
							    	<label class="form-label">YOUR FRIEND EMAIL</label>
							    	<input type="email" name="mailfriend" class="form-control">
							  	</div>					 
							</div>	 
						</div>	   
					  <div class="modal-footer text-body-secondary">
					  	<h5 id="shareMailMessage"></h5>
					  	<div class="d-md-flex justify-content-md-end">
					  		<button class="btn btn-outline-success" id="btnShare" style="font-size: 20px">SHARE</button>
					  	</div>			     
					  </div>
				</div>
			</div>
		</div>
	</div>
	