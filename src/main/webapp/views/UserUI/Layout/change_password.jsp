<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="container-fluid" style="max-width: 800px">
    	<div class="modal fade" id="changePassUI" tabindex="-1"  aria-hidden="true">
    		<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
				  <div class="modal-header">
					  	<h3 class="float-start" style="color: #289d8c"><i class="fa-solid fa-gear"></i> CHANGE PASSWORD</h3>
					  	<button type="button" class="btn btn-outline-danger float-end" data-bs-dismiss="modal" style="font-size: 15px"><i class="fa-solid fa-xmark"></i></button>
				  </div>
				  <form action="">
					  <div class="modal-body">	
						  <div class="row">						  							  	
						  		<div class="mb-3">
						    		<label class="form-label">CURRENT PASSWORD</label>
						    		<input type="password" name="cpcurrentpass" id="cpcurrentpass" class="form-control">
						  		</div>
						  </div> 
						  <div class="row">
						  		<div class="mb-3">
						    		<label class="form-label">NEW PASSWORD</label>
						    		<input type="password" name="cpnewpass" id="cpnewpass" class="form-control">
						  		</div>					  	
						  </div>   
						  <h5 id="changePassMessage"></h5>
					  </div>
					  <div class="modal-footer text-body-secondary">
					  	<div class="d-md-flex justify-content-md-end">
					  		<button id="changeBTN" type="button" class="btn btn-outline-success" style="font-size: 20px">CHANGE</button>
					  	</div>			     
					  </div>
				  </form>
				</div>
			</div>
		</div>
	</div>