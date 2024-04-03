<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
				<h1 class="text-center mt-3 mb-3" style="color: #289d8c">VIDEO EDITION</h1>
				<div class="row border border-success-subtle mt-3 mb-3 ms-auto me-auto ">
					<form action="">
						<div class="row mt-3 mb-3">
							<div class="col-sm-6">
								<img src="<c:url value='/views/img/${video_E.poster}'/>" class="img-fluid">
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
							  <button class="btn btn-outline-danger" onclick="deleteVideo('${video_E.href}')" type="button">DELETE</button>
							  <!-- <button class="btn btn-outline-primary" type="button">RESET</button> -->
							</div>
						</div>
					</form>
				</div>
			
			