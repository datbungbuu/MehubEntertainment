<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="container-fluid" style="max-width: 800px">
    	<div class="modal fade" id="editProfileUI" tabindex="-1"  aria-hidden="true">
    		<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
				  <div class="modal-header">
					  	<h3 class="float-start" style="color: #289d8c"><i class="fa-solid fa-user-pen"></i> EDIT PROFILE</h3>
					  	<button type="button" class="btn btn-outline-danger float-end" data-bs-dismiss="modal" style="font-size: 15px"><i class="fa-solid fa-xmark"></i></button>
				  </div>
				  <form>
					  <div class="modal-body">
						  <div class="row">
						  	<div class="col-sm-6">
						  		<div class="mb-3">
								    <label class="form-label">USERNAME</label>
								    <input type="text" class="form-control">
							  	</div>	
						  	</div>
						  	<div class="col-sm-6">
						  		<div class="mb-3">
								    <label class="form-label">PASSWORD</label>
								    <input type="password" class="form-control">
							  	</div>
						  	</div>
						  </div>
						  <div class="row">
						  	<div class="col-sm-6">
						  		<div class="mb-3">
							    	<label class="form-label">FULL NAME</label>
							    	<input type="text" class="form-control">
							  	</div>
						  	</div>
						  	<div class="col-sm-6">
						  		<div class="mb-3">
							    	<label class="form-label">EMAIL ADDRESS</label>
							    	<input type="email" class="form-control">
							  	</div>
						  	</div>
						  </div>	 	   
					  </div>
					  <div class="modal-footer text-body-secondary">
					  	<div class="d-md-flex justify-content-md-end">
					  		<button type="submit" class="btn btn-outline-success" style="font-size: 20px">UPDATE</button>
					  	</div>			     
					  </div>
				  </form>
				</div>
			</div>
		</div>
	</div>