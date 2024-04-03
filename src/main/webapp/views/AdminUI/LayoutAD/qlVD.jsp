<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- control-button -->
		<ul class="nav nav-tabs" id="myTab" role="tablist">
            <!-- Edit Button -->
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="tabs_edit_video" data-bs-toggle="tab" data-bs-target="#edit-pane"
                    type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true"><i class="fa-solid fa-photo-film"></i> VIDEO EDITION</button>
            </li>
            <!-- List Button -->
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="tabs_list_video" data-bs-toggle="tab" data-bs-target="#list-pane"
                    type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false"><i class="fa-solid fa-clipboard-list"></i> VIDEO LIST</button>
            </li>
		</ul>
	<!-- content -->
		<div class="tab-content" style="background: white">
			<!-- Pane_Edit -->
			<div class="tab-pane fade" id="edit-pane" role="tabpanel">
				<h1>VIDEO EDITION</h1>
				<div class="row">
					<form action="">
						<div class="row">
							<div class="col-sm-6">
								<img src="<c:url value='/views/img/ExitSign_HTH.jpg'/>" class="img-fluid">
							</div>
							<div class="col-sm-6">
								<div class="mb-3">
								    <label class="form-label">Video ID</label>
								    <input type="text" class="form-control" value="${video_E != null ? video_E.id : '' }">
								 </div>	
								 <div class="mb-3">
								    <label class="form-label">Video Title</label>
								    <input type="text" class="form-control" value="${video_E != null ? video_E.title : '' }">
								 </div>
								 <div class="mb-3">
								    <label class="form-label">Href</label>
								    <input type="text" class="form-control" value="${video_E != null ? video_E.link : '' }">
								 </div>
								 <div class="mb-3">
								    <label class="form-label">Poster</label>
								    <input type="text" class="form-control" value="${video_E != null ? video_E.poster : '' }">
								 </div>
							</div>
						</div>
						<div class="row">
							<div class="mt-2">
								<label class="form-label" >Description</label>
								<textarea class="form-control" rows="3" >${video_E != null ? video_E.description : '' }</textarea>
							</div>
						</div>
						<hr>
						<div class="row mb-3">
							<div class="d-grid gap-2 d-md-flex justify-content-md-end">
							  <button class="btn btn-outline-success me-md-2" type="button">CREATE</button>
							  <button class="btn btn-outline-warning" type="button">UPDATE</button>
							  <button class="btn btn-outline-danger" onclick="deleteVideo('${item.href}')" type="button">DELETE</button>
							  <button class="btn btn-outline-primary" type="button">RESET</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			
			<!-- Pane_List -->
			<div class="tab-pane fade show active" id="list-pane" role="tabpanel">
				<h1>VIDEO LIST</h1>
				<div style="height:  600px; overflow-y: scroll;">		
					<table class="table table-bordered text-center">
						<thead>
						    <tr>
						      <th scope="col">ID</th>
						      <th scope="col">Title</th>
						      <th scope="col">Href</th>
						      <th scope="col">Views</th>
						      <th scope="col">Description</th>
						      <th scope="col"><i class="fa-solid fa-gear"></i></th>
						    </tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${view_videos}">
								<tr>
								<td>${item. id}</td>
								<td>${item. title}</td>
								<td><a href="#">${item. link}</a></td>
								<td>${item. view}</td>
								<td>${item. description}</td>			
								<td><a href="<c:url value='/admin/video?action=edit&href=${item.link}'/>" class="btn btn-primary" id="editVideo" onclick="editVideo('${item.link}')" >EDIT</a></td>			      
								</tr>
								</c:forEach>					  				  
						</tbody>
					</table>
				</div>
			</div>
		</div>