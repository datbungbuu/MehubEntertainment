<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
				<h1 class="text-center mt-3 mb-3" style="color: #289d8c">USER EDITION</h1>
				<div class="row border border-success-subtle mt-3 mb-3 ms-auto me-auto " style=" max-width:800px">
					<form action="">
						<div class="mb-3">
							<label class="form-label">UserName</label> 
							<input type="text" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">FullName</label> 
							<input type="text" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">PassWord</label> 
							<input type="text" class="form-control">
						</div>
						<div class="mb-3">
				    		<label class="form-label me-3">Role</label>
				    		<input class="form-check-input" type="radio" checked>
			  				<label class="form-check-label" >Admin</label>
			  				
			  				<input class="form-check-input" type="radio">
							<label class="form-check-label" >Customer</label>
			  			</div>
						<div class="mb-3">
							<label class="form-label">Email Address</label> 
							<input type="text" class="form-control">
						</div>
						<hr>
						<div class="row mb-3">
							<div class="d-grid gap-2 d-md-flex justify-content-md-end">
							  <button class="btn btn-outline-success" type="button">UPDATE</button>
							  <button class="btn btn-outline-danger" type="button">DELETE</button>
							</div>
						</div>
					</form>
				</div>				