<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="container-fluid" style="max-width: 800px">
    	<div class="modal fade" id="registerUI" tabindex="-1"  aria-hidden="true">
    		<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
				  <div class="modal-header">
					  	<h3 class="modal-title fs-5" style="color: #289d8c"><i class="fa-solid fa-address-card"></i> REGISTRATION</h3>
					  	<button type="button" class="btn btn-outline-danger float-end" data-bs-dismiss="modal" style="font-size: 15px"><i class="fa-solid fa-xmark"></i></button>
				  </div>
				  <form action="Create" method="post">
					  <div class="modal-body">	 
						  <div class="mb-3">
						    <label class="form-label">USERNAME</label>
						    <input type="text" name="id" class="form-control">
						  </div>	
						   <div class="mb-3">
						    <label class="form-label">FULL NAME</label>
						    <input type="text" name="fullname" class="form-control">
						  </div> 
						  <div class="mb-3">
						    <label class="form-label">PASSWORD</label>
						    <input type="password" name="password" class="form-control">
						  </div>
						  <div class="mb-3">
						    <label class="form-label">CONFIRM PASSWORD</label>
						    <input type="password" name="cfpassword" class="form-control">
						  </div>
						   <div class="mb-3">
						    <label class="form-label">EMAIL ADDRESS</label>
						    <input type="email" name="email" class="form-control">
						  </div>
					  </div>
					  <div class="modal-footer text-body-secondary">
					  <h1>${message1}</h1>
					  	<div class="d-md-flex justify-content-md-end">
					  		<button type="submit" class="btn btn-outline-success" style="font-size: 20px">REGISTER</button>
					  	</div>			     
					  </div>
				  </form>
				</div>
			</div>
		</div>
	</div>
