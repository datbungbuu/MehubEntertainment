<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- control-button -->
		<ul class="nav nav-tabs" id="myTab" role="tablist">
            <!-- Edit Button -->
            <li class="nav-item" role="presentation">
                <button class="nav-link " id="tabs_edit" data-bs-toggle="tab" data-bs-target="#edit-user-pane"
                    type="button" role="tab" aria-controls="home-tab-pane" aria-selected="false"><i class="fa-solid fa-user-pen"></i> USER EDITION</button>
            </li>
            <!-- List Button -->
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="tabs_list" data-bs-toggle="tab" data-bs-target="#list-user-pane"
                    type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="true"><i class="fa-solid fa-clipboard-list"></i> USER LIST</button>
            </li>
		</ul>
	<!-- content -->
		<div class="tab-content" style="background: white">
		<!-- Pane_Edit -->
			<div class="tab-pane fade " id="edit-user-pane" role="tabpanel">
				<h1>USER EDITION</h1>
				<div class="row ms-auto me-auto" style=" max-width:800px">
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
			</div>
			
			<!-- Pane_List -->
			<div class="tab-pane fade show active" id="list-user-pane" role="tabpanel">
				<h1>USER LIST</h1>
				<div style="height:  600px; overflow-y: scroll;">
					<table class="table table-bordered text-center">
						<thead>
						    <tr>
						      <th scope="col">USERNAME</th>
						      <th scope="col">FULLNAME</th>
						      <th scope="col">EMAIL</th>
						      <th scope="col">ROLE</th>
						      <th scope="col"><i class="fa-solid fa-gear"></i></th>
						    </tr>
						</thead>
						<tbody>
						<c:forEach var="item" items="${view_users}">
						    <tr>
						      <td>${item.id}</td>
							  <td>${item.hoten}</td>
							  <td>${item.email}</td>
							  <td>${item.vaitro?'Admin':'User'}</td>
						      <td><button class="btn btn-primary" id="editUser" type="button">EDIT</button></td>
						    </tr>
						</c:forEach>					  
						</tbody>
					</table>
				</div>
			</div>
		</div>